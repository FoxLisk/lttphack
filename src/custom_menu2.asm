; TODO: custom CGRAM colors for inverted selection also characters like %
; move thicker alphabet down 1 tile in VRAM so that it can be ORA'd in
!SELECTED = 0
!UNSELECTED = 0
!HEADER = $0060

cm_preset_data_banks:
CM_Main:
	PHB : PHK : PLB

	PHD

	PEA.w $3000
	PLD

	JSL SNES_ENABLE_CUSTOM_NMI

	REP #$20
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
	dw CM_ShortcutConfig
	dw CM_Return

CM_DrawMenu:
	LDX.b #$04
	STX.b SA1IRAM.cm_submodule
	JMP DrawCurrentMenu
	RTS

CM_Return:
	REP #$20
	PLA ; remove the return of the JSR

	LDA.w #2
	STA.b SA1IRAM.cm_submodule

	SEP #$20
	PLD
	PLB
	INC.b $12
	LDA.b #$15 : STA.w $012E

	JML SNES_DISABLE_CUSTOM_NMI

CM_ShortcutConfig:
	RTS

CM_Init:
	LDA.b #$01 : STA.w SA1RAM.opened_menu_manually


	REP #$20
	STZ.w SA1RAM.CM_SubMenuIndex

	LDA.w #cm_mainmenu<<8
	STA.b SA1IRAM.cm_cursor+0

	LDA.w #cm_mainmenu>>8
	STA.b SA1IRAM.cm_cursor+2

	JSR CM_PushMenuToStack

	SEP #$30

	; save temp variables that the menu uses
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

;------------------------------------------------------------------------------
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

	JSR DrawCurrentMenu

	SEP #$20
	STZ.w $2121 ; CGRAM 0
	STZ.w $2122 ; black
	STZ.w $2122

	LDA.b #$14 : STA.w $012E

	LDA.b #$02 : STA.b SA1IRAM.cm_submodule


ActionExit:
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



CM_Active:
	SEP #$30

	LDY.b SA1IRAM.cm_cursor

	JSR CM_getcontroller
	BNE .actionable_action
	BCS CM_GoBack

	BIT.b SA1IRAM.cm_updown
	BMI .pressed_up
	BVS .pressed_down
	RTS

.pressed_up
	DEC.b SA1IRAM.cm_cursor
	BRA CM_AdjustForWrap

.pressed_down
	INC.b SA1IRAM.cm_cursor
	BRA CM_AdjustForWrap

.actionable_action
	LDY.b #1 ; for when the routine uses it
	LDA.b [SA1IRAM.cm_select_current], Y
	ASL
	TAX
	JMP (ActionDoRoutines, X)

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

CM_UpdateCurrentSelection:
	REP #$20
	SEP #$10
	LDA.b SA1IRAM.cm_cursor
	INC
	ASL
	TAY

	LDA.b [SA1IRAM.cm_current_menu], Y
	STA.b SA1IRAM.cm_select_current+0
	INY
	INY
	LDA.b [SA1IRAM.cm_current_menu], Y
	STA.b SA1IRAM.cm_select_current+2

	PLY
	PLX
	JSL NMI_Request2RowsUpdate

	RTS





;===============================================================================
; Puts presses into the 6th and 7th bits for easy testing
; Carry = B
; Zero  = No actions
;===============================================================================
CM_getcontroller:
	SEP #$20
	LDA.w SA1RAM.cm_input_timer
	BEQ .get_controller

	DEC.w SA1RAM.cm_input_timer

.no_press
	STZ.b SA1IRAM.cm_leftright
	STZ.b SA1IRAM.cm_updown
	STZ.b SA1IRAM.cm_shoulder
	STZ.b SA1IRAM.cm_ax
	LDA.b #$00
	CLC
	RTS

.get_controller
	REP #$20
	LDA.b SA1IRAM.CONTROLLER_1
	BEQ .no_press

	SEP #$20

	LDA.b #15
	STA.w SA1RAM.cm_input_timer

	; get left and right
	LDA.b SA1IRAM.CopyOf_F0
	LSR
	ROR.b SA1IRAM.cm_leftright
	LSR
	ROR.b SA1IRAM.cm_leftright

	; get up and down
	LDA.b SA1IRAM.CopyOf_F0
	LSR
	ROR.b SA1IRAM.cm_updown
	LSR
	ROR.b SA1IRAM.cm_updown

	; get A and X, but only new presses
	LDA.b SA1IRAM.CopyOf_F6
	ASL
	ROR.b SA1IRAM.cm_ax
	ASL
	ROR.b SA1IRAM.cm_ax

	; get l and r, but only new presses
	ASL
	ROR.b SA1IRAM.cm_shoulder
	ASL
	ROR.b SA1IRAM.cm_shoulder

	; get new B presses
	LDA.b SA1IRAM.CopyOf_F4
	ASL

	; now see if anything actionable was pressed
	LDA.b SA1IRAM.cm_leftright
	ORA.b SA1IRAM.cm_ax
	ORA.b SA1IRAM.cm_shoulder
	AND.b #$C0

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
	JSL NMI_RequestFullMenuUpdate
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

