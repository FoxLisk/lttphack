!SELECTED = $3400
!UNSELECTED = $3800
!HEADER = $3060

cm_preset_data_banks:
CM_Main:
	PHB : PHK : PLB

	PHD

	PEA.w $3000
	PLD

	JSL SNES_ENABLE_CUSTOM_NMI

	JSR CM_PrepPPU
	JSR CM_CacheWRAM

	REP #$20
	STZ.w SA1IRAM.CONTROLLER_1
	STZ.w SA1IRAM.CONTROLLER_1_FILTERED
	LDA.w #15
	STA.w SA1RAM.cm_input_timer

	LDA.b SA1IRAM.cm_submodule
	CMP.w #2
	BEQ .fine

	; assume something went wrong if it's not 2
	STZ.b SA1IRAM.cm_submodule

.fine
	SEP #$30

	LDA.b #$81
	STA.w $4200

	STZ.w $0012

--	LDA.w $0012
	BEQ --

	LDX.b SA1IRAM.cm_submodule

	JSR (.submodules, X)
	BRA .fine

.submodules
	dw CM_Init
	dw CM_DrawMenu
	dw CM_Active
	dw CM_Return
	dw CM_ShortcutConfig

CM_DrawMenu:
	LDX.b #$04
	STX.b SA1IRAM.cm_submodule
	JMP DrawCurrentMenu

CM_Return:
	REP #$20
	PLA ; remove the return of the JSR

	LDA.w #2
	STA.b SA1IRAM.cm_submodule

	SEP #$20
	PLD
	PLB

	
	STZ.w $4200
	LDA.b #$80
	STA.w $2100

	JSL load_default_tileset

	SEP #$30
	LDA.w SA1RAM.preset_type
	BEQ .no_preset

	;JSL preset_load_next_frame
	BRA ++

.no_preset
	LDA.b #$15 : STA.w $012E

++	INC.b $12
	INC.b $15 ; trigger a CGRAM update
	JSL SNES_DISABLE_CUSTOM_NMI

	LDA.b #$81 : STA.w $4200
	RTL

CM_ShortcutConfig:
	RTS

CM_PrepPPU:
	SEP #$30

	LDA.b #$80 : STA.w $2100
	STZ.w $4200

	; transfer menu tileset
	REP #$10
	; word-access, incr by 1
	LDA #$80 : STA $2115

	LDX #$7000 : STX $2116 ; VRAM address (E000 in vram)
	LDX #cm_hud_table : STX $4302 ; Source offset
	LDA #cm_hud_table>>16 : STA $4304 ; Source bank
	LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
	LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
	LDA #$18 : STA $4301 ; destination (VRAM write)
	LDA #$01 : STA $420B ; initiate DMA (channel 1)
	RTS
	; save temp variables that the menu uses

CM_CacheWRAM:
	SEP #$30

	; Crystal Switch state
	LDA.l $7EC172 : STA.w SA1RAM.cm_old_crystal_switch

	; Bow
	LDA.l !ram_item_bow : BEQ ++
	CMP #$03
	LDA.b #$01
	ADC.b #$00
++	STA.w SA1RAM.list_item_bow

	; Bottle
	LDA.l !ram_item_bottle : BEQ ++
	LDA.b #$01
++	STA.w SA1RAM.list_item_bottle

	; Mirror
	LDA.l !ram_item_mirror : LSR : STA.w SA1RAM.list_item_mirror

	; MaxHP
	LDA.l !ram_equipment_maxhp
	LSR #3 : DEC #3
	STA.w SA1RAM.cm_equipment_maxhp

	LDA.l $7EC172 : AND #$01 : STA.w SA1RAM.cm_crystal_switch

	RTS

CM_Init:
	REP #$20
	STZ.w SA1RAM.CM_SubMenuIndex

	LDA.w #cm_mainmenu<<8
	STA.b SA1IRAM.cm_cursor+0

	LDA.w #cm_mainmenu>>8
	STA.b SA1IRAM.cm_cursor+2

	JSR CM_PushMenuToStack

	; blank the whole menu
	REP #$20
	SEP #$10
	LDX.b #$00

	; value of a transparent tile
	LDA #$207F

