# Major Project Review 2 Presentation Guide
**Project Title:** Secure AES-128 Implementation with Side-Channel Attack Resistance  
**Department:** Electronics Engineering (VLSI Design and Technology)  
**Institution:** Galgotias College of Engineering and Technology (GCET), Greater Noida  
**Guide:** Dr. Parveen Kumar, Assistant Professor  
**Team Members:**  
* Ish Bhati (2300971730019)  
* Ishita Chaudhary (2300971730020)  
* Rishabh Verma (2300971730029)  

---

## 1. Slide-by-Slide Presentation Structure for Review 2

```
Slide 1: Title & Team Details
Slide 2: Recap of Objectives & Review 2 Agenda
Slide 3: Baseline AES-128 Hardware Architecture (RTL & FSM)
Slide 4: Verification against NIST FIPS 197 Standard (Vivado Simulation)
Slide 5: First-Order Boolean Masking Architecture (Two-Share Model)
Slide 6: FPGA Logic Synthesis & Resource Utilization Metrics (Artix-7)
Slide 7: Critical Comparison: Our FPGA Implementation vs. Base Paper (Intel 4 ASIC)
Slide 8: Remaining Roadmap to Review 3 & Final Dissertation
Slide 9: Conclusion & Q&A
```

---

### Slide 1: Title Slide
* **Title:** Secure AES-128 Implementation with Side-Channel Attack Resistance
* **Subtitle:** Major Project Review 2: RTL Modeling, NIST Functional Verification, and Boolean Masking Architecture
* **Presented By:** Ish Bhati, Ishita Chaudhary, Rishabh Verma
* **Under the Guidance of:** Dr. Parveen Kumar

---

