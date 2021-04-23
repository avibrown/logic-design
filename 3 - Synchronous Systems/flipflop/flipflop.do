quit -sim
vcom flipflop.vhd -2008
vsim flipflop

---------------------------
-- dividers
---------------------------

add wave -divider Clock:
add wave -color green clk

add wave -divider Inputs:
add wave -color yellow J K

add wave -divider Reset:
add wave -color red rst

add wave -divider Outputs:
add wave -color cyan Q Q_hat
run


----------------------------
-- tests
----------------------------

-- > rst = 1

force rst 1
force clk 0, 1 50ps  -r 100ps

force J   0, 1 200ps -r 400ps
force K   0, 1 100ps -r 200ps
run 400ps


-- > rst = 0

force rst 0
force clk 0, 1 50ps  -r 100ps

force J   0, 1 200ps -r 400ps
force K   0, 1 100ps -r 200ps
run 400ps










