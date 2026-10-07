// ============================================================================
// Testbench Name: tb_aes_128_core
// Project:        Secure AES-128 Implementation with Side-Channel Resistance
// Description:    Self-checking testbench for aes_128_core using official
//                 NIST FIPS 197 standard test vectors.
// ============================================================================

`timescale 1ns / 1ps

module tb_aes_128_core;

    // Testbench signals
    reg          clk;
    reg          rst_n;
    reg          start;
    reg  [127:0] plaintext;
    reg  [127:0] key;
    wire [127:0] ciphertext;
    wire         busy;
    wire         done;

    integer pass_count = 0;
    integer fail_count = 0;

    // Instantiate Device Under Test (DUT)
    aes_128_core dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .start     (start),
        .plaintext (plaintext),
        .key       (key),
        .ciphertext(ciphertext),
        .busy      (busy),
        .done      (done)
    );

    // 100 MHz Clock Generation (10ns period)
    always #5 clk = ~clk;

    // ------------------------------------------------------------------------
    // Verification Procedure
    // ------------------------------------------------------------------------
    initial begin
        // Setup waveform dumping for simulation review
        $dumpfile("sim_aes_128_core.vcd");
        $dumpvars(0, tb_aes_128_core);

        $display("===============================================================");
        $display("   STARTING AES-128 CORE VERIFICATION (NIST FIPS 197)         ");
        $display("===============================================================");

        // 1. Initialize Inputs and Reset
        clk       = 0;
        rst_n     = 0;
        start     = 0;
        plaintext = 128'h0;
        key       = 128'h0;

        #20;
        rst_n = 1; // Release reset
        #20;

        // --------------------------------------------------------------------
        // TEST CASE 1: NIST FIPS 197 Appendix B
        // --------------------------------------------------------------------
        $display("\n--- [TEST CASE 1: NIST FIPS 197 Appendix B] ---");
        key       = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        plaintext = 128'h3243f6a8885a308d313198a2e0370734;
        $display("Plaintext Input:  %h", plaintext);
        $display("Cipher Key:       %h", key);

        @(posedge clk);
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

        // Wait for encryption completion
        @(posedge done);
        #1; // Sample output after clock edge
        $display("Output Ciphertext:%h", ciphertext);
        $display("Expected Target:  3925841d02dc09fbdc118597196a0b32");

        if (ciphertext === 128'h3925841d02dc09fbdc118597196a0b32) begin
            $display("[RESULT] TEST CASE 1: PASSED [MATCH]");
            pass_count = pass_count + 1;
        end else begin
            $display("[RESULT] TEST CASE 1: FAILED [MISMATCH]");
            fail_count = fail_count + 1;
        end

        #40;

        // --------------------------------------------------------------------
        // TEST CASE 2: NIST FIPS 197 Appendix C.1
        // --------------------------------------------------------------------
        $display("\n--- [TEST CASE 2: NIST FIPS 197 Appendix C.1] ---");
        key       = 128'h000102030405060708090a0b0c0d0e0f;
        plaintext = 128'h00112233445566778899aabbccddeeff;
        $display("Plaintext Input:  %h", plaintext);
        $display("Cipher Key:       %h", key);

        @(posedge clk);
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

        // Wait for encryption completion
        @(posedge done);
        #1;
        $display("Output Ciphertext:%h", ciphertext);
        $display("Expected Target:  69c4e0d86a7b0430d8cdb78070b4c55a");

        if (ciphertext === 128'h69c4e0d86a7b0430d8cdb78070b4c55a) begin
            $display("[RESULT] TEST CASE 2: PASSED [MATCH]");
            pass_count = pass_count + 1;
        end else begin
            $display("[RESULT] TEST CASE 2: FAILED [MISMATCH]");
            fail_count = fail_count + 1;
        end

        #40;

        // --------------------------------------------------------------------
        // FINAL SUMMARY
        // --------------------------------------------------------------------
        $display("\n===============================================================");
        $display("   VERIFICATION SUMMARY: %0d PASSED, %0d FAILED", pass_count, fail_count);
        if (fail_count == 0)
            $display("   STATUS: ALL AES-128 NIST REFERENCE TESTS PASSED 100%%");
        else
            $display("   STATUS: SIMULATION ENCOUNTERED ERRORS");
        $display("===============================================================\n");

        $finish;
    end

endmodule
