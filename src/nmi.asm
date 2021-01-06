pushpc
;======================================================================================
; Improves the speed of OAM clearing by 2 scanlines; credit: MathOnNapkins
; Has no effect on anything
; But it gives us consistent improvements to account for practice hack lag
;======================================================================================
org $00805D
	JML WasteTimeIfNeeded

org $00841E
	LDA.b $F0 : STA.w SA1IRAM.CopyOf_F0
	LDA.b $F2 : STA.w SA1IRAM.CopyOf_F2
	LDA.b $F4 : STA.w SA1IRAM.CopyOf_F4
	LDA.b $F6 : STA.w SA1IRAM.CopyOf_F6

	LDA.b #$81 ; fire an IRQ to request shortcuts
	STA.w $2200

	REP #$10
	LDX.w $4300 : PHX

	; 246,16 : 250,18
	; Vanilla OAM cycles: 4 scanlines - 10 H
	; improved to: 2 scanlines + 28H

	; first half
	LDX #$8001 : STX $4300

	LDA.b #OAM_Cleaner>>16 : STA $4304
	TXA ; give A 0x01

	LDX #$0801 : STX $2181 : STZ $2183

	LDX.w #OAM_Cleaner : STX $4302
	LDX #$0080 : STX $4305
	STA $420B

	; second half
	LDX.w #OAM_Cleaner : STX $4302
	LDX #$0901 : STX $2181
	LDX #$0080 : STX $4305

	STA $420B

	PLX
	STX.w $4300

	SEP #$30

	RTS
warnpc $008489

;===============================================================================
; This small joypad improvement of 8 cycles gives us a little more leeway
; but we also use 10 cycles here for joypad 2
; net loss is 2 cycles, not an issue
;===============================================================================
org $083D1
	REP #$20
	LDA.w $421A
	STA.w SA1IRAM.JOYPAD2_NEW

	LDA.w $4218
	STA.b $00

	SEP #$20
	STA.b $F2
	TAY
	EOR.b $FA
	AND.b $F2
	STA.b $F6
	STY.b $FA

	XBA
	STA.b $F0
	TAY
	EOR.b $F8
	AND.b $F0
	STA.b $F4
	STY.b $F8

	RTS

warnpc $0083F8





; NMI hook
org $0080D5
	; 0080D1 LDA #$0000
	; 0080D4 TCD
	; 0080D5 PHK
	; 0080D6 PLB
	; 0080D7 SEP #$30
	JSL nmi_expand

org $008174
	LDA.b $1C : STA.w $00AB ; 16-bit addressing to save 1 cycle by avoiding a NOP
	LDA.b $1D : STA.w $00AC

;org $0081A0 ; save camera correction for NMI expansion
;	BRA + ; save time during NMI
;org $0081B8 : +

; HUD update hook
;org $008220
org $00821B
	JSL nmi_hud_update
	ORA.w $009B ; 16-bit addressing to save 1 cycle by avoiding a NOP

warnpc $0089DF

; The time this routine takes isn't relevant
; since it's never during game play
org $00E36A
	JSL LoadCustomHUDGFX
	PLB
	RTL

pullpc

; Needs to leave AI=8
nmi_expand:
	; enters AI=16
	SEP #$30
	; this covers the PHK : PLB we overwrote
	PHA ; A is 0 from right before the hook
	PLB ; and that happens to be the bank we want

	STA.w SA1RAM.last_frame_did_saveload ; while A is 0

	LDA !disabled_layers : TRB $AB : TRB $AC
	REP #$20
	LDA $AB : STA $212C

	SEP #$30
	LDA.b $12 : STA.w SA1IRAM.CopyOf_12

	LDA #$12 ; timers NMI
	STA.w $2200
	RTL

nmi_hud_update:
	; Movie stuff commented out while it's not needed
;	LDX #$6360 : STX $2116

;	; $7EC700 is the WRAM buffer for this data
;	LDX.w #!ram_movie_hud : STX $4302
;	LDA.b #!ram_movie_hud>>16 : STA $4304
;	LDX #$0040 : STX $4305 ; number of bytes to transfer is 330
;	LDA #$01 : STA $420B ; refresh BG3 tilemap data with this transfer on channel 0
	REP #$20
	SEP #$10

	LDX.w SA1IRAM.CopyOf_12 : BNE .dontbreakthings
	LDA.w !ram_superwatch
	AND #$0003
	ASL
	TAX
	JMP (.routines, X)

