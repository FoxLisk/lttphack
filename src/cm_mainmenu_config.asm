CONFIG_SUBMENU:
%cm_header("CONFIGURATION", 5)

;===============================================================================
%cm_toggle("Rerandomize", !ram_rerandomize_toggle)

;===============================================================================
%cm_toggle_func("Music", !ram_feature_music, this)

	LDA.w !ram_feature_music
	BNE ++
	JML mute_music

++	JML unmute_music

;===============================================================================
%cm_toggle("Death reload", !ram_autoload_preset)

;===============================================================================
%cm_choice_here("Preset cat", !ram_preset_category, 7)
	%list_item("NMG")
	%list_item("Hundo")
	%list_item("Low")
	%list_item("Low Legacy")
	%list_item("AD 2020")
	%list_item("AD 2014")
	%list_item("Any RMG")

;===============================================================================
%cm_choice_here("HUD font", !ram_hud_font, 24)
	%list_item("Classic")
	%list_item("Normal")
	%list_item("Italic")
	%list_item("Mario World")
	%list_item("DKC")
	%list_item("ZAMN")
	%list_item("SMT")
	%list_item("Earthbound")

	%list_item("FF6")
	%list_item("Lufia 2")
	%list_item("Goonies 2")
	%list_item("Emerald")
	%list_item("Klonoa")
	%list_item("TI-83")
	%list_item("Pac-Man")
	%list_item("DOOM")

	%list_item("Undertale")
	%list_item("Planet X-3")
	%list_item("Skyroads")
	%list_item("Yoshi's")
	%list_item("S. Metroid")
	%list_item("Tazmania")




;===============================================================================
!color_count = 20
!color_id = -1

#COLORS_HOORAY:
	fillword $0000 : fill !color_count*2

macro fixed_color(val, name)
	%list_item("<name>")
	pushpc
		org COLORS_HOORAY+!color_id*2 : dw color(<val>)
	pullpc
	!color_count #= !color_count+1
endmacro

%cm_header("COLOR CONFIG", 7)
%cm_choice_func("Menu BG", !ram_hud_bg, !color_count, set_color, color_list)

%cm_choice_func("Header FG", !ram_hud_header_fg, !color_count, set_color, color_list)
%cm_choice_func("Header HL", !ram_hud_header_hl, !color_count, set_color, color_list)
%cm_choice_func("Header BG", !ram_hud_header_bg, !color_count, set_color, color_list)

%cm_choice_func("Selection FG", !ram_hud_sel_fg, !color_count, set_color, color_list)
%cm_choice_func("Selection BG", !ram_hud_sel_bg, !color_count, set_color, color_list)

%cm_choice_func("Inactive FG", !ram_hud_dis_fg, !color_count, set_color, color_list)
;%cm_choice_func("Inactive BG", !ram_hud_dis_bg, !color_count, set_color, color_list)



set_color:
	BIT.b SA1IRAM.cm_ax
	BVC .dontreset

	LDA.b SA1IRAM.cm_cursor
	TAX
	ASL
	TAY
	LDA.l .defaults, X
	STA.w !ram_hud_bg, Y

.dontreset
	RTL

.defaults
	db  0 ; HUD BG: black

	db  1 ; Header FG: white
	db 10 ; Header HL: lui
	db  0 ; Header BG: black

	db  8 ; Selection FG: me
	db  9 ; Selection BG: mine

	db  3 ; Inactcive FG: gray

color_list:
%list_header(!color_count)
	%fixed_color($000000, "Black")
	%fixed_color($F8F8F8, "White")
	%fixed_color($C06000, "Brown")
	%fixed_color($A8A8A8, "Gray")

	%fixed_color($C00000, "Red")
	%fixed_color($E0A800, "Yellow")
	%fixed_color($20C028, "Green")
	%fixed_color($4870D0, "Blue")

	%fixed_color($C8C8F8, "Periwinkle")
	%fixed_color($000090, "Dark Blue")
	%fixed_color($06A969, "Lui green")
	%fixed_color($20A8F8, "Glan blue") ; fantasy

	%fixed_color($F8B000, "Mike orange")
	%fixed_color($F858A8, "Pink")
	%fixed_color($605800, "Garbage")
	%fixed_color($8090A0, "Blilver")

	%fixed_color($000000, "Black")
	%fixed_color($000000, "Black")
	%fixed_color($000000, "Black")
	%fixed_color($000000, "Black")