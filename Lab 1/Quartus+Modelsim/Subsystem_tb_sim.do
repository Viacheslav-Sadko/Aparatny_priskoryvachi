onbreak resume
onerror resume
vsim -voptargs=+acc work.Subsystem_tb

add wave sim:/Subsystem_tb/u_Subsystem/clk
add wave sim:/Subsystem_tb/u_Subsystem/reset
add wave sim:/Subsystem_tb/u_Subsystem/clk_enable
add wave sim:/Subsystem_tb/u_Subsystem/i_W0
add wave sim:/Subsystem_tb/u_Subsystem/i_W1
add wave sim:/Subsystem_tb/u_Subsystem/i_w2
add wave sim:/Subsystem_tb/u_Subsystem/i_w3
add wave sim:/Subsystem_tb/u_Subsystem/i_X0
add wave sim:/Subsystem_tb/u_Subsystem/i_X1
add wave sim:/Subsystem_tb/u_Subsystem/i_X2
add wave sim:/Subsystem_tb/u_Subsystem/i_X3
add wave sim:/Subsystem_tb/u_Subsystem/ce_out
add wave sim:/Subsystem_tb/u_Subsystem/o_Y
add wave sim:/Subsystem_tb/o_Y_ref
run -all
