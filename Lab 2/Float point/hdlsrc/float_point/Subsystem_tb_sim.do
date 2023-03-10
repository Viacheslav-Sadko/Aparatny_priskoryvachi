onbreak resume
onerror resume
vsim -voptargs=+acc work.Subsystem_tb

add wave sim:/Subsystem_tb/u_Subsystem/clk
add wave sim:/Subsystem_tb/u_Subsystem/reset
add wave sim:/Subsystem_tb/u_Subsystem/clk_enable
add wave sim:/Subsystem_tb/u_Subsystem/i_VALID
add wave sim:/Subsystem_tb/u_Subsystem/i_COMPLEX_VALUE_re
add wave sim:/Subsystem_tb/u_Subsystem/i_COMPLEX_VALUE_im
add wave sim:/Subsystem_tb/u_Subsystem/ce_out
add wave sim:/Subsystem_tb/u_Subsystem/o_VALID
add wave sim:/Subsystem_tb/o_VALID_ref
add wave sim:/Subsystem_tb/u_Subsystem/o_MAGNITUDE
add wave sim:/Subsystem_tb/o_MAGNITUDE_ref
add wave sim:/Subsystem_tb/u_Subsystem/o_PHASE
add wave sim:/Subsystem_tb/o_PHASE_ref
run -all
