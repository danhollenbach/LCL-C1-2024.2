onerror {quit -f}
vlib work
vlog -work work Exp83.vo
vlog -work work Exp83.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Exp83_vlg_vec_tst
vcd file -direction Exp83.msim.vcd
vcd add -internal Exp83_vlg_vec_tst/*
vcd add -internal Exp83_vlg_vec_tst/i1/*
add wave /*
run -all