.loop
	STA.w SA1RAM.MENU+$0000, X : STA.w SA1RAM.MENU+$0080, X
	STA.w SA1RAM.MENU+$0100, X : STA.w SA1RAM.MENU+$0180, X
	STA.w SA1RAM.MENU+$0200, X : STA.w SA1RAM.MENU+$0280, X
	STA.w SA1RAM.MENU+$0300, X : STA.w SA1RAM.MENU+$0380, X
	STA.w SA1RAM.MENU+$0400, X : STA.w SA1RAM.MENU+$0480, X
	STA.w SA1RAM.MENU+$0500, X : STA.w SA1RAM.MENU+$0580, X
	STA.w SA1RAM.MENU+$0600, X : STA.w SA1RAM.MENU+$0680, X
	STA.w SA1RAM.MENU+$0700, X : STA.w SA1RAM.MENU+$0780, X

	INX
	INX
	BPL .loop

	SEP #$30

	LDA.b #$14 : STA.w $012E

	LDA.b #$02 : STA.b SA1IRAM.cm_submodule
	STZ.w SA1RAM.cm_input_timer

	RTS

;===============================================================================
; Menu sounds; here for standardization, even though they're simple routines
;===============================================================================
CM_MenuSFX:
.beep
	PEA.w $0C00
	BRA .continue

.toggle
	PEA.w $1D00
	BRA .continue

.switch
	PEA.w $2500
	BRA .continue

.submenu
	PEA.w $2400
	BRA .continue

.error
	PEA.w $003C
	BRA .continue

.continue
	PHP
	REP #$20
	PHA ; save our A

	LDA 3,S ; get our PEA
	STA.l $00012E

	PLA ; recover A
	STA 1,S ; delete the PEA we did

	PLA ; recover that same A
	PLP
	RTS

CM_BackToTipTop:
	JSR EmptyCurrentMenu

	SEP #$20 ; bring us back to index 4 so that it will be before topmost
	LDA.b #$4
	STA.b SA1RAM.CM_SubMenuIndex

	JSR CM_GetTopMostFromStack

	STZ.b SA1IRAM.cm_cursor
	JMP DrawCurrentMenu

CM_ExitTime:
	LDA.b #$06
	STA.b SA1IRAM.cm_submodule
	RTS

CM_Active:
	SEP #$30
	LDY.b SA1IRAM.cm_cursor

	JSR CM_getcontroller
	BNE .actionable_action
	BCS CM_GoBack

	BIT.b SA1IRAM.cm_updown
	BMI .pressed_up
	BVS .pressed_down

	; start is lowest priority
	LDA.b SA1IRAM.CopyOf_F4
	BIT.b #$10
	BNE CM_ExitTime
	BIT.b #$20
	BNE CM_BackToTipTop
	RTS

.pressed_up

	DEC.b SA1IRAM.cm_cursor
	BRA CM_AdjustForWrap

.pressed_down
	INC.b SA1IRAM.cm_cursor
	BRA CM_AdjustForWrap

.actionable_action
	LDY.b #1 ; for when the routine uses it
	LDA.b [SA1IRAM.cm_current_selection]
	ASL
	TAX

	JSR (ActionDoRoutines, X)

	SEP #$30
	LDY.b SA1IRAM.cm_cursor
	JSR DrawCurrentRow_ShiftY
	JSL NMI_RequestCurrentRowUpdateUnless
	RTS

CM_AdjustForWrap:
	PHY

	LDA.b SA1IRAM.cm_cursor
	BMI .find_max

	INC
	ASL
	TAY

	; just check if we hit the end of the headers
	REP #$20
	LDA.b [SA1IRAM.cm_current_menu], Y
	SEP #$20
	BNE .not_max
	BRA .reset_too_far ; oops!

#CM_DontGoBack:
	STZ.b SA1IRAM.cm_cursor
	CPY.b #$00 ; are we at the top of the menu
	BNE CM_ReDrawCursorPosition
	RTS ; just leave if we're already at the top too

#CM_GoBack:
	LDX.w SA1RAM.CM_SubMenuIndex
	BEQ CM_DontGoBack

	JSR EmptyCurrentMenu
	JSR CM_PullMenuFromStack
	JMP DrawCurrentMenu

.find_max
	LDY.b #0 ; increment first, to skip header and condense loop

	REP #$20

.next_check
	INY
	INY
	LDA.b [SA1IRAM.cm_current_menu], Y
	BNE .next_check

	SEP #$20
	TYA
	LSR
	DEC
	DEC

.reset_too_far
	STA.b SA1IRAM.cm_cursor

.not_max
	PLY

CM_ReDrawCursorPosition:
	PHY
	JSR DrawCurrentRow_ShiftY

	SEP #$10
	LDY.b SA1IRAM.cm_cursor
	PHY

	JSR DrawCurrentRow_ShiftY
	JSR CM_UpdateCurrentSelection

	PLY
	PLX
	JSL NMI_Request2RowsUpdate

	RTS

