// ============================================================================
// Module Name:  mix_columns
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Performs the MixColumns transformation on the 4x4 AES State matrix.
//
// HOW MIXCOLUMNS WORKS IN EASY WORDS:
// ------------------------------------
// Think of MixColumns as an 8-bit "data blender".
// It takes 4 bytes in a vertical column [s0, s1, s2, s3] and mixes them so that
// every single output byte depends on all 4 input bytes.
//
// In standard matrix form, for each column:
//   [ s0' ]   [ 02  03  01  01 ]   [ s0 ]
//   [ s1' ] = [ 01  02  03  01 ] * [ s1 ]
//   [ s2' ]   [ 01  01  02  03 ]   [ s2 ]
//   [ s3' ]   [ 03  01  01  02 ]   [ s3 ]
//
// In AES Galois Field GF(2^8) math:
// 1. Addition (+) is just bitwise XOR (^).
// 2. Multiplying by 1: (1 * s) = s
// 3. Multiplying by 2: Shift left by 1 (s << 1). If the MSB (bit 7) was 1,
//    XOR with 8'h1b (00011011). This is called xtime(s).
// 4. Multiplying by 3: (3 * s) = (2 * s) ^ (1 * s) = xtime(s) ^ s.
//
// All 4 columns are processed in parallel in pure combinational hardware!
// ============================================================================

`timescale 1ns / 1ps

module mix_columns (
    input  wire [127:0] state_in,  // 128-bit input state (16 bytes)
    output wire [127:0] state_out  // 128-bit mixed output state (16 bytes)
);

    // ------------------------------------------------------------------------
    // Helper Function: xtime
    // Multiplies an 8-bit byte by 2 in GF(2^8) with irreducible polynomial
    // m(x) = x^8 + x^4 + x^3 + x + 1 (represented in hex as 8'h1b).
    // ------------------------------------------------------------------------
    function [7:0] xtime;
        input [7:0] b;
        begin
            if (b[7] == 1'b1)
                xtime = (b << 1) ^ 8'h1b;
            else
                xtime = (b << 1);
        end
    endfunction

    // ------------------------------------------------------------------------
    // Sub-function: mix_single_column
    // Computes the new 4 bytes of a single column:
    //   c0_out = (2 * c0) ^ (3 * c1) ^ (1 * c2) ^ (1 * c3)
    //   c1_out = (1 * c0) ^ (2 * c1) ^ (3 * c2) ^ (1 * c3)
    //   c2_out = (1 * c0) ^ (1 * c1) ^ (2 * c2) ^ (3 * c3)
    //   c3_out = (3 * c0) ^ (1 * c1) ^ (1 * c2) ^ (2 * c3)
    // ------------------------------------------------------------------------
    function [31:0] mix_single_column;
        input [7:0] c0, c1, c2, c3;
        reg [7:0] r0, r1, r2, r3;
        begin
            r0 = xtime(c0) ^ (xtime(c1) ^ c1) ^ c2 ^ c3;
            r1 = c0 ^ xtime(c1) ^ (xtime(c2) ^ c2) ^ c3;
            r2 = c0 ^ c1 ^ xtime(c2) ^ (xtime(c3) ^ c3);
            r3 = (xtime(c0) ^ c0) ^ c1 ^ c2 ^ xtime(c3);

            mix_single_column = {r0, r1, r2, r3};
        end
    endfunction

    // ------------------------------------------------------------------------
    // Apply the column mixer to all 4 columns of the 128-bit state simultaneously:
    // ------------------------------------------------------------------------
    // Column 0: bytes {state_in[127:120], state_in[119:112], state_in[111:104], state_in[103:96]}
    wire [31:0] col0_out = mix_single_column(
        state_in[127:120], state_in[119:112], state_in[111:104], state_in[103:96]
    );

    // Column 1: bytes {state_in[95:88], state_in[87:80], state_in[79:72], state_in[71:64]}
    wire [31:0] col1_out = mix_single_column(
        state_in[95:88], state_in[87:80], state_in[79:72], state_in[71:64]
    );

    // Column 2: bytes {state_in[63:56], state_in[55:48], state_in[47:40], state_in[39:32]}
    wire [31:0] col2_out = mix_single_column(
        state_in[63:56], state_in[55:48], state_in[47:40], state_in[39:32]
    );

    // Column 3: bytes {state_in[31:24], state_in[23:16], state_in[15:8], state_in[7:0]}
    wire [31:0] col3_out = mix_single_column(
        state_in[31:24], state_in[23:16], state_in[15:8], state_in[7:0]
    );

    // Assemble the 4 mixed columns back into the 128-bit output state
    assign state_out = {col0_out, col1_out, col2_out, col3_out};

endmodule
