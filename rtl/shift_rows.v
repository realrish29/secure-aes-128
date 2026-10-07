// ============================================================================
// Module Name:  shift_rows
// Project:      Secure AES-128 Implementation with Side-Channel Resistance
// Description:  Performs the ShiftRows cyclical byte permutation on the
//               4x4 AES State matrix.
//
// In an FPGA hardware design, ShiftRows costs ZERO Logic Gates (0 LUTs).
// It is implemented entirely by re-wiring the byte bus connections from
// the input state to the output state!
// ============================================================================

`timescale 1ns / 1ps

module shift_rows (
    input  wire [127:0] state_in,  // 128-bit input state (16 bytes)
    output wire [127:0] state_out  // 128-bit shifted output state
);

    // ------------------------------------------------------------------------
    // Step 1: Extract individual bytes from the 128-bit input vector.
    // In AES, data is arranged in a 4x4 matrix in COLUMN-MAJOR order:
    //
    //    Col 0      Col 1      Col 2      Col 3
    //  +----------+----------+----------+----------+
    //  | Byte 0   | Byte 4   | Byte 8   | Byte 12  |  <- Row 0
    //  | Byte 1   | Byte 5   | Byte 9   | Byte 13  |  <- Row 1
    //  | Byte 2   | Byte 6   | Byte 10  | Byte 14  |  <- Row 2
    //  | Byte 3   | Byte 7   | Byte 11  | Byte 15  |  <- Row 3
    //  +----------+----------+----------+----------+
    // ------------------------------------------------------------------------
    wire [7:0] b0  = state_in[127:120];
    wire [7:0] b1  = state_in[119:112];
    wire [7:0] b2  = state_in[111:104];
    wire [7:0] b3  = state_in[103:96];

    wire [7:0] b4  = state_in[95:88];
    wire [7:0] b5  = state_in[87:80];
    wire [7:0] b6  = state_in[79:72];
    wire [7:0] b7  = state_in[71:64];

    wire [7:0] b8  = state_in[63:56];
    wire [7:0] b9  = state_in[55:48];
    wire [7:0] b10 = state_in[47:40];
    wire [7:0] b11 = state_in[39:32];

    wire [7:0] b12 = state_in[31:24];
    wire [7:0] b13 = state_in[23:16];
    wire [7:0] b14 = state_in[15:8];
    wire [7:0] b15 = state_in[7:0];

    // ------------------------------------------------------------------------
    // Step 2: Apply ShiftRows Transformation:
    // - Row 0: Shift by 0 bytes -> [b0,  b4,  b8,  b12] (Unchanged)
    // - Row 1: Shift by 1 byte  -> [b5,  b9,  b13, b1]  (Shifted left by 1)
    // - Row 2: Shift by 2 bytes -> [b10, b14, b2,  b6]  (Shifted left by 2)
    // - Row 3: Shift by 3 bytes -> [b15, b3,  b7,  b11] (Shifted left by 3)
    //
    // New Column-Major Matrix:
    //  Col 0: Row 0=b0,  Row 1=b5,  Row 2=b10, Row 3=b15
    //  Col 1: Row 0=b4,  Row 1=b9,  Row 2=b14, Row 3=b3
    //  Col 2: Row 0=b8,  Row 1=b13, Row 2=b2,  Row 3=b7
    //  Col 3: Row 0=b12, Row 1=b1,  Row 2=b6,  Row 3=b11
    // ------------------------------------------------------------------------

    // Pack the shifted columns back into the 128-bit output bus:
    assign state_out = {
        // Column 0
        b0,  b5,  b10, b15,
        // Column 1
        b4,  b9,  b14, b3,
        // Column 2
        b8,  b13, b2,  b7,
        // Column 3
        b12, b1,  b6,  b11
    };

endmodule
