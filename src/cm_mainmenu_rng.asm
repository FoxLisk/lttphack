RNG_SUBMENU:
	%cm_submenu("RNG CONTROL", 13)

;===============================================================================
%cm_choice("Prize packs", SA1RAM.drop_rng, this)

%list_header(3)
	%list_item("Vanilla")
	%list_item("Always")
	%list_item("Never")

;===============================================================================
%cm_choice_prgtext("Frame rule", SA1RAM.framerule, $40, this)

	SEP #$20
	LDA.b SA1RAM.framerule
	BEQ ++

	DEC
	JML CMDRAW_HEX
++	JML 



cm_submenu_rng_control:
	dw cm_rng_framerule
	dw cm_rng_pokey
	dw cm_rng_agahnim
	dw cm_rng_helmasaur
	dw cm_rng_vitreous
	dw cm_rng_ganon_warp
	dw cm_rng_ganon_warp_location
	dw cm_rng_eyegore
	dw cm_rng_arrghus
	dw cm_rng_turtles
	dw cm_rng_lanmola
	dw cm_rng_conveyor
	dw !menu_end
	%cm_header("RNG CONTROL")

cm_rng_pokey:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.pokey_rng
	%list_item("Pokeys")
	%list_item("Random")
	%list_item("ul ul")
	%list_item("ur ul")
	%list_item("dr ul")
	%list_item("dl ul")
	%list_item("ul ur")
	%list_item("ur ur")
	%list_item("dr ur")
	%list_item("dl ur")
	%list_item("ul dr")
	%list_item("ur dr")
	%list_item("dr dr")
	%list_item("dl dr")
	%list_item("ul dl")
	%list_item("ur dl")
	%list_item("dr dl")
	%list_item("dl dl")
	db !list_end

cm_rng_agahnim:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.agahnim_rng
	%list_item("Agahnim")
	%list_item("Random")
	%list_item("Yellow")
	%list_item("Blue")
	db !list_end

cm_rng_helmasaur:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.helmasaur_rng
	%list_item("Helmasaur")
	%list_item("Random")
	%list_item("No fireball")
	%list_item("Fireball")
	db !list_end

cm_rng_ganon_warp:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.ganon_warp_rng
	%list_item("Ganon warps")
	%list_item("Random")
	%list_item("No warp")
	%list_item("Warp")
	db !list_end

cm_rng_ganon_warp_location:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.ganon_warp_location_rng
	%list_item("Ganon warp to")
	%list_item("Random")
	%list_item("Far left")
	%list_item("Bottom left")
	%list_item("Bottom right")
	%list_item("Far right")
	db !list_end

cm_rng_eyegore:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.eyegore_rng
	%list_item("Eyegore walk")
	%list_item("Random")
	%list_item("Short")
	%list_item("Medium")
	%list_item("Long")
	db !list_end

cm_rng_arrghus:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.arrghus_rng
	%list_item("Arrghus walk")
	%list_item("Random")
	%list_item("Shortest")
	%list_item("Short")
	%list_item("Medium")
	%list_item("Long")
	%list_item("Longest")
	db !list_end

cm_rng_turtles:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.turtles_rng
	%list_item("Turtles walk")
	%list_item("Random")
	%list_item("Shortest")
	%list_item("01")
	%list_item("02")
	%list_item("03")
	%list_item("04")
	%list_item("05")
	%list_item("06")
	%list_item("07")
	%list_item("08")
	%list_item("09")
	%list_item("0A")
	%list_item("0B")
	%list_item("0C")
	%list_item("0D")
	%list_item("0E")
	%list_item("0F")
	%list_item("10")
	%list_item("11")
	%list_item("12")
	%list_item("13")
	%list_item("14")
	%list_item("15")
	%list_item("16")
	%list_item("17")
	%list_item("18")
	%list_item("19")
	%list_item("1A")
	%list_item("1B")
	%list_item("1C")
	%list_item("1D")
	%list_item("1E")
	%list_item("Slowest")
	db !list_end

