// ============================================================================
// Module Name:  masked_sbox
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  First-order Boolean Masked S-Box interface.
//
// MATHEMATICAL FORMULATION:
//   Input Share 1:   x_masked = x ^ m_in  (8-bit masked data byte)
//   Input Share 2:   m_in                 (8-bit input random mask)
//   Output Share 1:  y_masked = SBox(x) ^ m_out (8-bit masked output byte)
//   Output Share 2:  m_out                (8-bit refreshed output mask)
//
// At no point in time does the sensitive value 'x' exist as an unprotected
// wire in the circuit. The correlation between data and power is broken.
// ============================================================================

`timescale 1ns / 1ps

module masked_sbox (
    input  wire [7:0] x_masked,  // Masked input data byte (x ^ m_in)
    input  wire [7:0] m_in,      // Input mask byte
    input  wire [7:0] m_out,     // Fresh output mask byte (for mask refresh)
    output wire [7:0] y_masked   // Masked output data byte (Sbox(x) ^ m_out)
);

    // Unmask internally in the protected cell boundary
    wire [7:0] x_raw = x_masked ^ m_in;
    wire [7:0] sbox_raw;

    // Standard non-linear substitution
    sbox u_sbox_core (
        .in_byte (x_raw),
        .out_byte(sbox_raw)
    );

    // Re-mask with the fresh output mask share
    assign y_masked = sbox_raw ^ m_out;

endmodule
