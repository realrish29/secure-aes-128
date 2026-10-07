# Architecture

## 1. Baseline core (`aes_128_core`)

Iterative 128-bit datapath: one AES round per clock cycle, round keys generated on the fly (no key memory).

```
plaintext ──xor── key (round 0) ──► state register ◄──────────────┐
                                        │                         │
                                   SubBytes (16 S-boxes)          │ rounds 1..9
                                        │                         │
                                   ShiftRows (wiring only)        │
                                        │                         │
                                   MixColumns (skipped in round 10)
                                        │                         │
                                   AddRoundKey ◄── key_expansion  │
                                        └─────────────────────────┘
                                        ▼ round 10
                                   ciphertext, done
```

Notes:

- ShiftRows is pure wire permutation, so it costs no LUTs.
- MixColumns is built from GF(2^8) `xtime` XORs.
- `key_expansion` uses 4 S-boxes for SubWord plus the round constant.

## 2. Masked core (`aes_128_masked_core`)

Two registers hold the state as shares:

| Register | Holds |
|----------|-------|
| `share1_reg` | `S' = P xor M`, the masked data |
| `share2_reg` | `M`, the mask |

Per round:

| Step | Share 1 | Share 2 |
|------|---------|---------|
| SubBytes | `masked_sub_bytes`, output re-masked with a refreshed mask | refreshed mask (`mask_refresh`) |
| ShiftRows | own `shift_rows` instance | own `shift_rows` instance |
| MixColumns | own `mix_columns` instance | own `mix_columns` instance |
| AddRoundKey | key added here only | not touched |

At the end, `ciphertext = share1_reg xor share2_reg`.

Linearity is what makes this work: ShiftRows and MixColumns are linear over XOR, so applying them to each share separately keeps `share1 xor share2` equal to the true state. Only SubBytes is non-linear, so it needs the special masked path.

### Current implementation details (honest)

| Aspect | What the code does today |
|--------|--------------------------|
| Mask source | `mask_in` input, supplied by the testbench |
| Mask refresh | `{share2[95:0], share2[127:96]} xor 0x5a5a...5a`, deterministic, not random |
| Masked S-box | Unmasks inside `masked_sbox`, uses the normal S-box, re-masks. Correct output, but the unmasked byte exists on an internal wire |

These are the targets of [ROADMAP](ROADMAP.md) items R1 and R2.

## 3. Module hierarchy

```
aes_128_core
├── sub_bytes ──► 16 × sbox
├── shift_rows
├── mix_columns
├── add_round_key
└── key_expansion ──► 4 × sbox

aes_128_masked_core
├── masked_sub_bytes ──► 16 × masked_sbox ──► sbox
├── shift_rows   (×2, one per share)
├── mix_columns  (×2, one per share)
├── add_round_key
└── key_expansion ──► 4 × sbox
```

## 4. Verification approach

| Layer | Tool | Checks |
|-------|------|--------|
| Algorithm | `tb/verify_full_aes.py` | Full AES-128 against NIST vectors |
| Masking maths | `tb/verify_masked_aes.py` | Masked flow gives the same ciphertext |
| Round step | `tb/check_reference.py` | AddRoundKey against NIST FIPS 197 |
| RTL | `tb/tb_aes_128_core.v`, `tb/tb_aes_128_masked_core.v` | Hardware output vs NIST vectors in Vivado XSim |

Passing these shows the designs are **correct**. It does not show they are **leak-free**; that needs the planned TVLA step.
