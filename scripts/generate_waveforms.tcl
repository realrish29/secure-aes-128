open_project vivado_project/AES128_SCA_Resistance.xpr

# 1. Behavioral Simulation
launch_simulation -mode behavioral
run 2000ns
write_waveform_image -force -format png reports/behavioral_sim.png
close_sim

# 2. Post-Synthesis Functional Simulation
launch_simulation -mode post-synthesis -type functional
run 2000ns
write_waveform_image -force -format png reports/post_synth_func_sim.png
close_sim

# 3. Post-Synthesis Timing Simulation
launch_simulation -mode post-synthesis -type timing
run 2000ns
write_waveform_image -force -format png reports/post_synth_timing_sim.png
close_sim

close_project
exit
