onerror {exit -code 1}
vlib work
vlog -work work demux2x1.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.demux2x1_vlg_vec_tst -voptargs="+acc"
vcd file -direction demux2x1.msim.vcd
vcd add -internal demux2x1_vlg_vec_tst/*
vcd add -internal demux2x1_vlg_vec_tst/i1/*
run -all
quit -f
