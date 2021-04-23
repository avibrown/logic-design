quit -sim
vcom counter.vhd -2008
vsim counter

#--------------------------
# dividers
#--------------------------

add wave -divider clock:
add wave -color green clk

add wave -divider reset:
add wave -color red rst

add wave -divider outputs:
add wave -color cyan Q_out

add wave -divider end-counter:
add wave -color purple ec

run


#---------------------------
# tests
#---------------------------

force clk 0, 1 10ps -r 20ps
force rst 0, 1 10ps -r 6000ps

run 8000ps










