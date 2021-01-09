GAMEPLAY_SUBMENU:
%menu_header("GAMEPLAY", 11)

;===============================================================================
%toggle("Skip Triforce", !ram_skip_triforce_toggle)
%toggle("Sanc heart", !ram_nmg_sanctuary_heart)

;===============================================================================
%choice_here("Powder", !ram_nmg_powder, 3)
	%list_item("No")
	%list_item("Mushroom")
	%list_item("Powder")

;===============================================================================
%toggle("Disable beams", !disable_beams)

;===============================================================================
%toggle_func("Lit rooms", !ram_lit_rooms_toggle, this)

	ORA.w $001B
	BEQ ++

	LDA.b #$10
	STA.w $0099

++	RTL

;===============================================================================
%toggle("Fast walls", !ram_fast_moving_walls)
%toggle("Visible probes", !ram_probe_toggle)
%toggle("See bonk items", !ram_bonk_items_toggle)

;===============================================================================
%toggle_bit("Disable BG1", !disabled_layers, 0)
%toggle_bit("Disable BG2", !disabled_layers, 1)
%toggle("OoB mode", $037F)