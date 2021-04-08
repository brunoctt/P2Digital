onerror {exit -code 1}
vlib work
vcom -work work Projeto2.vho
vcom -work work Waveform1.vwf.vht
vsim  -c -t 1ps -sdfmax testecontdisp_vhd_vec_tst/i1=Projeto2_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.testecontdisp_vhd_vec_tst
vcd file -direction Projeto2.msim.vcd
vcd add -internal testecontdisp_vhd_vec_tst/*
vcd add -internal testecontdisp_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f




