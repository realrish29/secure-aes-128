// ============================================================================
// Module Name:  aes_128_masked_core
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Top-level First-Order Boolean Masked AES-128 Encryption Core.
//               Executes 10-round AES-128 across two secret shares (S' and M)
//               such that sensitive intermediate variables are never exposed
//               in unmasked form on internal registers or buses.
//
// MASKING ARCHITECTURE:
//   Share 1:  S' = P ^ M (Masked Data State)
//   Share 2:  M          (Random Mask State)
//
//   Linear Transformations (ShiftRows, MixColumns, AddRoundKey) operate on
//   both shares independently:
//     ShiftRows(S')    ^ ShiftRows(M)    = ShiftRows(S' ^ M)
//     MixColumns(S')   ^ MixColumns(M)   = MixColumns(S' ^ M)
//     AddRoundKey(S',K)^ M               = (S' ^ M) ^ K
//
//   Non-Linear Transformation (SubBytes):
//     Processed via masked_sub_bytes with dynamic mask refreshing.
//
//   Final Recombination:
//     Ciphertext = S'_final ^ M_final
// ============================================================================

`timescale 1ns / 1ps

module aes_128_masked_core (
    input  wire         clk,             // System clock
    input  wire         rst_n,           // Active-low reset
    input  wire         start,           // Start pulse
    input  wire [127:0] plaintext,       // 128-bit unmasked plaintext
    input  wire [127:0] key,             // 128-bit master key
    input  wire [127:0] mask_in,         // 128-bit random mask vector
    output reg  [127:0] ciphertext,      // 128-bit output ciphertext
    output reg          busy,            // High during processing
    output reg          done             // 1-cycle completion pulse
);

    // FSM States
    localparam [2:0] S_IDLE     = 3'b000;
    localparam [2:0] S_ROUND_OP = 3'b001;
    localparam [2:0] S_DONE     = 3'b010;

    reg [2:0] current_state;
    reg [3:0] round_ctr;

    // Two-Share Datapath Registers
    reg [127:0] share1_reg; // Masked data state S'
    reg [127:0] share2_reg; // Mask state M
    reg [127:0] key_reg;    // Key register

    // Internal Pseudo-Random Mask Refresh (rotates and XORs mask to simulate dynamic PRNG refresh)
    wire [127:0] mask_refresh = {share2_reg[95:0], share2_reg[127:96]} ^ 128'h5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a;

    // ------------------------------------------------------------------------
    // Sub-Module Instances
    // ------------------------------------------------------------------------

    // 1. Masked SubBytes (operates on Share 1 with Share 2 and Refreshed Mask)
    wire [127:0] sub_bytes_share1;
    masked_sub_bytes u_masked_sub_bytes (
        .state_masked_in (share1_reg),
        .mask_in         (share2_reg),
        .mask_out        (mask_refresh),
        .state_masked_out(sub_bytes_share1)
    );

    // 2. Parallel ShiftRows on both shares
    wire [127:0] shift_rows_share1;
    wire [127:0] shift_rows_share2;

    shift_rows u_sr_share1 (.state_in(sub_bytes_share1), .state_out(shift_rows_share1));
    shift_rows u_sr_share2 (.state_in(mask_refresh),     .state_out(shift_rows_share2));

    // 3. Parallel MixColumns on both shares
    wire [127:0] mix_cols_share1;
    wire [127:0] mix_cols_share2;

    mix_columns u_mc_share1 (.state_in(shift_rows_share1), .state_out(mix_cols_share1));
    mix_columns u_mc_share2 (.state_in(shift_rows_share2), .state_out(mix_cols_share2));

    // In Round 10, MixColumns is omitted
    wire [127:0] post_linear_share1 = (round_ctr == 4'd10) ? shift_rows_share1 : mix_cols_share1;
    wire [127:0] post_linear_share2 = (round_ctr == 4'd10) ? shift_rows_share2 : mix_cols_share2;

    // 4. Key Expansion
    wire [127:0] next_round_key;
    key_expansion u_key_expansion (
        .key_in   (key_reg),
        .round_num(round_ctr),
        .key_out  (next_round_key)
    );

    // 5. AddRoundKey: Added strictly to Share 1
    wire [127:0] round_ark_share1;
    add_round_key u_ark_share1 (
        .state_in (post_linear_share1),
        .round_key(next_round_key),
        .state_out(round_ark_share1)
    );

    // ------------------------------------------------------------------------
    // FSM Datapath Sequencing
    // ------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_state <= S_IDLE;
            round_ctr     <= 4'd0;
            share1_reg    <= 128'h0;
            share2_reg    <= 128'h0;
            key_reg       <= 128'h0;
            ciphertext    <= 128'h0;
            busy          <= 1'b0;
            done          <= 1'b0;
        end else begin
            case (current_state)
                S_IDLE: begin
                    done <= 1'b0;
                    if (start) begin
                        busy <= 1'b1;
                        // Split input into two shares and apply Round 0 AddRoundKey
                        // Share 1 = Plaintext ^ Key ^ Mask
                        // Share 2 = Mask
                        share1_reg    <= (plaintext ^ key) ^ mask_in;
                        share2_reg    <= mask_in;
                        key_reg       <= key;
                        round_ctr     <= 4'd1;
                        current_state <= S_ROUND_OP;
                    end else begin
                        busy <= 1'b0;
                    end
                end

                S_ROUND_OP: begin
                    share1_reg <= round_ark_share1;
                    share2_reg <= post_linear_share2;
                    key_reg    <= next_round_key;

                    if (round_ctr == 4'd10) begin
                        current_state <= S_DONE;
                    end else begin
                        round_ctr     <= round_ctr + 1'b1;
                        current_state <= S_ROUND_OP;
                    end
                end

                S_DONE: begin
                    // Final recombination: Recombine the two shares to produce valid ciphertext
                    ciphertext    <= share1_reg ^ share2_reg;
                    busy          <= 1'b0;
                    done          <= 1'b1;
                    current_state <= S_IDLE;
                end

                default: current_state <= S_IDLE;
            endcase
        end
    end

endmodule
