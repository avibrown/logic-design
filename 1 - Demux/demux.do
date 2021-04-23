quit -sim       
vcom demux.vhd -2008
vsim -t ns demux

add wave -divider Inputs:
add wave -color yellow x B A
add wave -divider Outputs:
add wave -color cyan D0 D1 D2 D3
run

force x    1 , 0 15  ns -r 30  ns
force B    0 , 1 100 ns -r 200 ns
force A    0 , 1 50  ns -r 100 ns
run        1000 ns


