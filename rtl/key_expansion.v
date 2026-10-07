// ============================================================================
// Module Name:  key_expansion
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Computes the next 128-bit round key from the current 128-bit
//               round key on-the-fly for AES-128.
//
// ALGORITHM:
//   Given key_in = {w0, w1, w2, w3} where each w is 32 bits (4 bytes):
//   1. RotWord: Rotate w3 left by 1 byte: {b0,b1,b2,b3} -> {b1,b2,b3,b0}
//   2. SubWord: Substitute all 4 bytes of rotated w3 using S-Boxes
//   3. XOR with Rcon[round_num]: Round constant word {rcon, 8'h00, 8'h00, 8'h00}
//   4. w0_next = w0 ^ SubWord(RotWord(w3)) ^ Rcon
//      w1_next = w1 ^ w0_next
//      w2_next = w2 ^ w1_next
//      w3_next = w3 ^ w2_next
// ============================================================================

`timescale 1ns / 1ps

module key_expansion (
    input  wire [127:0] key_in,     // 128-bit current round key
    input  wire [3:0]   round_num,  // Round number (1 to 10)
    output wire [127:0] key_out     // 128-bit next round key
);

    // Slices for the four 32-bit words of current key
    wire [31:0] w0 = key_in[127:96];
    wire [31:0] w1 = key_in[95:64];
    wire [31:0] w2 = key_in[63:32];
    wire [31:0] w3 = key_in[31:0];

    // RotWord: Rotate w3 cyclically left by 1 byte
    wire [7:0] rot_b0 = w3[23:16];
    wire [7:0] rot_b1 = w3[15:8];
    wire [7:0] rot_b2 = w3[7:0];
    wire [7:0] rot_b3 = w3[31:24];

    // SubWord: Pass rotated bytes through 4 S-Boxes
    wire [7:0] sub_b0, sub_b1, sub_b2, sub_b3;
    sbox sbox_k0 (.in_byte(rot_b0), .out_byte(sub_b0));
    sbox sbox_k1 (.in_byte(rot_b1), .out_byte(sub_b1));
    sbox sbox_k2 (.in_byte(rot_b2), .out_byte(sub_b2));
    sbox sbox_k3 (.in_byte(rot_b3), .out_byte(sub_b3));

    wire [31:0] sub_rot_w3 = {sub_b0, sub_b1, sub_b2, sub_b3};

    // Rcon (Round Constant) lookup for rounds 1 to 10
    reg [7:0] rcon_byte;
    always @(*) begin
        case (round_num)
            4'd1:  rcon_byte = 8'h01;
            4'd2:  rcon_byte = 8'h02;
            4'd3:  rcon_byte = 8'h04;
            4'd4:  rcon_byte = 8'h08;
            4'd5:  rcon_byte = 8'h10;
            4'd6:  rcon_byte = 8'h20;
            4'd7:  rcon_byte = 8'h40;
            4'd8:  rcon_byte = 8'h80;
            4'd9:  rcon_byte = 8'h1b;
            4'd10: rcon_byte = 8'h36;
            default: rcon_byte = 8'h00;
        endcase
    end

    wire [31:0] rcon_word = {rcon_byte, 24'h000000};

    // Daisy-chain XOR equations
    wire [31:0] w0_next = w0 ^ sub_rot_w3 ^ rcon_word;
    wire [31:0] w1_next = w1 ^ w0_next;
    wire [31:0] w2_next = w2 ^ w1_next;
    wire [31:0] w3_next = w3 ^ w2_next;

    assign key_out = {w0_next, w1_next, w2_next, w3_next};

endmodule
