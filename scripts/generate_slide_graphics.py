import os
import subprocess

os.makedirs('presentation_assets', exist_ok=True)

# 1. Datapath Architecture Graphic
html_arch = """<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
  body { font-family: 'Segoe UI', Arial, sans-serif; background: #ffffff; margin: 0; padding: 20px; }
  .box { border: 2px solid #0F2557; border-radius: 8px; background: #F8FAFC; padding: 15px; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
  .title { font-size: 16px; font-weight: bold; color: #0F2557; text-align: center; margin-bottom: 12px; text-transform: uppercase; letter-spacing: 0.5px; }
  .pipeline { display: flex; align-items: center; justify-content: space-between; }
  .node { background: #FFFFFF; border: 1.5px solid #2563EB; border-radius: 6px; padding: 10px 12px; text-align: center; min-width: 110px; }
  .node-title { font-size: 12px; font-weight: bold; color: #1E3A8A; }
  .node-sub { font-size: 10px; color: #64748B; margin-top: 2px; }
  .node-accent { background: #EFF6FF; border-color: #1D4ED8; }
  .node-masked { background: #FEF3C7; border-color: #D97706; }
  .node-masked .node-title { color: #92400E; }
  .arrow { font-size: 18px; font-weight: bold; color: #0F2557; margin: 0 4px; }
  .shares-container { border: 1.5px dashed #3B82F6; border-radius: 6px; padding: 8px; margin: 0 5px; background: #F0F9FF; }
  .shares-label { font-size: 10px; font-weight: bold; color: #1D4ED8; text-align: center; margin-bottom: 4px; }
</style>
</head>
<body>
<div class="box">
  <div class="title">First-Order Boolean Masked AES-128 Datapath Architecture</div>
  <div class="pipeline">
    <div class="node">
      <div class="node-title">128-bit Input</div>
      <div class="node-sub">Plaintext P & Key K</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="node node-accent">
      <div class="node-title">Mask Injection</div>
      <div class="node-sub">PRNG Mask M<br>S' = P &oplus; M</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="shares-container">
      <div class="shares-label">10-Round Dual-Share Iterative Pipeline</div>
      <div style="display: flex; gap: 8px;">
        <div class="node">
          <div class="node-title">AddRoundKey</div>
          <div class="node-sub">Dynamic Key Exp</div>
        </div>
        <div class="node node-masked">
          <div class="node-title">Masked S-Box</div>
          <div class="node-sub">Dynamic Refresh</div>
        </div>
        <div class="node">
          <div class="node-title">ShiftRows</div>
          <div class="node-sub">Dual-Share Perm</div>
        </div>
        <div class="node">
          <div class="node-title">MixColumns</div>
          <div class="node-sub">xtime GF(2&sup8;)</div>
        </div>
      </div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="node node-accent">
      <div class="node-title">Unmasking</div>
      <div class="node-sub">Round 10 Combine<br>C = S' &oplus; M</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="node">
      <div class="node-title">Ciphertext C</div>
      <div class="node-sub">100% NIST Match</div>
    </div>
  </div>
</div>
</body>
</html>"""

with open('presentation_assets/arch_diagram.html', 'w', encoding='utf-8') as f:
    f.write(html_arch)

# 2. EDA Flowchart Graphic
html_flow = """<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
  body { font-family: 'Segoe UI', Arial, sans-serif; background: #ffffff; margin: 0; padding: 20px; }
  .box { border: 2px solid #0F2557; border-radius: 8px; background: #F8FAFC; padding: 15px; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
  .title { font-size: 16px; font-weight: bold; color: #0F2557; text-align: center; margin-bottom: 12px; text-transform: uppercase; letter-spacing: 0.5px; }
  .flow { display: flex; align-items: center; justify-content: space-between; }
  .step { background: #FFFFFF; border: 1.5px solid #0F2557; border-radius: 6px; padding: 10px 14px; text-align: center; flex: 1; margin: 0 4px; }
  .step-num { font-size: 11px; font-weight: bold; color: #2563EB; text-transform: uppercase; }
  .step-name { font-size: 13px; font-weight: bold; color: #0F2557; margin: 3px 0; }
  .step-desc { font-size: 10px; color: #475569; }
  .arrow { font-size: 20px; font-weight: bold; color: #0F2557; }
</style>
</head>
<body>
<div class="box">
  <div class="title">Four-Stage EDA Engineering Design & Verification Flowchart</div>
  <div class="flow">
    <div class="step">
      <div class="step-num">Stage 1</div>
      <div class="step-name">Baseline RTL Modeling</div>
      <div class="step-desc">Modular Verilog (aes_128_core.v)<br>NIST FIPS 197 Reference Sim</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="step" style="border-color: #D97706; background: #FEF3C7;">
      <div class="step-num" style="color: #B45309;">Stage 2</div>
      <div class="step-name" style="color: #92400E;">Masked Architecture</div>
      <div class="step-desc">First-Order Boolean Sharing<br>Masked S-Box & Dynamic Refresh</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="step">
      <div class="step-num">Stage 3</div>
      <div class="step-name">Vivado Logic Synthesis</div>
      <div class="step-desc">Target: Artix-7 (xc7a35t) @ 100MHz<br>Extract LUTs, Registers, Slack</div>
    </div>
    <div class="arrow">&rarr;</div>
    <div class="step" style="border-color: #059669; background: #ECFDF5;">
      <div class="step-num" style="color: #047857;">Stage 4</div>
      <div class="step-name" style="color: #065F46;">Multi-Mode Verification</div>
      <div class="step-desc">Behavioral, Netlist & Timing Waveforms<br>TVLA & Security Assessment</div>
    </div>
  </div>
</div>
</body>
</html>"""

