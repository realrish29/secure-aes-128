# scripts/run_ooc_implementation.tcl
# Runs full Vivado Implementation (opt_design, place_design, route_design)
# in Out-Of-Context (OOC) mode.
# This prevents Vivado from trying to wire all 517 parallel IP core bus bits
# to external package pins, allowing complete routing and timing closure.

set report_dir [file normalize "./reports/synthesis"]
set part "xc7a35tcsg324-1"

puts "==> [1/3] Reading RTL Sources and Timing Constraints..."
read_verilog [glob ./rtl/*.v]
read_xdc ./constraints/aes_timing.xdc

puts "==> [2/3] Synthesizing aes_128_masked_core in Out-Of-Context (OOC) mode..."
synth_design -top aes_128_masked_core -part $part -mode out_of_context

puts "==> [3/3] Running Full Implementation: opt_design -> place_design -> route_design..."
opt_design
place_design
route_design

puts "==> Writing Post-Route Timing and Utilization Reports..."
report_utilization -file [file join $report_dir "post_route_utilization_masked.rpt"]
report_timing_summary -file [file join $report_dir "post_route_timing_masked.rpt"]

puts "==> OUT-OF-CONTEXT IMPLEMENTATION COMPLETED WITH 0 ERRORS!"
close_project
