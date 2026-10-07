# Roadmap

Status key: **Done**, **Next** (planned for the final review), **Future** (needs resources we do not have yet).

## Completed (Review 2)

| ID | Item | Status |
|----|------|--------|
| D1 | Baseline AES-128 RTL core | Done |
| D2 | First-order masked AES-128 RTL core (functional) | Done |
| D3 | Verilog testbenches + Python golden models, NIST vectors | Done |
| D4 | Vivado synthesis, both cores, reports and netlists | Done |
| D5 | Progress report and design dossier | Done |

## Next (final review)

| ID | Item | Why it matters |
|----|------|----------------|
| R1 | Replace the unmask-lookup-remask S-box with a true masked S-box (for example Canright composite-field or a recomputed masked table) | Removes the unmasked internal wire; today's biggest weakness |
| R2 | On-chip mask generator (LFSR / Xorshift) replacing external `mask_in` and the fixed rotate-XOR refresh | Makes masking self-contained and actually random-looking |
| R3 | Switching-activity traces from simulation, then Welch's t-test (TVLA), target `abs(t) < 4.5` | The only way to back up a security claim |
| R4 | Re-synthesize and update [RESULTS](RESULTS.md) after R1 and R2 | Keeps the area and timing comparison honest |
| R5 | Final dissertation and viva material | Submission |

Suggested order: R1, then R2, then R4, then R3, then R5. TVLA should run on the *final* design, not on the current S-box.

## Future (requires hardware)

| ID | Item |
|----|------|
| F1 | Physical FPGA prototype (UART or AXI wrapper, bitstream, board measurements) |
| F2 | Real power or EM measurement |

Not planned until a development board is available.
