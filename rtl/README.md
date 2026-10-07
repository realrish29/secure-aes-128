# `rtl/` — Synthesizable Verilog

| File | Module | Role |
|------|--------|------|
| `aes_128_core.v` | `aes_128_core` | Baseline AES-128 top level |
| `aes_128_masked_core.v` | `aes_128_masked_core` | First-order masked AES-128 top level |
| `sbox.v` | `sbox` | AES S-box (lookup) |
| `sub_bytes.v` | `sub_bytes` | 16 parallel S-boxes |
| `masked_sbox.v` | `masked_sbox` | Single-byte masked S-box wrapper (see limitation below) |
| `masked_sub_bytes.v` | `masked_sub_bytes` | 16 parallel `masked_sbox` |
| `shift_rows.v` | `shift_rows` | Row permutation (wiring only) |
| `mix_columns.v` | `mix_columns` | GF(2^8) column mixing |
| `add_round_key.v` | `add_round_key` | 128-bit XOR with round key |
| `key_expansion.v` | `key_expansion` | On-the-fly round-key generation |

Top-level modules: `aes_128_core` and `aes_128_masked_core`. Ports are defined in [../CONTRACTS.md](../CONTRACTS.md); hierarchy is in [../docs/ARCHITECTURE.md](../docs/ARCHITECTURE.md).

**Limitation:** `masked_sbox.v` unmasks internally before the lookup, so it is correct but not yet a true masked S-box. See [../docs/ROADMAP.md](../docs/ROADMAP.md) item R1.
