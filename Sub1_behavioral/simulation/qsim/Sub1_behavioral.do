onerror {exit -code 1}
vlib work
vlog -work work Sub1_behavioral.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sub1_behavioral_vlg_vec_tst -voptargs="+acc"
vcd file -direction Sub1_behavioral.msim.vcd
vcd add -internal Sub1_behavioral_vlg_vec_tst/*
vcd add -internal Sub1_behavioral_vlg_vec_tst/i1/*
run -all
quit -f
