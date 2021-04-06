transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/lcd_controller_v2_1.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/contador_relogio.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/divisor.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/menu.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/divisor2s.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/lcd_example.vhd}
vcom -93 -work work {D:/Estudo/Eletrônica Digital/P2/comparadorpre.vhd}

