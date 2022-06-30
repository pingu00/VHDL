transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work4/data_processor1.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work4/async_ram.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work4/simple_alu.vhd}

