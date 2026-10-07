// ============================================================================
// Module Name:  sub_bytes
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Substitutes all 16 bytes of the 128-bit AES State matrix
//               in parallel using 16 instances of the sbox module.
// ============================================================================

`timescale 1ns / 1ps

module sub_bytes (
    input  wire [127:0] state_in,  // 128-bit input state (16 bytes)
    output wire [127:0] state_out  // 128-bit substituted output state (16 bytes)
);

    // Generate 16 parallel S-Box instances across the 16 bytes of state_in
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : gen_sbox_instances
            sbox u_sbox (
                .in_byte (state_in[ (15-i)*8 + 7 : (15-i)*8 ]),
                .out_byte(state_out[(15-i)*8 + 7 : (15-i)*8 ])
            );
        end
    endgenerate

endmodule
