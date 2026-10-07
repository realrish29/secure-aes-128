# `tb/` — Testbenches and golden models

| File | Type | Checks |
|------|------|--------|
| `tb_aes_128_core.v` | Verilog testbench | Baseline core vs NIST vectors |
| `tb_aes_128_masked_core.v` | Verilog testbench | Masked core vs NIST vectors, with injected masks |
| `verify_full_aes.py` | Python model | Full AES-128 vs NIST vectors |
| `verify_masked_aes.py` | Python model | Masked flow gives the same ciphertext |
| `check_reference.py` | Python model | Round-0 AddRoundKey vs NIST FIPS 197 |

## Run the Python checks

No Vivado needed. From the repository root:

```powershell
python tb/verify_full_aes.py
python tb/verify_masked_aes.py
python tb/check_reference.py
```

Each prints its own pass message when the output matches the expected value.

## Run the Verilog testbenches

Use Vivado XSim, from the repository root:

```powershell
vivado -mode batch -source scripts/run_simulation_and_synthesis.tcl
```

Test vectors are listed in [../CONTRACTS.md](../CONTRACTS.md).
