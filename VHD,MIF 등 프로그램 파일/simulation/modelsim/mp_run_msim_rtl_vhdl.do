transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/mp.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/cu.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/dp.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/reg.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/mux2.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/increment.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/decrement.vhd}

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/mp_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  mp_tb

add wave *
view structure
view signals
run -all
