# build_vivado_project.tcl
set project_dir [file normalize "./vivado_project"]
set project_name "AES128_SCA_Resistance"

# Target Artix-7 FPGA part (standard in universities: xc7a35tcsg324-1)
set target_part "xc7a35tcsg324-1"

puts "==> Creating Vivado Project: $project_name in $project_dir"
create_project -force $project_name $project_dir -part $target_part

# Add RTL source files
puts "==> Adding RTL design sources"
add_files -fileset sources_1 [glob ./rtl/*.v]
update_compile_order -fileset sources_1

# Add Simulation testbench files
puts "==> Adding simulation sources"
add_files -fileset sim_1 [glob ./tb/*.v]
update_compile_order -fileset sim_1

# Set baseline testbench as simulation top
set_property top tb_aes_128_core [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

puts "==> Vivado project created successfully with Artix-7 ($target_part)!"