.doorwatch
	LDX #$80 : STX $2115
	LDA #$6500 : STA $2116

	LDA #$1801 : STA $4300
	LDA.w #SA1RAM.SW_BUFFER : STA $4302
	LDX.b #SA1RAM.SW_BUFFER>>16 : STX $4304
	LDA #$0100 : STA $4305

	LDY #$01 : STY $420B

.nowatch
.dontbreakthings
	LDX.b $13
	STX.w $2100
	SEP #$20
	LDA.w SA1IRAM.HDMA_ASK
	STZ.w SA1IRAM.HDMA_ASK
	RTL

.ancillawatch
	LDX $10
	CPX #$06 : BCC .nowatch
	CPX #$19 : BCS .nowatch
	CPX #$12 : BEQ .nowatch
	CPX #$14 : BEQ .nowatch

	LDX #$80 : STX $2115
	LDY #$01
	LDA #$1801 : STA $4300
	LDA.w #SA1RAM.SW_BUFFER : STA $4302
	LDX.b #$00 : STX $4304

	LDA #$C202>>1 : STA $2116
	LDA #$0010 : STA $4305
	STY $420B

macro draw_ancilla_row(n)
	LDA.w #($C202+(64*<n>))>>1 : STA.w $2116
	LDA.w #$0010 : STA.w $4305
	STY $420B

	;LDA #($C22E+(64*<n>))>>1 : STA $2116
	;LDA #$0010 : STA $4305
	;STY $420B
endmacro

	;%draw_ancilla_row(1)
	%draw_ancilla_row(2)
	%draw_ancilla_row(3)
	%draw_ancilla_row(4)
	%draw_ancilla_row(5)
	%draw_ancilla_row(6)
	;%draw_ancilla_row(7)
	%draw_ancilla_row(8)
	%draw_ancilla_row(9)
	%draw_ancilla_row(10)
	%draw_ancilla_row(11)
	%draw_ancilla_row(12)
	;%draw_ancilla_row(13)
	;%draw_ancilla_row(14)
	;%draw_ancilla_row(15)
	;%draw_ancilla_row(16)
	;%draw_ancilla_row(17)
	;%draw_ancilla_row(18)
	;%draw_ancilla_row(19)
	;%draw_ancilla_row(20)

	JMP .nowatch

.routines
	dw .nowatch
	dw .ancillawatch
	dw .doorwatch
	dw .nowatch

;===========================================
; OAM cleaner optimization
;===========================================
macro OAMVClear(pos)
	db $F0, <pos>+$05, $F0, <pos>+$09, $F0, <pos>+$0D, $F0, <pos>+$11
endmacro

OAM_Cleaner:
	%OAMVClear($00)
	%OAMVClear($10)
	%OAMVClear($20)
	%OAMVClear($30)
	%OAMVClear($40)
	%OAMVClear($50)
	%OAMVClear($60)
	%OAMVClear($70)
	%OAMVClear($80)
	%OAMVClear($90)
	%OAMVClear($A0)
	%OAMVClear($B0)
	%OAMVClear($C0)
	%OAMVClear($D0)
	%OAMVClear($E0)
	%OAMVClear($F0)

;===============================================================================
; Custom NMI for hud
;===============================================================================
NMI_RequestFullMenuUpdate:
	REP #$20
	LDA.w #NMI_UpdatePracticeHUD_full
	STA.w SA1RAM.SNES_NMI_VECTOR
	SEP #$30
	RTL

NMI_Request2RowsUpdate:
	REP #$20
	SEP #$10

	LDA.w #NMI_UpdatePracticeHUD_two_rows
	STA.w SA1RAM.SNES_NMI_VECTOR

	STX.w SA1RAM.SNES_NMI_args+0
	STY.w SA1RAM.SNES_NMI_args+1

	SEP #$30
	RTL

NMI_RequestCurrentRowUpdateUnless:
	REP #$20

	LDA.w SA1RAM.SNES_NMI_VECTOR
	CMP.w #NMI_UpdatePracticeHUD_full
	BEQ .no

	LDA.w #NMI_UpdatePracticeHUD_current_row
	STA.w SA1RAM.SNES_NMI_VECTOR

.no
	SEP #$30
	RTL


NMI_UpdatePracticeHUD:
.full
	REP #$20

	LDA.w #SA1RAM.MENU
	STA.w $4302
	LDA.w #$6C00
	STA.w $2116
	LDA.w #$0800

