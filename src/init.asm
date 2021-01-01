pushpc
; Code that is run once after the game has been powered on.

; Overrides the following:
; LDA.b #$81 : STA $4200
org $00802F
	JSL init_hook
	NOP

pullpc

init_hook:
	SEP #$20
	LDA.b #$03 : STA.l $002224 ; image 3 for page $60

	JSL init_expand
	JSL InitSA1

	SEP #$30
	LDA #$81 : STA $4200
	RTL

init_expand:
	; enters AI=8
	; If user holds Start+Select, we reinitialize.
	; we need some manual joypad reading
	LDA #$01 : STA $4016 : STZ $4016 ; pulse controller

	STZ $00 : STZ $01
	LDY #$10 ; reading 16 bits
--	LDA $4016 ; if the last bit is on, carry will be set, otherwise, it won't; A is still 1
	LSR
	ROL $00 : ROL $01 ; roll carry from A and then from $00
	DEY : BNE -- ; decrement

	REP #$20
	LDA $00
	AND #$FF00 : CMP #$3000 : BEQ .forcereset
	LDA.w !ram_init_sig : CMP #!INIT_SIGNATURE : BEQ .noforcereset

.forcereset
	JSR init_initialize_all
	BRA .sram_initialized

.noforcereset
	LDA.w !ram_sram_initialized
	CMP.w #$0030 : BCC .forcereset
	CMP #!SRAM_VERSION : BEQ .sram_initialized

.reinitialize
	JSR init_initialize

.sram_initialized
	; Some features probably should be turned off after a reset
	SEP #$30
	STZ !lowram_oob_toggle
	LDA #$00
	STA.w !ram_superwatch
	STA.w !ram_superwatch+1
.done
	RTL

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
