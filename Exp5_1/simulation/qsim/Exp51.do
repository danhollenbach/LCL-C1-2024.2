onerror {exit -code 1}
vlib work
vlog -work work Exp51.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Exp51_vlg_vec_tst -voptargs="+acc"
vcd file -direction Exp51.msim.vcd
vcd add -internal Exp51_vlg_vec_tst/*
vcd add -internal Exp51_vlg_vec_tst/i1/*
run -all
quit -f
