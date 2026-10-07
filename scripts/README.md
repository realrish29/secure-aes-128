# `scripts/` — Vivado Tcl automation

**Always run from the repository root.** The scripts use relative paths (`./rtl`, `./tb`, `./constraints`, `./reports/synthesis`).

```powershell
vivado -mode batch -source scripts/<script>.tcl
```

| Script | What it does | Output |
|--------|--------------|--------|
| `build_vivado_project.tcl` | Creates `vivado_project/` for `xc7a35tcsg324-1`, adds `rtl/` and `tb/` | `vivado_project/*.xpr` |
| `sim_baseline.tcl` | Behavioral simulation of the baseline testbench | simulator output |
| `run_simulation_and_synthesis.tcl` | Simulates both cores, then synthesizes both | `reports/synthesis/*.rpt` |
| `synth_both_cores.tcl` | Synthesis only, both cores | `reports/synthesis/*.rpt` |
| `export_netlists_and_dcp.tcl` | Synthesizes both cores and writes netlists and checkpoints | `reports/synthesis/*_netlist.v`, `vivado_project/*.dcp` |
| `run_ooc_implementation.tcl` | Place and route of the masked core without package pins (software-only timing check) | `reports/synthesis/post_route_*.rpt` |

## Typical order

1. `build_vivado_project.tcl`
2. `run_simulation_and_synthesis.tcl`
3. `export_netlists_and_dcp.tcl` (optional)
4. `run_ooc_implementation.tcl` (optional)

## Why the place-and-route script uses out-of-context mode

The cores expose very wide buses (hundreds of ports), far more than the chip has package pins, so normal implementation cannot assign pins. Out-of-context mode treats the core as an internal block, which is how a crypto engine would sit inside a larger design anyway. It needs no board.
