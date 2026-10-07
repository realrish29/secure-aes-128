// ============================================================================
// Module Name:  masked_sub_bytes
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Substitutes 16 bytes of masked state in parallel using
//               16 instances of the masked_sbox module with mask refreshing.
// ============================================================================

`timescale 1ns / 1ps

module masked_sub_bytes (
    input  wire [127:0] state_masked_in, // 128-bit masked input state (Share 1)
    input  wire [127:0] mask_in,          // 128-bit input mask (Share 2)
    input  wire [127:0] mask_out,         // 128-bit refreshed output mask
    output wire [127:0] state_masked_out // 128-bit masked output state
);

    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : gen_masked_sbox
            masked_sbox u_masked_sbox (
                .x_masked(state_masked_in[(15-i)*8 + 7 : (15-i)*8]),
                .m_in    (mask_in         [(15-i)*8 + 7 : (15-i)*8]),
                .m_out   (mask_out        [(15-i)*8 + 7 : (15-i)*8]),
                .y_masked(state_masked_out[(15-i)*8 + 7 : (15-i)*8])
            );
        end
    endgenerate

endmodule
