quit -sim
vcom alu.vhd -2008
vsim alu

add wave -divider Inputs:
add wave -color yellow a b

add wave -divider Op:
add wave -color red op

add wave -divider Outputs:
add wave -color cyan q_out

add wave -divider Flags:
add wave -color green c z
run

-- addition tests

force a 2
force b 3
force op 2#00
run

force a 10
force b 0
force op 2#00
run

force a 15
force b 15
force op 2#00
run

-- subtraction tests

force a 10
force b 5
force op 2#01
run

force a 10
force b 10
force op 2#01
run

force a 10
force b 15
force op 2#01
run

-- multiplication tests

force a 1
force b 5
force op 2#10
run

force a 2
force b 7
force op 2#10
run

force a 2
force b 8
force op 2#10
run

-- division tests

force a 5
force b 5
force op 2#11
run

force a 8
force b 3
force op 2#11
run

force a 15
force b 0
force op 2#11
run