cm_rng_framerule:
	dw !CM_ACTION_CHOICE
	dl 
	%list_item("Frame rule")
	%list_item("Random")
	%list_item("00")
	%list_item("01")
	%list_item("02")
	%list_item("03")
	%list_item("04")
	%list_item("05")
	%list_item("06")
	%list_item("07")
	%list_item("08")
	%list_item("09")
	%list_item("0A")
	%list_item("0B")
	%list_item("0C")
	%list_item("0D")
	%list_item("0E")
	%list_item("0F")
	%list_item("10")
	%list_item("11")
	%list_item("12")
	%list_item("13")
	%list_item("14")
	%list_item("15")
	%list_item("16")
	%list_item("17")
	%list_item("18")
	%list_item("19")
	%list_item("1A")
	%list_item("1B")
	%list_item("1C")
	%list_item("1D")
	%list_item("1E")
	%list_item("1F")
	%list_item("20")
	%list_item("21")
	%list_item("22")
	%list_item("23")
	%list_item("24")
	%list_item("25")
	%list_item("26")
	%list_item("27")
	%list_item("28")
	%list_item("29")
	%list_item("2A")
	%list_item("2B")
	%list_item("2C")
	%list_item("2D")
	%list_item("2E")
	%list_item("2F")
	%list_item("30")
	%list_item("31")
	%list_item("32")
	%list_item("33")
	%list_item("34")
	%list_item("35")
	%list_item("36")
	%list_item("37")
	%list_item("38")
	%list_item("39")
	%list_item("3A")
	%list_item("3B")
	%list_item("3C")
	%list_item("3D")
	%list_item("3E")
	%list_item("3F")
	db !list_end

cm_rng_lanmola:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.lanmola_rng
	%list_item("Lanmola exit")
	%list_item("Random")
	%list_item("0,0")
	%list_item("0,1")
	%list_item("0,2")
	%list_item("0,3")
	%list_item("0,4")
	%list_item("0,5")
	%list_item("0,6")
	%list_item("0,7")
	%list_item("1,0")
	%list_item("1,1")
	%list_item("1,2")
	%list_item("1,3")
	%list_item("1,4")
	%list_item("1,5")
	%list_item("1,6")
	%list_item("1,7")
	%list_item("2,0")
	%list_item("2,1")
	%list_item("2,2")
	%list_item("2,3")
	%list_item("2,4")
	%list_item("2,5")
	%list_item("2,6")
	%list_item("2,7")
	%list_item("3,0")
	%list_item("3,1")
	%list_item("3,2")
	%list_item("3,3")
	%list_item("3,4")
	%list_item("3,5")
	%list_item("3,6")
	%list_item("3,7")
	%list_item("4,0")
	%list_item("4,1")
	%list_item("4,2")
	%list_item("4,3")
	%list_item("4,4")
	%list_item("4,5")
	%list_item("4,6")
	%list_item("4,7")
	%list_item("5,0")
	%list_item("5,1")
	%list_item("5,2")
	%list_item("5,3")
	%list_item("5,4")
	%list_item("5,5")
	%list_item("5,6")
	%list_item("5,7")
	%list_item("6,0")
	%list_item("6,1")
	%list_item("6,2")
	%list_item("6,3")
	%list_item("6,4")
	%list_item("6,5")
	%list_item("6,6")
	%list_item("6,7")
	%list_item("7,0")
	%list_item("7,1")
	%list_item("7,2")
	%list_item("7,3")
	%list_item("7,4")
	%list_item("7,5")
	%list_item("7,6")
	%list_item("7,7")
	db !list_end

cm_rng_conveyor:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.conveyor_rng
	%list_item("Conveyor belt")
	%list_item("Random")
	%list_item("Right")
	%list_item("Left")
	%list_item("Down")
	%list_item("Up")
	db !list_end



cm_rng_vitreous:
	dw !CM_ACTION_CHOICE
	dl SA1RAM.vitreous_rng
	%list_item("First Vitty")
	%list_item("Random")
	%list_item("Slot 5")
	%list_item("Slot 6")
	%list_item("Slot 7")
	%list_item("Slot 8")
	%list_item("Slot 9")
	%list_item("Slot A")
	%list_item("Slot B")
	%list_item("Slot C")
	%list_item("Slot D")
	db !list_end

; }}}