CM_UpdateCurrentSelection:
	REP #$20
	SEP #$10
	LDA.b SA1IRAM.cm_cursor
	INC
	ASL
	TAY

	LDA.b [SA1IRAM.cm_current_menu], Y
	STA.b SA1IRAM.cm_current_selection+0

	LDY.b SA1IRAM.cm_current_menu+2
	STY.b SA1IRAM.cm_current_selection+2
	RTS



;===============================================================================
; Puts presses into the 6th and 7th bits for easy testing
; Carry = B
; Zero  = No actions
;===============================================================================
CM_getcontroller:
	REP #$20
	STZ.b SA1IRAM.cm_leftright
	STZ.b SA1IRAM.cm_ax

	LDA.b SA1IRAM.CONTROLLER_1

	CMP.w SA1RAM.cm_last_input
	STA.w SA1RAM.cm_last_input

	BEQ .same_as_last_frame

	PHA
	LDA.w #15
	STA.w SA1RAM.cm_input_timer
	PLA

	CMP.b SA1IRAM.CONTROLLER_1_FILTERED
	SEP #$20
	BNE .no_presses

.handle_all_new
	JSR .repeatables ; get udlrLR

	; get A and X, but only new presses
	LDA.b SA1IRAM.CopyOf_F6
	ASL
	ROL
	ROR.b SA1IRAM.cm_ax
	ROR
	ROR.b SA1IRAM.cm_ax

	; get new B presses
	LDA.b SA1IRAM.CopyOf_F4
	ASL

	; now see if anything actionable was pressed
	LDA.b SA1IRAM.cm_leftright
	ORA.b SA1IRAM.cm_ax
	ORA.b SA1IRAM.cm_shoulder
	AND.b #$C0

	RTS

.same_as_last_frame
	CMP.w #$0001
	SEP #$22 ; set zero flag
	BCS .holding_buttons
	RTS

.holding_buttons
	LDA.w SA1RAM.cm_input_timer
	BEQ .continue

	DEC
	STA.w SA1RAM.cm_input_timer
	BRA .no_presses

.continue
	LDA.b #4
	STA.w SA1RAM.cm_input_timer

.repeatables
	; get left and right
	LDA.b SA1IRAM.CopyOf_F0
	LSR
	ROR.b SA1IRAM.cm_leftright
	LSR
	ROR.b SA1IRAM.cm_leftright

	; get up and down
	LSR
	ROR.b SA1IRAM.cm_updown
	LSR
	ROR.b SA1IRAM.cm_updown

	; get l and r, but only new presses
	ASL
	ROR.b SA1IRAM.cm_shoulder
	ASL
	ROR.b SA1IRAM.cm_shoulder

	; get actionable presses
.no_presses
	LDA.b SA1IRAM.cm_leftright
	ORA.b SA1IRAM.cm_shoulder
	AND.b #$C0

	CLC ; no B press
	RTS




;===============================================================================
CM_PushMenuToStack:
	PHX
	PHY
	PHP
	REP #$20
	SEP #$10

	LDX.w SA1RAM.CM_SubMenuIndex

	LDA.b SA1IRAM.cm_cursor+0
	STA.w SA1RAM.CM_SubMenuStack, X

	INX
	INX
	LDA.b SA1IRAM.cm_cursor+2
	STA.w SA1RAM.CM_SubMenuStack, X

	INX
	INX
	STX.w SA1RAM.CM_SubMenuIndex

	JSR CM_UpdateCurrentSelection

	PLP
	PLY
	PLX
	RTS

; does so without changing stack
CM_GetTopMostFromStack:
	PHX
	PHY
	PHP

	SEP #$10
	LDX.w SA1RAM.CM_SubMenuIndex
	DEX
	DEX
	DEX
	DEX

.do
	REP #$20
	LDA.w SA1RAM.CM_SubMenuStack+0, X
	STA.b SA1IRAM.cm_cursor+0

	LDA.w SA1RAM.CM_SubMenuStack+2, X
	STA.b SA1IRAM.cm_cursor+2

	JSR CM_UpdateCurrentSelection

	PLP
	PLY
	PLX
	RTS

; carry = successful pull
#CM_PullMenuFromStack:
	PHX
	PHY

	SEC ; set carry now, so we can just jump on success
	PHP
	SEP #$10

	LDX.w SA1RAM.CM_SubMenuIndex
	BEQ .cannot

	DEX
	DEX
	DEX
	DEX
	STX.w SA1RAM.CM_SubMenuIndex

	BRA .do

