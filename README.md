# First-Order Boolean Masked AES-128 Implementation

## Project Overview
Welcome to our project! This project focuses on making digital data more secure. We have implemented an **AES-128** encryption system, which is a standard way to lock up secret information (certified by **NIST FIPS 197**). 

However, standard encryption can sometimes leak clues about the secret password (key) through the electrical power it uses. To fix this, we added a security feature called **First-Order Boolean Masking**. This technique splits the data into two "shares" (like splitting a treasure map into two pieces). Because the data is scrambled with random masks while the computer works on it, it hides the power signals and makes it much harder for attackers to steal the secret key.

This project was built using **Verilog** (a hardware description language) and is designed to run on an **AMD-Xilinx Artix-7 FPGA** using **Vivado** software. Since we are focusing on the design and testing phases, we successfully ran simulations and generated "Out-Of-Context" synthesis reports to prove our design works correctly and fits on the chip, without needing the physical board right now.

**Academic Details:**
*   **Institution:** Galgotias College of Engineering & Technology (GCET)
*   **Project Guide:** Dr. Parveen Kumar
*   **Team Members:** Ish Bhati, Ishita Chaudhary, Rishabh Verma

---

## Installation and Setup
To view, test, and run this project, you will need:
1. **AMD Xilinx Vivado** installed on your computer.
2. (Optional) **Python** installed if you want to run our mathematical reference checks.

**Step-by-Step Setup:**
1. Download or copy this entire project folder to your computer.
2. Open the **Vivado** application.
3. In Vivado, you can run the provided automated scripts (located in the `scripts/` folder) to easily generate the project and see the results without setting everything up manually.

---

## Usage

### 1. Simulating the Design
We have created testbenches to verify that our code encrypts data exactly as the official standards demand.
*   Open Vivado, load the Verilog files from the `rtl/` and `tb/` folders.
*   Run the simulation to see the waveforms. You will see that the encrypted outputs match the golden NIST standard answers perfectly.

### 2. Synthesizing the Project
Synthesis is the process of translating our code into actual hardware logic gates.
*   In the Vivado Tcl Console (the command line at the bottom of the screen), navigate to this project folder.
*   Run our automated script by typing: 
    `source scripts/build_vivado_project.tcl`
*   This will create a new Vivado project, load all our design files, and run the implementation (using an Out-Of-Context mode so it doesn't worry about the physical pins on a physical board).
*   Once finished, you can check the `docs/` folder for the `.rpt` reports that show how much space our design takes up on the chip and how fast it runs.

---

## Contributions
This project is currently an academic submission for our B.Tech degree (Review 2). We are not currently accepting outside contributions. 

Our future goals for the Final Review include adding a True Random Number Generator (PRNG) to generate the masks directly on the chip, upgrading to a more efficient Canright S-box, and running Welch's t-test to mathematically prove our masking works against side-channel attacks.
