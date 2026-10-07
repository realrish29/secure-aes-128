# Results

All numbers below are copied from the Vivado report files in [`reports/synthesis/`](../reports/synthesis/). Target: Artix-7 `xc7a35tcsg324-1`, Vivado 2025.2, clock constraint 10.000 ns (100 MHz).

## 1. Functional verification

| Vector | Baseline | Masked |
|--------|----------|--------|
| NIST FIPS 197 Appendix B | match | match |
| NIST FIPS 197 Appendix C.1 | match | match |

Vectors are listed in [CONTRACTS.md](../CONTRACTS.md).

## 2. Post-synthesis utilization and timing

| Metric | Baseline | Masked | Source |
|--------|---------:|-------:|--------|
| Slice LUTs | 1,350 (6.49%) | 1,924 (9.25%) | `utilization_synth_*.rpt` |
| Slice registers | 393 (0.94%) | 524 (1.26%) | `utilization_synth_*.rpt` |
| F7 / F8 muxes (masked) | | 64 / 32 | `utilization_synth_masked.rpt` |
| Block RAM tiles | 0 | 0 | `utilization_synth_*.rpt` |
| DSP slices | 0 | 0 | `utilization_synth_*.rpt` |
| WNS (setup slack) | +4.162 ns | +3.323 ns | `timing_synth_*.rpt` |
| WHS (hold slack) | +0.161 ns | +0.134 ns | `timing_synth_*.rpt` |

Masking overhead: LUTs +42.5%, registers +33.3%.

## 3. Software-only place-and-route timing (masked core)

Produced by `scripts/run_ooc_implementation.tcl`, which places and routes the core inside the FPGA fabric without assigning package pins. No board is involved.

| Metric | Value | Source |
|--------|------:|--------|
| Slice LUTs | 1,877 (9.02%) | `post_route_utilization_masked.rpt` |
| Slice registers | 527 (1.27%) | `post_route_utilization_masked.rpt` |
| WNS | +1.573 ns | `post_route_timing_masked.rpt` |
| WHS | +0.165 ns | `post_route_timing_masked.rpt` |

## 4. Estimated maximum frequency

Estimated as `1 / (10 ns - WNS)`. These are estimates from slack, not separate measurements.

| Case | Estimated Fmax |
|------|---------------:|
| Baseline, post-synthesis | about 171 MHz |
| Masked, post-synthesis | about 150 MHz |
| Masked, after place and route | about 119 MHz |

## 5. What these results do not show

- No power or switching-activity analysis has been run.
- No side-channel leakage test (TVLA) has been run, so there is **no measured security claim** yet.
- Nothing has been run on physical hardware.
