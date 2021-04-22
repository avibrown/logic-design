quit -sim
vcom flipflop.vhd -2008
vsim flipflop

add wave -divider Clock:
add wave -color green clk
add wave -divider Inputs:
add wave -color yellow J K rst 
add wave -divider Outputs:
add wave -color cyan Q Q_hat
run

-- test

force clk 0
force rst 1
force J 0
force K 0
run

force clk 1
force rst 1
force J 0
force K 1
run

force clk 0
force rst 1
force J 1
force K 0
run

force clk 1
force rst 1
force J 1
force K 1
run

force clk 0
force rst 0
force J 1
force K 1
run