.from_here_to_end


.next_clean
	LDA.w #$207F
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
	TYA
	LSR

	CLC
	ASL #6
	ADC.w #64+4 ; down 1 row + right 2

	CPY.w #0
	BEQ .headersstt

	ADC.w #63 ; down 1 more row if not a header, includes carry

.headersstt
	TAX ; start of row in the menu

	; put location of our row's text into DP
	LDA.b SA1IRAM.cm_current_menu+1
	STA.b SA1IRAM.cm_select_draw+1

	LDA.b [SA1IRAM.cm_current_menu], Y
	STA.b SA1IRAM.cm_select_draw+0

	TYA ; should it be gray or yellow?
	LSR ; does it match our selection?
	DEC

	BMI .header

	CMP.b SA1IRAM.cm_cursor
	BEQ .noselect

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

	PHY ; save our row index
	TYA
	BEQ .isheader

	LDA.b [SA1IRAM.cm_select_draw] ; what routine type is it?
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

	; write each letter of the name
.next_letter
	LDA.b [SA1IRAM.cm_select_draw], Y
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

	RTS

.return

.done_all
	REP #$30
	PLY
	RTS

;===============================================================================
; Menu Actions
;===============================================================================
CM_FUNCTION:
	SEP #$30
	LDY.b #1

; jump here for anything with an attached function
; expects Y to point to the current function argument
#CM_ATTACHED_FUNCTION:
	SEP #$30
	INY
	INY

	; push the address to stack for a jump
	LDA.b [SA1IRAM.cm_select_current], Y
	PHA

	DEY
	LDA.b [SA1IRAM.cm_select_current], Y
	PHA

	DEY
	LDA.b [SA1IRAM.cm_select_current], Y
	DEC
	PHA

	RTL
	RTS

CM_DRAW_WORD:
	PHP
	REP #$30
	PHY

	PHB
	PHK
	PLB

	PHA
	LDY.w #0

.next
	LDA (1,S),Y
	AND.w #$00FF
	CMP.w #$00FF
	BEQ .done

	ORA.b SA1IRAM.cm_draw_color
	STA.w SA1RAM.MENU, X
	INX
	INX
	INY
	BRA .next


.done
	PLA
	PLB

	REP #$30
	PLY

	PLP
	RTS

CM_DRAW_RANDOM:
	REP #$20
	LDA.w #.text
	JSR CM_DRAW_WORD
	RTL

.text
	db "RANDOM", $FF

CM_DRAW_ON:
	REP #$20
	LDA.w #.text
	JSR CM_DRAW_WORD
	RTL

.text
	db "ON", $FF

CM_DRAW_YES:
	REP #$20
	LDA.w #.text
	JSR CM_DRAW_WORD
	RTL

.text
	db "YES", $FF

CM_DRAW_OFF:
	REP #$20
	LDA.w #.text
	JSR CM_DRAW_WORD
	RTL

.text
	db "OFF", $FF

CM_DRAW_NO:
	REP #$20
	LDA.w #.text
	JSR CM_DRAW_WORD
	RTL

.text
	db "NO", $FF

CM_DRAW_HEX:
	SEP #$20
	PHA

	JSR .tohex
	STA.w $0001

	PLA
	LSR
	LSR
	LSR
	LSR
	JSR .tohex
	STA.w $0000

	LDA.b #$FF
	STA.w $0002

	REP #$20
	LDA.w #$0000
	JSR CM_DRAW_WORD

	RTL

.tohex
	AND.b #$0F
	CMP.b #$0A
	BCC .numeral

	SBC.b #$0A
	RTS

.numeral
	ORA.b #$20
	RTS

; All of these just empty the rest of the row
CM_DRAW_HEADER:
CM_DRAW_PRESET:
CM_DRAW_SUBMENU:
CM_DRAW_FUNC:
	JMP EmptyCurrentRow_from_here_to_end
