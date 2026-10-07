// ============================================================================
// Module Name:  aes_128_core
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Top-level 128-bit iterative AES encryption core.
//               Executes standard 10-round AES-128 encryption in 11 clock cycles.
//
// FSM STAGES:
//   1. IDLE:    Waits for 'start' pulse.
//   2. LOAD:    Latches plaintext and master key; executes Round 0 (AddRoundKey).
//   3. ROUNDS:  Executes Rounds 1 to 9 (SubBytes -> ShiftRows -> MixColumns -> AddRoundKey).
//   4. FINAL:   Executes Round 10 (SubBytes -> ShiftRows -> AddRoundKey [MixColumns omitted]).
//   5. DONE:    Asserts 'done' flag and holds valid 128-bit ciphertext.
// ============================================================================

`timescale 1ns / 1ps

module aes_128_core (
    input  wire         clk,         // System clock
    input  wire         rst_n,       // Active-low asynchronous reset
    input  wire         start,       // Pulsed high for 1 cycle to begin encryption
    input  wire [127:0] plaintext,   // 128-bit input data block
    input  wire [127:0] key,         // 128-bit cipher key
    output reg  [127:0] ciphertext,  // 128-bit output encrypted block
    output reg          busy,        // High while encryption is in progress
    output reg          done         // Pulsed high for 1 cycle when ciphertext is valid
);

    // ------------------------------------------------------------------------
    // FSM State Definitions
    // ------------------------------------------------------------------------
    localparam [2:0] S_IDLE       = 3'b000;
    localparam [2:0] S_ROUND_OP   = 3'b001;
    localparam [2:0] S_DONE       = 3'b010;

    reg [2:0] current_state, next_state;
    reg [3:0] round_ctr;

    // Internal Datapath Registers
    reg [127:0] state_reg;
    reg [127:0] key_reg;

    // ------------------------------------------------------------------------
    // Sub-module Interconnect Signals
    // ------------------------------------------------------------------------
    wire [127:0] sub_bytes_out;
    wire [127:0] shift_rows_out;
    wire [127:0] mix_columns_out;
    wire [127:0] round_input_to_ark;
    wire [127:0] round_ark_out;
    wire [127:0] next_round_key;

    // 1. SubBytes: 16 parallel S-Boxes
    sub_bytes u_sub_bytes (
        .state_in (state_reg),
        .state_out(sub_bytes_out)
    );

    // 2. ShiftRows: Wire routing permutation
    shift_rows u_shift_rows (
        .state_in (sub_bytes_out),
        .state_out(shift_rows_out)
    );

    // 3. MixColumns: Galois Field column mixing
    mix_columns u_mix_columns (
        .state_in (shift_rows_out),
        .state_out(mix_columns_out)
    );

    // In Round 10, MixColumns is omitted (FIPS 197 specification)
    assign round_input_to_ark = (round_ctr == 4'd10) ? shift_rows_out : mix_columns_out;

    // 4. On-the-fly Key Expansion
    key_expansion u_key_expansion (
        .key_in   (key_reg),
        .round_num(round_ctr),
        .key_out  (next_round_key)
    );

    // 5. AddRoundKey: XOR with the expanded round key
    add_round_key u_add_round_key (
        .state_in (round_input_to_ark),
        .round_key(next_round_key),
        .state_out(round_ark_out)
    );

    // ------------------------------------------------------------------------
    // FSM State Register & Datapath Sequential Logic
    // ------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_state <= S_IDLE;
            round_ctr     <= 4'd0;
            state_reg     <= 128'h0;
            key_reg       <= 128'h0;
            ciphertext    <= 128'h0;
            busy          <= 1'b0;
            done          <= 1'b0;
        end else begin
            case (current_state)
                S_IDLE: begin
                    done <= 1'b0;
                    if (start) begin
                        busy          <= 1'b1;
                        // Round 0: Initial AddRoundKey (Plaintext ^ Master Key)
                        state_reg     <= plaintext ^ key;
                        key_reg       <= key;
                        round_ctr     <= 4'd1;
                        current_state <= S_ROUND_OP;
                    end else begin
                        busy          <= 1'b0;
                    end
                end

                S_ROUND_OP: begin
                    // Latch the transformed state and the newly expanded key
                    state_reg <= round_ark_out;
                    key_reg   <= next_round_key;

                    if (round_ctr == 4'd10) begin
                        current_state <= S_DONE;
                    end else begin
                        round_ctr     <= round_ctr + 1'b1;
                        current_state <= S_ROUND_OP;
                    end
                end

                S_DONE: begin
                    ciphertext    <= state_reg;
                    busy          <= 1'b0;
                    done          <= 1'b1;
                    current_state <= S_IDLE;
                end

                default: current_state <= S_IDLE;
            endcase
        end
    end

endmodule
