# AMD-Xilinx Vivado: Step-by-Step Simulation & Synthesis Guide
**Project:** Secure AES-128 Implementation with Side-Channel Resistance  
**Target Device:** AMD-Xilinx Artix-7 (`xc7a35tcsg324-1` or any 7-Series FPGA)

---

## 1. Creating the Vivado Project

1. Open **Vivado** (2020.x, 2021.x, 2022.x, or 2023.x).
2. Click **Create Project** -> Click **Next**.
3. **Project Name:** `AES128_SCA_Resistance`  
   **Project Location:** Choose any convenient folder on your laptop.
4. **Project Type:** Select **RTL Project** (leave "Do not specify sources at this time" unchecked). Click **Next**.
5. **Add Sources:**
   * Click **Add Files** -> Navigate to your project folder: `c:\Users\LENOVO\Documents\antigravity\fervent-kepler\rtl\`
   * Select all `.v` files:
     - `add_round_key.v`
     - `shift_rows.v`
     - `mix_columns.v`
     - `sbox.v`
     - `sub_bytes.v`
     - `key_expansion.v`
     - `aes_128_core.v`
     - `masked_sbox.v`
     - `masked_sub_bytes.v`
     - `aes_128_masked_core.v`
   * Target language: **Verilog**, Simulator language: **Mixed**. Click **Next**.
6. **Add Constraints:** Click **Next** (None needed for behavioral simulation).
7. **Default Part Selection:**
   * In the Search box, type: `xc7a35tcsg324-1` (Artix-7 35T) or select any Spartan-7 / Zynq-7000 device available in your install.
   * Click **Next** -> Click **Finish**.

---

## 2. Adding Simulation Testbenches

1. In the **Flow Navigator** on the left, under *Project Manager*, click **Add Sources**.
2. Select **Add or create simulation sources** -> Click **Next**.
3. Click **Add Files** -> Navigate to `...\fervent-kepler\tb\`
4. Add:
   * `tb_aes_128_core.v`
   * `tb_aes_128_masked_core.v`
5. Click **Finish**.

---

## 3. Running Behavioral Simulation (Waveforms for Presentation)

### A. Simulating Baseline AES-128 Core
1. In the **Sources** pane, expand **Simulation Sources** -> `sim_1`.
2. Right-click on `tb_aes_128_core.v` and select **Set as Top**.
3. In the Flow Navigator, click **Run Simulation** -> **Run Behavioral Simulation**.
4. Vivado will compile the modules and launch the waveform viewer.
5. In the Tcl Console at the bottom, you will see:
   ```text
   ===============================================================
      STARTING AES-128 CORE VERIFICATION (NIST FIPS 197)         
   ===============================================================
   [RESULT] TEST CASE 1: PASSED [MATCH]
   [RESULT] TEST CASE 2: PASSED [MATCH]
   STATUS: ALL AES-128 NIST REFERENCE TESTS PASSED 100%
   ```
6. **Waveform View:**
   * In the waveform window, click the **Zoom Fit** icon (or press `F`).
   * Right-click on `plaintext`, `key`, and `ciphertext` signals -> **Radix** -> **Hexadecimal**.
   * Observe the signals:
     - At time `t = 45ns`, `start` pulses high.
     - `round_ctr` increments from `1` to `10`.
     - At time `t = 155ns`, `done` pulses high and `ciphertext` displays: `3925841d02dc09fbdc118597196a0b32`.
   * **Action for Review:** Take a high-resolution screenshot of this waveform window for **Slide 3**.

---

### B. Simulating Masked AES-128 Core
1. In the **Sources** pane, right-click on `tb_aes_128_masked_core.v` -> **Set as Top**.
2. Click **Run Simulation** -> **Run Behavioral Simulation**.
3. In the Tcl Console, observe:
   ```text
   ===============================================================
      STARTING MASKED AES-128 CORE VERIFICATION (NIST FIPS 197)   
   ===============================================================
   [RESULT] TEST CASE 1: PASSED [MATCH]
   [RESULT] TEST CASE 2: PASSED [MATCH]
   STATUS: BOOLEAN MASKED CORE RECOMBINATION VERIFIED 100%
   ```
4. **Waveform View:**
   * Notice that `share1_reg` and `share2_reg` contain pseudo-random, masked values during every round, yet upon `done`, the recombined `ciphertext` is identical to the NIST reference!
   * Take a screenshot for **Slide 4**.

---

## 4. Running Logic Synthesis (FPGA Resource Utilization)

1. In the **Sources** window, expand **Design Sources**.
2. Right-click on `aes_128_core.v` -> **Set as Top**.
3. In the Flow Navigator under *Synthesis*, click **Run Synthesis**.
4. When prompted, select number of CPU cores (e.g. 4) and click **OK**.
5. Wait 1–3 minutes until synthesis completes. A dialog will appear: select **Open Synthesized Design** and click **OK**.
6. In the top toolbar, go to **Reports** -> **Report Utilization**. Click **OK**.
7. In the Utilization window at the bottom, you will see the exact hardware breakdown:
   * **Slice LUTs:** Look-up tables used for S-boxes and logic.
   * **Slice Registers (FFs):** Flip-flops used for state and key registers.
   * **Bonded IOB:** Input/Output pins.
8. Go to **Reports** -> **Report Timing Summary** to verify setup slack and maximum clock frequency ($F_{max}$).
9. Take screenshots of the **Utilization Summary** table for **Slide 5**.