.cannot
	PLP
	PLY
	PLX
	CLC
	RTS

EmptyCurrentMenu:
	REP #$30

	LDY.w #0

	; clean every row listed
.nextclean
	LDA.b [SA1IRAM.cm_current_menu], Y
	BPL .doneclean ; if we hit a 0, we're done

	JSR EmptyCurrentRow
	INY
	INY
	BRA .nextclean

.donedraw
.doneclean
	RTS

#DrawCurrentMenu:
	REP #$30
	LDY.w #0

.nextdraw
	LDA.b [SA1IRAM.cm_current_menu], Y
	BPL .donedraw

	JSR DrawCurrentRow
	INY
	INY
	BRA .nextdraw


EmptyCurrentRow:
	TYA
	LSR
	CLC
	ASL #6
	TAX

	LDA.w #$0000
	STA.b SA1IRAM.cm_draw_color
	BRA .next_clean

.from_here_to_end
	REP #$20

.next_clean
	LDA.w #$207F
	ORA.b SA1IRAM.cm_draw_color
	STA.w SA1RAM.MENU, X
	INX
	INX
	TXA
	AND.w #$003F
	BNE .next_clean

	RTS










; in this case, Y holds the cursor index, not the message index
DrawCurrentRow_ShiftY:
	TYA
	INC
	ASL
	TAY

; Y = index into thing where 0 = header
DrawCurrentRow:
	REP #$30
	PHY ; save this

	TYA
	LSR

	CLC
	ASL #6
	ADC.w #64+2 ; down 1 row + right 1

	CPY.w #0
	BEQ .headersstt

	ADC.w #63 ; down 1 more row if not a header, includes carry

.headersstt
	TAX ; start of row in the menu

	; put location of our row's text into DP
	LDA.b SA1IRAM.cm_current_menu+1
	STA.b SA1IRAM.cm_current_draw+1

	LDA.b [SA1IRAM.cm_current_menu], Y
	STA.b SA1IRAM.cm_current_draw+0

	TYA ; should it be gray or yellow?
	LSR ; does it match our selection?
	DEC

	BMI .header

	SEP #$20
	CMP.b SA1IRAM.cm_cursor
	REP #$20
	BNE .noselect

.select
	LDA.w #!SELECTED
	BRA .setcol

.header
	LDA.w #!HEADER
	BRA .setcol

.noselect
	LDA.w #!UNSELECTED

.setcol
	STA.b SA1IRAM.cm_draw_color

	TYA
	BEQ .isheader

	LDA.b [SA1IRAM.cm_current_draw] ; what routine type is it?
	AND.w #$00FF

.isheader
	PHX
	TAX

	ASL
	STA.b SA1IRAM.cm_draw_type_offset ; remember the type for drawing

	LDA.w ActionLengths, X ; this is how many bytes the header is for the item
	AND.w #$00FF
	TAY ; new location of data for name

	LDA.w ActionIcons, X ; get the icon, obviously
	AND.w #$00FF
	ORA.b SA1IRAM.cm_draw_color

	PLX
	STA.w SA1RAM.MENU, X ; save the icon to the menu

	LDA.w #14 ; for determining the filler
	STA.b SA1IRAM.cm_draw_filler
	INX
	INX

	; write each letter of the name
.next_letter
	LDA.b [SA1IRAM.cm_current_draw], Y
	AND.w #$00FF
	CMP.w #$00FF
	BEQ .done_row_name

	ORA.b SA1IRAM.cm_draw_color
	STA.w SA1RAM.MENU, X

	INY

	INX
	INX
	DEC.b SA1IRAM.cm_draw_filler ; this is 1 less char to draw for filler
	BRA .next_letter

.done_row_name
; for X until option, draw chr $1F
	LDY.b SA1IRAM.cm_draw_filler ; get number of characters left to fill in

	LDA.w #$001F
	ORA.b SA1IRAM.cm_draw_color
.next_mid_fill
	STA.w SA1RAM.MENU, X

	INX
	INX
	DEY
	BPL .next_mid_fill

	; now draw the specific routine type
	PHX

	LDX.b SA1IRAM.cm_draw_type_offset
	LDA.w ActionDrawRoutines, X

	PLX

	PEA.w .return-1

	DEC
	PHA

	SEP #$20 ; more useful
	LDY.w #1 ; to skip the draw type
	RTS

.return

.done_all
	REP #$30
	PLY
	RTS

