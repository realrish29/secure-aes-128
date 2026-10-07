# scripts/export_netlists_and_dcp.tcl
set report_dir [file normalize "./reports/synthesis"]
set proj_dir [file normalize "./vivado_project"]
set part "xc7a35tcsg324-1"

# 1. Baseline Core Netlist & Checkpoint
puts "==> Synthesizing and Exporting Baseline Netlist..."
read_verilog [glob ./rtl/*.v]
read_xdc ./constraints/aes_timing.xdc
synth_design -top aes_128_core -part $part

write_verilog -force -mode design [file join $report_dir "aes_128_core_synthesized_netlist.v"]
write_checkpoint -force [file join $proj_dir "aes_128_core_synth.dcp"]
close_project

# 2. Masked Core Netlist & Checkpoint
puts "==> Synthesizing and Exporting Masked Netlist..."
read_verilog [glob ./rtl/*.v]
read_xdc ./constraints/aes_timing.xdc
synth_design -top aes_128_masked_core -part $part

write_verilog -force -mode design [file join $report_dir "aes_128_masked_core_synthesized_netlist.v"]
write_checkpoint -force [file join $proj_dir "aes_128_masked_core_synth.dcp"]
close_project

puts "==> ALL NETLISTS AND DESIGN CHECKPOINTS EXPORTED SUCCESSFULLY!"
