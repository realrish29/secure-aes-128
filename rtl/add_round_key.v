// ============================================================================
// Module Name:  add_round_key
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Performs a bitwise XOR between the 128-bit AES State matrix
//               and the 128-bit Round Key.
//
// In AES, this is the only operation that directly combines the secret key
// with the data. In hardware, this is purely combinational logic consisting
// of 128 parallel XOR gates.
// ============================================================================

`timescale 1ns / 1ps

module add_round_key (
    input  wire [127:0] state_in,  // 128-bit input data state (16 bytes)
    input  wire [127:0] round_key, // 128-bit round key for current round
    output wire [127:0] state_out  // 128-bit resulting state after XOR
);

    // Bitwise XOR: Each bit of state_in is XORed with the corresponding bit of round_key.
    // In Verilog, the '^' operator performs bitwise XOR across all 128 bits in parallel.
    assign state_out = state_in ^ round_key;

endmodule