with open('presentation_assets/flow_diagram.html', 'w', encoding='utf-8') as f:
    f.write(html_flow)

# 3. Program / RTL Snapshot for Slide 9
html_prog = """<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
  body { font-family: 'Consolas', 'Courier New', monospace; background: #1E1E1E; color: #D4D4D4; margin: 0; padding: 15px; border-radius: 6px; }
  .kw { color: #569CD6; font-weight: bold; }
  .mod { color: #4EC9B0; }
  .com { color: #6A9955; font-style: italic; }
  .sig { color: #9CDCFE; }
  .num { color: #B5CEA8; }
  .str { color: #CE9178; }
  .header { font-family: 'Segoe UI', Arial, sans-serif; font-size: 13px; font-weight: bold; color: #61AFEF; margin-bottom: 8px; border-bottom: 1px solid #333; padding-bottom: 4px; }
  pre { margin: 0; font-size: 11px; line-height: 1.35; }
</style>
</head>
<body>
<div class="header">Source: rtl/aes_128_masked_core.v (Synthesizable Two-Share Verilog Module)</div>
<pre>
<span class="kw">module</span> <span class="mod">aes_128_masked_core</span> (
    <span class="kw">input</span>  <span class="kw">wire</span>         <span class="sig">clk</span>, <span class="sig">rst</span>, <span class="sig">start</span>,
    <span class="kw">input</span>  <span class="kw">wire</span> [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">plaintext</span>,  <span class="com">// 128-bit Sensitive Plaintext</span>
    <span class="kw">input</span>  <span class="kw">wire</span> [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">key</span>,        <span class="com">// 128-bit Cipher Key</span>
    <span class="kw">input</span>  <span class="kw">wire</span> [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">mask_in</span>,    <span class="com">// Random Mask Share M</span>
    <span class="kw">output</span> <span class="kw">reg</span>  [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">ciphertext</span>, <span class="com">// NIST Compliant Output</span>
    <span class="kw">output</span> <span class="kw">reg</span>          <span class="sig">done</span>
);
  <span class="com">// Two-Share State Registers (Split Datapath)</span>
  <span class="kw">reg</span> [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">state_share1</span>; <span class="com">// Masked State: S' = P ^ M</span>
  <span class="kw">reg</span> [<span class="num">127</span>:<span class="num">0</span>] <span class="sig">state_share2</span>; <span class="com">// Mask State:   M</span>

  <span class="com">// Protected Non-Linear SubBytes with Mask Refresh</span>
  <span class="mod">masked_sub_bytes</span> u_msub (
      .<span class="sig">in_share1</span>(<span class="sig">state_share1</span>), .<span class="sig">in_share2</span>(<span class="sig">state_share2</span>),
      .<span class="sig">out_share1</span>(<span class="sig">sbox_share1</span>), .<span class="sig">out_share2</span>(<span class="sig">sbox_share2</span>)
  );
  <span class="com">// Round 10: Recombination C = state_share1 ^ state_share2</span>
<span class="kw">endmodule</span>
</pre>
</body>
</html>"""

with open('presentation_assets/prog_snapshot.html', 'w', encoding='utf-8') as f:
    f.write(html_prog)

# 4. Vivado Tool & NIST Verification Snapshot for Slide 9
html_vivado = """<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
  body { font-family: 'Consolas', monospace; background: #0F172A; color: #F8FAFC; margin: 0; padding: 15px; border-radius: 6px; }
  .header { font-family: 'Segoe UI', Arial, sans-serif; font-size: 13px; font-weight: bold; color: #38BDF8; margin-bottom: 8px; border-bottom: 1px solid #334155; padding-bottom: 4px; }
  .pass { color: #4ADE80; font-weight: bold; }
  .info { color: #94A3B8; }
  .val { color: #FCD34D; }
  pre { margin: 0; font-size: 11px; line-height: 1.35; }
</style>
</head>
<body>
<div class="header">AMD-Xilinx Vivado ML v2025.2 XSim Simulation Output</div>
<pre>
<span class="info">===============================================================</span>
<span class="info">   STARTING AES-128 CORE VERIFICATION (NIST FIPS PUB 197)</span>
<span class="info">===============================================================</span>
<span class="info">--- [TEST CASE 1: NIST FIPS 197 Appendix B] ---</span>
Plaintext:  <span class="val">3243f6a8885a308d313198a2e0370734</span>
Cipher Key: <span class="val">2b7e151628aed2a6abf7158809cf4f3c</span>
Ciphertext: <span class="val">3925841d02dc09fbdc118597196a0b32</span> [TARGET MATCH]
Result:     <span class="pass">[TEST CASE 1: PASSED - 100% MATCH]</span>

<span class="info">--- [TEST CASE 2: NIST FIPS 197 Appendix C.1] ---</span>
Plaintext:  <span class="val">00112233445566778899aabbccddeeff</span>
Cipher Key: <span class="val">000102030405060708090a0b0c0d0e0f</span>
Ciphertext: <span class="val">69c4e0d86a7b0430d8cdb78070b4c55a</span> [TARGET MATCH]
Result:     <span class="pass">[TEST CASE 2: PASSED - 100% MATCH]</span>
<span class="info">===============================================================</span>
<span class="pass">   STATUS: ALL AES-128 NIST REFERENCE TESTS PASSED 100%</span>
<span class="info">===============================================================</span>
</pre>
</body>
</html>"""

with open('presentation_assets/vivado_snapshot.html', 'w', encoding='utf-8') as f:
    f.write(html_vivado)

print("HTML graphic source templates authored successfully!")
