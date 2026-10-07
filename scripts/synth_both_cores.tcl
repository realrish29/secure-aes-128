# scripts/synth_both_cores.tcl
set report_dir [file normalize "./reports/synthesis"]
file mkdir $report_dir
set part "xc7a35tcsg324-1"

# -----------------------------------------------------------------------------
# 1. Synthesize Baseline AES-128 Core
# -----------------------------------------------------------------------------
puts "==> [1/2] Reading sources for Baseline Core..."
read_verilog [glob ./rtl/*.v]
read_xdc ./constraints/aes_timing.xdc

puts "==> Synthesizing Baseline Core (aes_128_core) on Artix-7..."
synth_design -top aes_128_core -part $part

puts "==> Generating Baseline Reports..."
report_utilization -file [file join $report_dir "utilization_synth_baseline.rpt"]
report_timing_summary -file [file join $report_dir "timing_synth_baseline.rpt"]

close_project

# -----------------------------------------------------------------------------
# 2. Synthesize First-Order Masked AES-128 Core
# -----------------------------------------------------------------------------
puts "==> [2/2] Reading sources for Masked Core..."
read_verilog [glob ./rtl/*.v]
read_xdc ./constraints/aes_timing.xdc

puts "==> Synthesizing Masked Core (aes_128_masked_core) on Artix-7..."
synth_design -top aes_128_masked_core -part $part

puts "==> Generating Masked Reports..."
report_utilization -file [file join $report_dir "utilization_synth_masked.rpt"]
report_timing_summary -file [file join $report_dir "timing_synth_masked.rpt"]

puts "==> ALL SYNTHESIS REPORTS SUCCESSFULLY GENERATED!"
close_project