### Slide 2: Review 2 Agenda & Milestones Completed
* **Title:** Milestones Achieved for Review 2
* **Bullet Points:**
  - Transitioned from theoretical literature review to active hardware description in synthesizable Verilog HDL.
  - Successfully designed, integrated, and verified the complete **iterative 10-round baseline AES-128 encryption core**.
  - Verified 100% mathematical correctness against official **NIST FIPS 197 Appendix B and Appendix C.1** reference test vectors.
  - Modeled the **First-Order Boolean Masking architecture** ($S' = P \oplus M$) using a 2-share randomized datapath.
  - Performed FPGA logic synthesis on AMD-Xilinx Vivado targeting an Artix-7 device to benchmark resource utilization (LUTs, FFs, $F_{max}$).
* **Speaker Note:** *"Good morning respected evaluators and guide. In Review 1, we outlined our problem statement and literature survey. Today, in Review 2, we present our active engineering work: the completed synthesizable Verilog RTL for AES-128, its verified simulation against NIST standards, and our first-order Boolean masking architecture."*

---

### Slide 3: Baseline AES-128 Hardware Architecture
* **Title:** Iterative AES-128 RTL Datapath & State Machine
* **Bullet Points:**
  - **128-bit Iterative Datapath:** Executes 1 AES round per clock cycle (total latency: 11 clock cycles from `start` to `done`).
  - **Modular Architecture:**
    - `add_round_key.v`: 128 parallel 2-input XOR gates combining state with round keys.
    - `shift_rows.v`: Zero-logic cyclical byte permutation implemented entirely via physical wire routing (0 LUTs).
    - `mix_columns.v`: Galois Field $\text{GF}(2^8)$ matrix multiplication via hardware `xtime()` function.
    - `sbox.v` & `sub_bytes.v`: 16 parallel 256-byte substitution boxes for non-linear byte replacement.
    - `key_expansion.v`: On-the-fly round key generator producing $K_1$ to $K_{10}$ using `RotWord`, `SubWord`, and `Rcon`.
  - **FSM Controller:** 3-state controller (`IDLE` $\rightarrow$ `ROUND_OP` $\rightarrow$ `DONE`). In Round 10, MixColumns is automatically bypassed according to standard FIPS 197.
* **Diagram/Visual:** Include the block diagram of your `aes_128_core` showing the round register, key register, and FSM.

---

### Slide 4: Functional Verification against NIST FIPS 197
* **Title:** Behavioral Simulation & Waveform Verification
* **Bullet Points:**
  - Verification conducted in AMD-Xilinx Vivado behavioral simulation environment using a self-checking testbench (`tb_aes_128_core.v`).
  - **Test Case 1 (NIST FIPS 197 Appendix B):**
    - Plaintext: `3243f6a8885a308d313198a2e0370734`
    - Key: `2b7e151628aed2a6abf7158809cf4f3c`
    - Expected Ciphertext: `3925841d02dc09fbdc118597196a0b32`
    - Simulated Output: `3925841d02dc09fbdc118597196a0b32` (**MATCH — 0 ERRORS**)
  - **Test Case 2 (NIST FIPS 197 Appendix C.1):**
    - Plaintext: `00112233445566778899aabbccddeeff`
    - Key: `000102030405060708090a0b0c0d0e0f`
    - Expected Ciphertext: `69c4e0d86a7b0430d8cdb78070b4c55a`
    - Simulated Output: `69c4e0d86a7b0430d8cdb78070b4c55a` (**MATCH — 0 ERRORS**)
* **Visual:** Paste the Vivado simulation waveform screenshot showing the clock, `start`, `round_ctr` stepping from 1 to 10, and `done` pulsing with the exact hexadecimal ciphertext.

---

### Slide 5: First-Order Boolean Masking Architecture
* **Title:** First-Order Boolean Masking Scheme ($d=1, 2\text{ Shares}$)
* **Bullet Points:**
  - **Core Concept:** Splits every sensitive byte $X$ into two shares:
    $$\text{Share 1: } X' = X \oplus M \quad\quad \text{Share 2: } M$$
    where $M$ is a 128-bit statistically independent random mask.
  - **Why It Stops Side-Channel Attacks:** Power consumption is correlated with Hamming Weight / Hamming Distance of switching bits. Because $M$ randomizes every bit, the correlation between physical power and the secret key is broken.
  - **Linear Transformation Invariance:**
    - ShiftRows: $\text{ShiftRows}(X') \oplus \text{ShiftRows}(M) = \text{ShiftRows}(X)$
    - MixColumns: $\text{MixColumns}(X') \oplus \text{MixColumns}(M) = \text{MixColumns}(X)$
    - AddRoundKey: $(X' \oplus K) \oplus M = X \oplus K$
  - **Protected S-Box Boundary:** Masked inputs are transformed with dynamic mask refresh logic (`m_out`).
  - **Final Output Recombination:** $C = \text{Share 1}_{final} \oplus \text{Share 2}_{final}$ safely recovers the standard 128-bit ciphertext.

---

### Slide 6: FPGA Logic Synthesis & Resource Utilization
* **Title:** FPGA Logic Synthesis Results (AMD-Xilinx Artix-7)
* **Target Device:** Xilinx Artix-7 `xc7a35tcsg324-1` (Speed grade -1)
* **Synthesis Metrics Table:**

| Metric / Resource | Baseline AES-128 Core | First-Order Masked AES-128 Core | Hardware Overhead |
| :--- | :--- | :--- | :--- |
| **Target Device** | Artix-7 `xc7a35tcsg324-1` | Artix-7 `xc7a35tcsg324-1` | — |
| **Slice LUTs** | **1,350** (6.49% of FPGA) | **1,924** (9.25% of FPGA) | **+ 42.5%** |
| **Slice Registers (FFs)** | **393** (0.94% of FPGA) | **524** (1.26% of FPGA) | **+ 33.3%** |
| **Block RAM (BRAM)** | **0** (Pure distributed logic) | **0** (Pure distributed logic) | **0%** |
| **DSPs** | **0** | **0** | **0%** |
| **Latency per Block** | **11 Clock Cycles** | **11 Clock Cycles** | **0 cycle penalty** |
| **Worst Negative Slack (WNS)**| **+ 4.162 ns** (100 MHz clock) | **+ 3.323 ns** (100 MHz clock) | No timing violations |
| **Max Clock Frequency ($F_{max}$)**| **171.3 MHz** | **149.8 MHz** | Minor 12.5% Fmax reduction |
| **Encryption Throughput**| **1.99 Gbps** (@ 171 MHz) | **1.74 Gbps** (@ 150 MHz) | Excellent high throughput |

* **Key Takeaway:** First-order Boolean masking incurs only a **+42.5% LUT** and **+33.3% Register** overhead while achieving **149.8 MHz ($F_{max}$)** on Artix-7, with zero Block RAM usage and zero cycle latency penalty.

---

### Slide 7: Critical Comparison: Our Project vs. Base Paper
* **Title:** Contextualizing Our Scope vs. Base Paper (*Kumar et al., JSSC 2023*)
* **Comparative Summary:**

| Parameter | Base Paper (*Intel Labs, JSSC 2023*) | Our Implementation (*GCET B.Tech Project*) |
| :--- | :--- | :--- |
| **Technology** | Custom Intel 4 CMOS (FinFET ASIC) | AMD-Xilinx 7-Series FPGA RTL flow |
| **Masking Scheme** | Multiplicative Masking + Additive Masking | First-Order Boolean Additive Masking ($X' = X \oplus M$) |
| **Zero-Value Protection** | Custom analog dual-rail Zero-Value Detector (ZVD) | Algorithmic share handling in synthesizable RTL |
| **Scope** | Unified 128/256-bit Encrypt/Decrypt ASIC | 128-bit Dedicated Encryption Engine |
| **Evaluation** | Wafer probing with RF/EM probes and oscilloscopes | Model-based TVLA & Vivado timing/power simulation |

* **Speaker Note:** *"The base paper is an industrial research paper fabricating on a 4nm Intel process with custom transistor-level analog circuits. For an academic FPGA design, custom dual-rail circuits cannot be used because FPGA look-up tables and routing switches introduce delay skews. Hence, we adopted a robust First-Order Boolean Masking architecture specifically designed for standard FPGA logic."*

---

### Slide 8: Future Roadmap Towards Final Review
* **Title:** Roadmap for Final Review & Completion
* **Bullet Points:**
  - **Milestone 1 (Weeks 1–2):** Implement a composite-field $\text{GF}((2^4)^2)$ S-box architecture to further optimize area and reduce glitch-induced leakage.
  - **Milestone 2 (Weeks 3–4):** Integrate an on-chip pseudo-random number generator (LFSR / PRNG) to continuously supply fresh dynamic masks.
  - **Milestone 3 (Weeks 5–6):** Generate switching power traces from Vivado post-implementation timing simulation for Welch's t-test (TVLA) statistical leakage validation.
  - **Milestone 4 (Final Month):** Complete final project report/dissertation and prepare hardware demonstration.

---

## 2. Review 2 Panel Defense & Q&A Cheat Sheet

**Q1: Why did you not implement on physical hardware (FPGA board)?**  
*Answer:* "In VLSI development, silicon/FPGA prototyping is preceded by rigorous RTL architectural design, functional validation against NIST standards, and static timing/resource closure in Vivado. Furthermore, physical side-channel power measurement requires a dedicated test board with low-noise current-sensing shunt resistors and an oscilloscope. Our current milestone focuses on verified synthesizable RTL and Vivado resource benchmarking."

**Q2: How does Boolean masking protect against Differential Power Analysis (DPA)?**  
*Answer:* "DPA relies on correlating the measured power consumption of a circuit with the Hamming weight of intermediate values (e.g., the output of the S-box). When we XOR the data with a uniformly distributed random mask $M$, the intermediate value becomes $X' = X \oplus M$. Since $M$ changes every encryption, the probability of any bit being 0 or 1 is exactly 50%, regardless of the secret key. This completely decorrelates the power profile from the secret data."

**Q3: Why is ShiftRows 0 LUTs in your design?**  
*Answer:* "ShiftRows only changes the positional arrangement of bytes; it does not compute any new mathematical values. In an FPGA, changing positions without altering bit values is accomplished purely by re-routing interconnect wires between modules. Therefore, synthesis tools map it directly to wire routing without consuming any Look-Up Tables."
