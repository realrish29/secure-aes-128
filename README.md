# Secure AES-128 with First-Order Boolean Masking

> Synthesizable Verilog implementation of AES-128 encryption, plus a first-order Boolean-masked version aimed at resisting power side-channel attacks (DPA/CPA). Verified against NIST FIPS 197 and synthesized with AMD-Xilinx Vivado for an Artix-7 target.

**B.Tech Major Project, Galgotias College of Engineering & Technology (GCET), Greater Noida** | Department of VLSI and Communication Technology | Session 2026-27
**Current milestone:** Review 2 (software-only: RTL, simulation, synthesis; no physical FPGA board)

---

## 1. What problem does this solve?

AES is mathematically strong, but a *hardware* AES circuit draws power that depends on the data it processes. An attacker who measures that power can run **DPA / CPA** and recover the secret key without breaking the maths.

**Boolean masking** is a standard countermeasure. Each sensitive byte `X` is stored as two shares, `X' = X xor M` and `M`, where `M` is random. Neither share alone correlates with `X`.

This project builds:

1. a **baseline** (unprotected) AES-128 core, and
2. a **masked** AES-128 core that runs on two shares,

then compares them for correctness, area and timing. The reference paper (Kumar et al., *A 7-Gbps SCA-Resistant Multiplicative-Masked AES Engine in Intel 4 CMOS*, JSSC 2023) is a benchmark only; this project is an academic RTL/FPGA-oriented design, not a reproduction of it.

## 2. Project flow

| # | Stage | What happens | Where |
|---|-------|--------------|-------|
| 1 | Specification | NIST FIPS 197 algorithm and test vectors | [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) |
| 2 | Golden models | Python models of AES and of the masked flow | [`tb/`](tb/) |
| 3 | Baseline RTL | 128-bit iterative AES-128, one round per clock | [`rtl/`](rtl/) |
| 4 | Masked RTL | Two-share datapath, masked SubBytes, recombination at the end | [`rtl/`](rtl/) |
| 5 | Simulation | Verilog testbenches vs NIST vectors in Vivado XSim | [`tb/`](tb/), [`scripts/`](scripts/) |
| 6 | Synthesis | Vivado synthesis for `xc7a35tcsg324-1`, utilization and timing | [`scripts/`](scripts/), [`reports/synthesis/`](reports/synthesis/) |
| 7 | Reporting | Progress report and design dossier | [`reports/`](reports/) |
| 8 | Leakage evaluation | Welch's t-test / TVLA on simulated traces | *planned*, see [ROADMAP](docs/ROADMAP.md) |

## 3. Status

| Item | Status |
|------|--------|
| Baseline AES-128 core | Done |
| Masked AES-128 core (functional) | Done |
| NIST FIPS 197 vectors (App. B and C.1), both cores | Done, match |
| Vivado synthesis, both cores | Done |
| Timing closure at 100 MHz | Done (see [RESULTS](docs/RESULTS.md)) |
| True masked S-box (no unmasked intermediate) | **Not done** |
| On-chip random mask generator (PRNG) | **Not done** |
| Leakage evaluation (TVLA) | **Not done** |
| Physical FPGA prototype | Out of scope for now (no board) |

## 4. Known limitations (read before judging the security)

These are stated openly so nobody over-reads the results:

- **The masked S-box is not yet a true masked S-box.** [`rtl/masked_sbox.v`](rtl/masked_sbox.v) XORs the mask off internally, looks up the normal S-box, then re-masks. It is functionally correct, but the unmasked byte does exist on an internal wire there. This is the main weakness and the first item on the roadmap.
- **Masks are not generated on chip.** `mask_in` is supplied from outside (the testbench). The per-round mask "refresh" is a fixed rotate-and-XOR, not a random source.
- **No leakage measurement has been done.** Passing NIST vectors proves *correctness*, not side-channel resistance. No security claim is made until TVLA is run.

## 5. Results at a glance

Target: Artix-7 `xc7a35tcsg324-1`, 100 MHz clock constraint, Vivado 2025.2. Full detail and caveats in [docs/RESULTS.md](docs/RESULTS.md).

