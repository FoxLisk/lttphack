HUDEXTRAS_SUBMENU:
	%menu_header("HUD EXTRAS", 13)

;===============================================================================
%choice_here("Health display", !ram_heart_display, 2)
	%list_item("Numerical")
	%list_item("Vanilla")

;===============================================================================
%choice_here("Input display", !ram_input_display, 4)
	%list_item("Off")
	%list_item("Graphical")
	%list_item("Classic")
	%list_item("Classic Gray")

;===============================================================================
%toggle("Room time", !ram_counters_real)

;===============================================================================
%toggle("Lag counter", !ram_counters_lag)

;===============================================================================
%toggle("Heart lag", !ram_heartlag_spinner)

;===============================================================================
%toggle("Idle frames", !ram_counters_idle)

;===============================================================================
%toggle("Segment time", !ram_counters_segment)

;===============================================================================
%choice_here("Coordinates", !ram_xy_toggle, 3)
	%list_item("Off")
	%list_item("3 digits")
	%list_item("4 digits")

;===============================================================================
%toggle("QW indicator", !ram_qw_toggle)

;===============================================================================
%toggle("Lanmola cycs", !ram_toggle_lanmola_cycles)

;===============================================================================
%choice_here("RAM watch", !ram_extra_ram_watch, 5)
	%list_item("Off")
	%list_item("Subpixels")
	%list_item("Spooky altit")
	%list_item("Arc variable")
	%list_item("Icebreaker")

;===============================================================================
%choice_func_here("Super Watch", !ram_superwatch, 3, SuperWatchToggleFunc)
	%list_item("Off")
	%list_item("Ancillae")
	%list_item("UW Glitches")

;===============================================================================
%toggle_func("Enemy HP", !ram_enemy_hp_toggle, this)
.aaaaa
	SEP #$30

	LDA.b #$02
	LDX.w !ram_enemy_hp_toggle
	BEQ ..unset

..set
	TSB.b !ram_extra_sa1_required
	BRA ..done

..unset
	TRB.b !ram_extra_sa1_required

..done
	RTL

;===============================================================================
; %toggle_jsr("Lagometer", !ram_lagometer_toggle)

#SuperWatchToggleFunc:

	JSL ClearSWBuffer

	SEP #$20
	LDA.w !ram_superwatch
	ASL
	TAX

	LSR.w !ram_extra_sa1_required ; clear bottom bit for superwatch
	CMP.b #$01
	ROL.w !ram_extra_sa1_required ; bring carry in for flag

	JMP (.togglesss, X)

.togglesss
	dw .off
	dw .ancillae
	dw .doorwatch

.ancillae
.off
	RTL

.doorwatch
	; Use HDMA channel 5
	LDA.b #%00000010 : STA $4350 ; direct, 1 address, 2 writes
	LDA.b #$11 : STA $4351 ; BG3 h scroll
	LDA.b #..doorwatchhdma>>16 : STA $4354 ; bank of table

	REP #$20
	LDA.w #..doorwatchhdma : STA $4352 ; address of table

	RTL

..doorwatchhdma
	db 63 : dw 0
	db 32 : dw 256
	db 1 : dw 0
	db 0
