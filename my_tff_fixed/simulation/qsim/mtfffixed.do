onerror {exit -code 1}
vlib work
vlog -work work mtfffixed.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mtfffixed_vlg_vec_tst -voptargs="+acc"
vcd file -direction mtfffixed.msim.vcd
vcd add -internal mtfffixed_vlg_vec_tst/*
vcd add -internal mtfffixed_vlg_vec_tst/i1/*
run -all
quit -f
