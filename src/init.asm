pushpc
; Code that is run once after the game has been powered on.

; Overrides the following:
; LDA.b #$81 : STA $4200
org $00802F
	JML init_hook
	NOP
init_done:


pullpc

init_hook:
	SEP #$20
	LDA.b #$03 : STA.l $002224 ; image 3 for page $60
	LDA.b #$22 : STA.l $2143

	JSL InitSA1

	REP #$20
	SEP #$10
	STZ.w $2182
	LDA.w #$2000
	STA.w $2182

#ZeroLand:
	LDA.w #$4300
	TCD

	LDA.w #ZeroLand+1
	STA.b $4312

	LDX.b #ZeroLand>>16
	STX.b $4314

	LDA.w #$E000 ; this many bytes for WRAM
	STZ.b $4315

	LDA.w #$8008
	STA.b $4310

	LDX.b #$02
	STX.w $420B

	LDA.w #$0000
	TCD

;===============================================================================
; Done doing what ALTTP needs done but faster
;===============================================================================

	SEP #$30
	; check for reset config combo
	LDA.b #$01 : STA.w $4016 : STZ.w $4016 ; pulse controller

	STZ.b $00 : STZ.b $01
	LDY.b #$10 ; reading 16 bits
--	LDA.w $4016 ; if the last bit is on, carry will be set, otherwise, it won't; A is still 1
	LSR
	ROL.b $00 : ROL.b $01 ; roll carry from A and then from $00
	DEY : BNE -- ; decrement

	REP #$20
	LDA.b $00
	AND.w #$FF00 : CMP.w #$3000 : BEQ .forcereset
	LDA.w !ram_init_sig : CMP.w #!INIT_SIGNATURE : BEQ .noforcereset

.forcereset
	JSR init_initialize_all
	BRA .sram_initialized

.noforcereset
	LDA.w !ram_sram_initialized
	CMP.w #$0030 : BCC .forcereset
	CMP.w #!SRAM_VERSION : BEQ .sram_initialized

.reinitialize
	JSR init_initialize

.sram_initialized
	; Some features probably should be turned off after a reset
	SEP #$30
	STZ.w $037F
	STZ.w !ram_superwatch
	STZ.w !ram_superwatch+1

;===============================================================================
; everything is done now
; back to the game
.done
	

	STZ.b $11
	LDA.b #$01
	STA.b $10

	JSL $028000
	JSL $028022
	JSL $0EF572
	JSL $00D271


	SEP #$30
	LDA.b #$15 : STA.b $1C
	LDA.b #$81 : STA.w $4200
	JML init_done

;===============================================================================

init_initialize_all:
	PEA.w VERSIONSTABLE
	BRA ++

init_initialize:
	PEA.w VERSIONUNSTABLE

++	REP #$30
	PLY

	PHB
	PHK
	PLB

.next
	LDX.w $0000, Y
	BEQ .done

	INY
	INY

	LDA.w $0000, Y
	STA.l $400000, X

	INY
	INY
	BRA .next

.done
	PLB
	RTS

VERSIONSTABLE:
	!PERM_INIT

VERSIONUNSTABLE:
	!TEMP_INIT
	dw $0000, $0000
