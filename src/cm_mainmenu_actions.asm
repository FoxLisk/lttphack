
CM_SAVE_ADDRESS_LONG:
	JSR .continue

	LDA.b [SA1IRAM.cm_select_current], Y
	STA.b SA1IRAM.cm_writer+2
	INY
	RTS

#CM_SAVE_ADDRESS_00:
	SEP #$20
	STZ.b SA1IRAM.cm_writer+2

.continue
	REP #$20
	LDA.b [SA1IRAM.cm_select_current], Y
	INY
	INY

	SEP #$20
	RTS

;===============================================================================

CM_DO_TOGGLE_BIT0:
	SEP #$20
	LDA.b #$1<<0
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT1:
	SEP #$20
	LDA.b #$1<<1
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT2:
	SEP #$20
	LDA.b #$1<<2
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT3:
	SEP #$20
	LDA.b #$1<<3
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT4:
	SEP #$20
	LDA.b #$1<<4
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT5:
	SEP #$20
	LDA.b #$1<<5
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT6:
	SEP #$20
	LDA.b #$1<<6
	BRA CM_TOGGLE_BIT_LOCAL

CM_DO_TOGGLE_BIT7:
	SEP #$20
	LDA.b #$1<<7
	BRA CM_TOGGLE_BIT_LOCAL

CM_TOGGLE_BIT_LONG:
	PHA
	JSR CM_SAVE_ADDRESS_LONG
	BRA .continue

#CM_TOGGLE_BIT_LOCAL:
	PHA
	JSR CM_SAVE_ADDRESS_00

.continue
	PLA
	BIT.b SA1IRAM.cm_ax
	BMI .toggle
	BVS .clear

	CLC
	RTS

.clear
	EOR.b #$FF
	STA.b SA1IRAM.cm_writer_args+1 ; get complement for the AND
	STZ.b SA1IRAM.cm_writer_args+0 ; ORA in nothing

	JMP CM_PERFORM_TOGGLE

.toggle
	STA.b SA1IRAM.cm_writer_args+0

	LDA.b #$FF
	STA.b SA1IRAM.cm_writer_args+1

	JMP CM_PERFORM_TOGGLE

CM_DO_TOGGLE_BIT0_LONG:
	SEP #$20
	LDA.b #$1<<0
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT1_LONG:
	SEP #$20
	LDA.b #$1<<1
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT2_LONG:
	SEP #$20
	LDA.b #$1<<2
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT3_LONG:
	SEP #$20
	LDA.b #$1<<3
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT4_LONG:
	SEP #$20
	LDA.b #$1<<4
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT5_LONG:
	SEP #$20
	LDA.b #$1<<5
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT6_LONG:
	SEP #$20
	LDA.b #$1<<6
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_BIT7_LONG:
	SEP #$20
	LDA.b #$1<<7
	BRA CM_TOGGLE_BIT_LONG

CM_DO_TOGGLE_LONG:
	JSR CM_SAVE_ADDRESS_LONG
	BRA .continue

#CM_DO_TOGGLE:
	JSR CM_SAVE_ADDRESS_00

.continue
	SEP #$20

	LDA.b #$01
	STA.b SA1IRAM.cm_writer_args+0
	STA.b SA1IRAM.cm_writer_args+1

CM_PERFORM_TOGGLE:
	SEP #$21 ; set the carry here, since that means something happened
	LDA.b [SA1IRAM.cm_writer]
	EOR.b SA1IRAM.cm_writer_args+0
	AND.b SA1IRAM.cm_writer_args+1
	STA.b [SA1IRAM.cm_writer]
	RTS

;===============================================================================
CM_DO_TOGGLE_FUNC:
	JSR CM_DO_TOGGLE
	BRA CM_PERFORM_FUNC

CM_DO_TOGGLE_LONG_FUNC:
	JSR CM_DO_TOGGLE_LONG
	BRA CM_PERFORM_FUNC

CM_DO_FUNC:
	SEP #$20
	LDA.b SA1IRAM.cm_ax ; get A press in carry
	ASL

CM_PERFORM_FUNC:
	BCC .exit

	JSR CM_SAVE_ADDRESS_LONG
	PHK
	PEA.w .exit-1

	JML.w [SA1IRAM.cm_writer]

	RTL

.exit
	RTS

CM_DO_CHOICE_LONG_FUNC:
CM_DO_CHOICE_LONG_FUNC_PRGTEXT:
	JSR CM_DO_CHOICE_LONG
	BRA CM_PERFORM_FUNC

#CM_DO_CHOICE_FUNC:
#CM_DO_CHOICE_FUNC_PRGTEXT:
	JSR CM_DO_CHOICE
	BRA CM_PERFORM_FUNC

;===============================================================================

CM_DO_CHOICE_LONG:
CM_DO_CHOICE_LONG_PRGTEXT:
	JSR CM_SAVE_ADDRESS_LONG
	BRA .continue

#CM_DO_CHOICE:
#CM_DO_CHOICE_PRGTEXT:
	JSR CM_SAVE_ADDRESS_00

.continue
	LDA.b [SA1IRAM.cm_writer]
	BIT.b SA1IRAM.cm_ax
	BVS .clear
	BMI .increment

	BIT.b SA1IRAM.cm_leftright
	BMI .decrement
	BVS .increment
	INY
	CLC ; carry clear = nothing actionable, so no functions
	RTS

.decrement
	CMP.b #$00
	BEQ .max

	DEC
	BRA .set

.max
	LDA.b [SA1IRAM.cm_select_current], Y
	BRA .set

.increment
	INC
	CMP.b [SA1IRAM.cm_select_current], Y
	BCC .set

.clear
	LDA.b #$00

.set
	STA.b [SA1IRAM.cm_writer]
	INY
	SEC ; carry set = actionable, so do functions
	RTS

;===============================================================================
CM_DO_SUBMENU:





