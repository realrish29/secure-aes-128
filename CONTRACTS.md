# Contracts

The agreed interfaces for this project, so that RTL, testbenches, scripts and reports stay consistent. If you change anything here, update the code and the docs in the same commit.

## 1. Top-level module interfaces

### `aes_128_core` (baseline) — [`rtl/aes_128_core.v`](rtl/aes_128_core.v)

| Port | Dir | Width | Meaning |
|------|-----|------:|---------|
| `clk` | in | 1 | System clock |
| `rst_n` | in | 1 | Active-low asynchronous reset |
| `start` | in | 1 | Pulse high for one cycle to begin encryption |
| `plaintext` | in | 128 | Input block |
| `key` | in | 128 | Cipher key |
| `ciphertext` | out | 128 | Encrypted block (valid when `done` pulses) |
| `busy` | out | 1 | High while encrypting |
| `done` | out | 1 | One-cycle pulse when `ciphertext` is valid |

### `aes_128_masked_core` (masked) — [`rtl/aes_128_masked_core.v`](rtl/aes_128_masked_core.v)

Same as the baseline, plus:

| Port | Dir | Width | Meaning |
|------|-----|------:|---------|
| `mask_in` | in | 128 | Mask `M` supplied by the caller (not yet generated on chip) |

**Functional contract:** for any `plaintext`, `key` and `mask_in`, `ciphertext` must equal the baseline core's output. The mask must never change the result.

## 2. Masking convention

- Share 1: `S' = P xor M` (masked state). Share 2: `M` (mask state).
- Linear steps (ShiftRows, MixColumns, AddRoundKey) are applied so that `Share1 xor Share2` always equals the true state.
- Final output: `ciphertext = Share1_final xor Share2_final`.

## 3. Test vectors (must always pass)

Both cores, any mask value.

| Name | Plaintext | Key | Expected ciphertext |
|------|-----------|-----|---------------------|
| NIST FIPS 197 App. B | `3243f6a8885a308d313198a2e0370734` | `2b7e151628aed2a6abf7158809cf4f3c` | `3925841d02dc09fbdc118597196a0b32` |
| NIST FIPS 197 App. C.1 | `00112233445566778899aabbccddeeff` | `000102030405060708090a0b0c0d0e0f` | `69c4e0d86a7b0430d8cdb78070b4c55a` |

## 4. Naming rules

| Thing | Rule | Example |
|-------|------|---------|
| RTL module / file | `snake_case`, file name = module name | `mix_columns.v` |
| Masked variant | prefix `masked_` | `masked_sbox.v` |
| Testbench | prefix `tb_` + module under test | `tb_aes_128_core.v` |
| Python model | `verify_*.py` / `check_*.py` | `verify_masked_aes.py` |
| Reset | active low, `rst_n` | |
| Clock | `clk` | |

## 5. Build contract

- Target part: `xc7a35tcsg324-1` (Artix-7).
- Clock constraint: 10.000 ns on port `clk` ([`constraints/aes_timing.xdc`](constraints/aes_timing.xdc)).
- Tcl scripts are run **from the repository root**.
- Generated Vivado reports and netlists go to `reports/synthesis/`.
- Simulation and synthesis are the supported flow. Board bring-up is out of scope until hardware is available.
