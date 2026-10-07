# `constraints/` — Timing constraints

| File | Content |
|------|---------|
| `aes_timing.xdc` | `create_clock -period 10.000 -name clk [get_ports clk]` (100 MHz) |

Only a clock constraint is defined. There are deliberately no pin assignments, because the project does not target a specific board.