.start
	STA.w $4305
	LDA.w #$1801
	STA.w $4300

	SEP #$20
	LDA.b #$80
	STA.w $2115
	STZ.w $4304
	LDA.b #$01
	STA.w $420B

	RTS

.current_row
	REP #$20
	LDA.w SA1IRAM.cm_cursor
	BRA .do_row

.two_rows
	REP #$20
	LDA.w SA1RAM.SNES_NMI_args+0
	JSR .do_row

	REP #$20
	LDA.w SA1RAM.SNES_NMI_args+1

.do_row
	AND.w #$00FF
	ASL
	ASL
	ASL
	ASL
	ASL
	PHA
	ADC.w #$6C60
	STA.w $2116

	PLA
	ASL
	ADC.w #SA1RAM.MENU+(64*3)
	STA.w $4302

	LDA.w #$0040
	BRA .start

SNES_ENABLE_CUSTOM_NMI:
	REP #$20
	LDA.w #SNES_CUSTOM_NMI_nothing
	STA.l SA1RAM.SNES_NMI_VECTOR

	SEP #$20
	LDA.b #$11
	STA.l $002200
	RTL

SNES_DISABLE_CUSTOM_NMI:
	SEP #$20
	LDA.b #$10
	STA.l $002200
	RTL

SNES_CUSTOM_NMI:
	REP #$30
	PHA
	PHX
	PHY
	PHD
	PHB

	SEP #$20
	LDA.l $004210

	PEA.w $0000
	PLD
	TDC
	TAX

	PHK
	PLB

	STA.l $00420C ; disable HDMA aggressively

	LDA.b #$80
	STA.w $2100

	LDA.b $12
	BEQ .good_to_go

	JMP .lagging

.good_to_go
	INC.b $12
	JSR.w (SA1RAM.SNES_NMI_VECTOR, X)

	PEA.w $0000 ; used to be D=0 later
	PEA.w $2100
	PLD

	PHK
	PLB

	SEP #$30
	LDA.b #$04 ; only show BG3
	STA.b $212C
	STZ.b $212D

	; BG 3 scroll
	LDA.b #$01
	STZ.b $2111
	STA.b $2111

	STZ.b $2112
	STA.b $2112

	STZ.b $2106 ; no mosaic

	STZ.b $2123 ; no windowing
	STZ.b $2124
	STZ.b $2125

	STZ.b $212E
	STZ.b $212F

	STZ.b $2131 ; no color math

	; handle music and sfx
	LDX.b #3

--	LDA.w $012C, X
	STA.b $40, X
	STZ.w $012C, X
	DEX
	BPL --

	PLD ; D=0000
	TDC ; A=0000

	; Refresh colors every frame just cause it's easier
	REP #$10
	LDY.w #0

.next_color
	LDA.w .cgrams, Y
	BMI .done_color

	INY
	STA.w $2121

	LDX.w .cgrams, Y
	INY
	INY

	STX.b $00
	LDA.b ($00)
	ASL
	TAX

	LDA.l COLORS_YAY, X
	STA.w $2122

	INX
	LDA.l COLORS_YAY, X
	STA.w $2122

	BRA .next_color

.done_color
	SEP #$30
	JSL ReadJoyPad_long

	LDA.b $F0 : STA.w SA1IRAM.CopyOf_F0
	LDA.b $F2 : STA.w SA1IRAM.CopyOf_F2
	LDA.b $F4 : STA.w SA1IRAM.CopyOf_F4
	LDA.b $F6 : STA.w SA1IRAM.CopyOf_F6


	REP #$20
	LDA.w #.nothing
	STA.w SA1RAM.SNES_NMI_VECTOR

.lagging
	SEP #$20
	LDA.b #$0F
	STA.l $002100
	JMP.w SA1NMI_EXIT

.nothing
	RTS

.cgrams
	db 00 : dw !ram_hud_bg
	db 03 : dw !ram_hud_bg

	db 17 : dw !ram_hud_header_hl
	db 18 : dw !ram_hud_header_fg
	db 19 : dw !ram_hud_header_bg

	db 22 : dw !ram_hud_sel_fg
	db 23 : dw !ram_hud_sel_bg

	db 26 : dw !ram_hud_dis_fg
	db 27 : dw !ram_hud_bg

	db $FF ; done




