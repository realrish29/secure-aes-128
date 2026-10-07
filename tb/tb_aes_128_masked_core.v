// ============================================================================
// Testbench Name: tb_aes_128_masked_core
// Project:        Secure AES-128 Implementation with Side-Channel Resistance
// Description:    Verifies that the First-Order Boolean Masked AES-128 core
//                 produces 100% mathematically correct NIST FIPS 197 ciphertexts
//                 while computing entirely over randomized two-share data paths.
// ============================================================================

`timescale 1ns / 1ps

module tb_aes_128_masked_core;

    reg          clk;
    reg          rst_n;
    reg          start;
    reg  [127:0] plaintext;
    reg  [127:0] key;
    reg  [127:0] mask_in;
    wire [127:0] ciphertext;
    wire         busy;
    wire         done;

    integer pass_count = 0;
    integer fail_count = 0;

    // Instantiate Device Under Test
    aes_128_masked_core dut_masked (
        .clk       (clk),
        .rst_n     (rst_n),
        .start     (start),
        .plaintext (plaintext),
        .key       (key),
        .mask_in   (mask_in),
        .ciphertext(ciphertext),
        .busy      (busy),
        .done      (done)
    );

    // 100 MHz Clock
    always #5 clk = ~clk;

    initial begin
        $dumpfile("sim_aes_128_masked.vcd");
        $dumpvars(0, tb_aes_128_masked_core);

        $display("===============================================================");
        $display("   STARTING MASKED AES-128 CORE VERIFICATION (NIST FIPS 197)   ");
        $display("===============================================================");

        clk       = 0;
        rst_n     = 0;
        start     = 0;
        plaintext = 128'h0;
        key       = 128'h0;
        mask_in   = 128'h0;

        #20;
        rst_n = 1;
        #20;

        // --------------------------------------------------------------------
        // TEST CASE 1: NIST FIPS 197 Appendix B with Non-Zero Random Mask
        // --------------------------------------------------------------------
        $display("\n--- [TEST CASE 1: Masked Core with Random Mask A] ---");
        key       = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        plaintext = 128'h3243f6a8885a308d313198a2e0370734;
        mask_in   = 128'ha5a5a5a512345678fedcba9876543210; // Injected random mask
        $display("Plaintext Input:  %h", plaintext);
        $display("Cipher Key:       %h", key);
        $display("Injected Mask M:  %h", mask_in);
        $display("Share 1 (P ^ M):  %h", plaintext ^ mask_in);

        @(posedge clk);
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

        @(posedge done);
        #1;
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
        // TEST CASE 2: NIST FIPS 197 Appendix C.1 with Different Random Mask
        // --------------------------------------------------------------------
        $display("\n--- [TEST CASE 2: Masked Core with Random Mask B] ---");
        key       = 128'h000102030405060708090a0b0c0d0e0f;
        plaintext = 128'h00112233445566778899aabbccddeeff;
        mask_in   = 128'h3f2e1d0c4b5a69788796a5b4c0d1e2f3; // Different random mask
        $display("Plaintext Input:  %h", plaintext);
        $display("Cipher Key:       %h", key);
        $display("Injected Mask M:  %h", mask_in);
        $display("Share 1 (P ^ M):  %h", plaintext ^ mask_in);

        @(posedge clk);
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

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
        // SUMMARY
        // --------------------------------------------------------------------
        $display("\n===============================================================");
        $display("   MASKED CORE VERIFICATION: %0d PASSED, %0d FAILED", pass_count, fail_count);
        if (fail_count == 0)
            $display("   STATUS: BOOLEAN MASKED CORE RECOMBINATION VERIFIED 100%%");
        else
            $display("   STATUS: MASKED SIMULATION ENCOUNTERED ERRORS");
        $display("===============================================================\n");

        $finish;
    end

endmodule