| Metric (post-synthesis) | Baseline | Masked | Change |
|-------------------------|---------:|-------:|-------:|
| Slice LUTs | 1,350 | 1,924 | +42.5% |
| Slice registers | 393 | 524 | +33.3% |
| Block RAM / DSP | 0 / 0 | 0 / 0 | none |
| Worst negative slack | +4.162 ns | +3.323 ns | still positive |

## 6. Repository layout

```
.
├── rtl/            Synthesizable Verilog (baseline + masked AES-128)
├── tb/             Verilog testbenches + Python golden models
├── constraints/    Vivado timing constraints (XDC)
├── scripts/        Vivado Tcl automation
├── vivado_project/ Vivado project file (.xpr) and synthesis checkpoints
├── reports/
│   ├── synthesis/        Vivado .rpt files and synthesized netlists
│   ├── progress_report/  Review 2 progress report (PDF + source)
│   └── design_dossier/   Detailed design and synthesis dossier (PDF + source)
├── docs/           Architecture, results, roadmap, how-to guides
├── CONTRACTS.md    Module interfaces and test vectors (the "contract")
└── CONTRIBUTING.md Workflow for changes
```

Every folder has its own `README.md`.

## 7. Quick start

Requirements: AMD-Xilinx Vivado (developed on 2025.2) and, optionally, Python 3.

Run everything **from the repository root** (the Tcl scripts use `./rtl`, `./tb` and similar relative paths).

```powershell
# 1. Python golden models (no Vivado needed)
python tb/verify_full_aes.py
python tb/verify_masked_aes.py

# 2. Create the Vivado project
vivado -mode batch -source scripts/build_vivado_project.tcl

# 3. Simulate both cores, then synthesize both
vivado -mode batch -source scripts/run_simulation_and_synthesis.tcl

# 4. (optional) software-only place-and-route timing check of the masked core
vivado -mode batch -source scripts/run_ooc_implementation.tcl
```

Reports are written to `reports/synthesis/`. A step-by-step GUI walkthrough is in [docs/guides/VIVADO_SIMULATION_AND_SYNTHESIS_GUIDE.md](docs/guides/VIVADO_SIMULATION_AND_SYNTHESIS_GUIDE.md).

## 8. Documentation index

| Document | Purpose |
|----------|---------|
| [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) | How both cores work, module hierarchy |
| [CONTRACTS.md](CONTRACTS.md) | Ports, naming rules, test vectors |
| [docs/RESULTS.md](docs/RESULTS.md) | Verified synthesis and timing numbers |
| [docs/ROADMAP.md](docs/ROADMAP.md) | Done / next / future work |
| [reports/](reports/) | Submitted report PDFs |
| [docs/guides/](docs/guides/) | Vivado walkthrough, presentation guide, Git guide |

## 9. Team

| Name | Roll No. |
|------|----------|
| Ish Bhati | 2300971730019 |
| Ishita Chaudhary | 2300971730020 |
| Rishabh Verma | 2300971730029 |

**Guide:** Dr. Parveen Kumar, Assistant Professor, GCET Greater Noida.

## 10. References

1. R. Kumar et al., "A 7-Gbps SCA-Resistant Multiplicative-Masked AES Engine in Intel 4 CMOS," *IEEE JSSC*, vol. 58, no. 4, 2023.
2. NIST, *FIPS PUB 197: Advanced Encryption Standard*.
3. P. Kocher, J. Jaffe, B. Jun, "Differential Power Analysis," CRYPTO '99.
4. S. Chari et al., "Towards Sound Approaches to Counteract Power-Analysis Attacks," CRYPTO '99.
5. D. Canright, L. Batina, "A Very Compact Perfectly Masked S-Box for AES," ACNS 2008.
6. F. Regazzoni, Y. Wang, F.-X. Standaert, "FPGA Implementations of Masked AES: A Comparative Evaluation," CARDIS 2011.
7. G. T. Becker et al., "Test Vector Leakage Assessment (TVLA) Methodology in Practice," ICMC 2013.
