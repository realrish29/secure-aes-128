# scripts/run_simulation_and_synthesis.tcl
set project_path [file normalize "./vivado_project/AES128_SCA_Resistance.xpr"]
set report_dir [file normalize "./docs/vivado_reports"]
file mkdir $report_dir

puts "==> Opening Project: $project_path"
open_project $project_path

# -----------------------------------------------------------------------------
# 1. Behavioral Simulation: Baseline Core
# -----------------------------------------------------------------------------
puts "==> Configuring Simulation for Baseline Core (tb_aes_128_core)"
set_property top tb_aes_128_core [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

puts "==> Launching Behavioral Simulation for Baseline Core..."
launch_simulation -simset [get_filesets sim_1] -mode behavioral
run 500ns

# Log simulation output
set sim_log_baseline [file join $report_dir "simulation_baseline_log.txt"]
puts "==> Baseline simulation complete. Output stored in project simulation run."
close_sim

# -----------------------------------------------------------------------------
# 2. Behavioral Simulation: Masked Core
# -----------------------------------------------------------------------------
puts "==> Configuring Simulation for Masked Core (tb_aes_128_masked_core)"
set_property top tb_aes_128_masked_core [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

puts "==> Launching Behavioral Simulation for Masked Core..."
launch_simulation -simset [get_filesets sim_1] -mode behavioral
run 500ns
close_sim

# -----------------------------------------------------------------------------
# 3. Logic Synthesis: Baseline AES-128 Core
# -----------------------------------------------------------------------------
puts "==> Setting Top Module for Synthesis to: aes_128_core"
set_property top aes_128_core [get_filesets sources_1]
update_compile_order -fileset sources_1

puts "==> Running Logic Synthesis for Artix-7 (xc7a35tcsg324-1)..."
synth_design -top aes_128_core -part xc7a35tcsg324-1

puts "==> Writing Utilization & Timing Reports..."
report_utilization -file [file join $report_dir "utilization_synth_baseline.rpt"] -pb [file join $report_dir "utilization_synth_baseline.pb"]
report_timing_summary -file [file join $report_dir "timing_synth_baseline.rpt"]

# -----------------------------------------------------------------------------
# 4. Logic Synthesis: First-Order Masked AES-128 Core
# -----------------------------------------------------------------------------
puts "==> Setting Top Module for Synthesis to: aes_128_masked_core"
synth_design -top aes_128_masked_core -part xc7a35tcsg324-1

report_utilization -file [file join $report_dir "utilization_synth_masked.rpt"] -pb [file join $report_dir "utilization_synth_masked.pb"]
report_timing_summary -file [file join $report_dir "timing_synth_masked.rpt"]

puts "==> ALL SIMULATIONS AND SYNTHESIS REPORTS COMPLETED SUCCESSFULLY!"
close_project
