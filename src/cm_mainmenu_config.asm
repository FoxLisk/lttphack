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
%cm_choice("Preset cat", !ram_preset_category, this)

%list_header(7)
	%list_item("NMG")
	%list_item("Hundo")
	%list_item("Low")
	%list_item("Low Legacy")
	%list_item("AD 2020")
	%list_item("AD 2014")
	%list_item("Any RMG")

;===============================================================================
%cm_choice("HUD font", !ram_hud_font, this)

%list_header(24)
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
