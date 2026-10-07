# scripts/sim_baseline.tcl
set project_path [file normalize "./vivado_project/AES128_SCA_Resistance.xpr"]
open_project $project_path
set_property top tb_aes_128_core [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1
launch_simulation -simset [get_filesets sim_1] -mode behavioral
run 500ns
close_sim
close_project
