pushpc
org $008000
struct SA1IRAM $003000
	.SCRATCH: skip 16

	.HDMA_ASK: skip 1
	.SHORTCUT_USED: skip 2

	.CONTROLLER_1:
	.CopyOf_F2: skip 1
	.CopyOf_F0: skip 1

	.CONTROLLER_1_FILTERED:
	.CopyOf_F6: skip 1
	.CopyOf_F4: skip 1

	.CONTROLLER_1_NEW:

	.JOYPAD2_NEW: skip 2

	.CachedThisFrame: skip 1
	.cm_submodule: skip 2
	.cm_cursor: skip 1 ; keep these together
	.cm_current_menu: skip 4
	.cm_current_selection: skip 4
	.cm_current_draw: skip 4
	.cm_select_address: skip 4
	.cm_select_params:
	.cm_draw_color: skip 2

	; these can be shared because they're never used at the same time
	.cm_writer:
	.cm_draw_type_offset: skip 2
	.cm_draw_filler: skip 2

	.cm_leftright: skip 1 ; N=left V=right
	.cm_updown: skip 1 ; N=up V=down
	.cm_ax: skip 1 ; N=A V=X
	.cm_y: skip 1 ; N=l V=r
	.cm_shoulder: skip 1 ; N=l V=r
	skip 1 ; for safety

	.cm_writer_args: skip 4

	.preset_addr: skip 3

	.preset_prog: skip 3
	.preset_prog_end: skip 2

	.preset_pert: skip 3
	.preset_pert_end: skip 2

	.preset_reader: skip 3
	.preset_reader2: skip 3
	.preset_writer: skip 2
	.preset_type: skip 2
	.preset_scratch: skip 4



.savethis_start
	.TIMER_FLAG: skip 2

.timers_start
	.ROOM_TIME_F: skip 2
	.ROOM_TIME_S: skip 2
	.ROOM_TIME_LAG: skip 2
	.ROOM_TIME_IDLE: skip 2

	.SEG_TIME_F: skip 2
	.SEG_TIME_S: skip 2
	.SEG_TIME_M: skip 2
.timers_end

	.ROOM_TIME_F_DISPLAY: skip 2
	.ROOM_TIME_S_DISPLAY: skip 2
	.ROOM_TIME_LAG_DISPLAY: skip 2
	.ROOM_TIME_IDLE_DISPLAY: skip 2

	.SEG_TIME_F_DISPLAY: skip 2
	.SEG_TIME_S_DISPLAY: skip 2
	.SEG_TIME_M_DISPLAY: skip 2

	.CopyOf_10: skip 1
	.CopyOf_11: skip 1
	.CopyOf_12: skip 1
	.CopyOf_1A: skip 1
	.CopyOf_1B: skip 1
	.CopyOf_20: skip 1
	.CopyOf_21: skip 1
	.CopyOf_22: skip 1
	.CopyOf_23: skip 1
	.CopyOf_2A: skip 1
	.CopyOf_2B: skip 1
	.CopyOf_30: skip 1
	.CopyOf_31: skip 1
	.CopyOf_6C: skip 1
	.CopyOf_A0: skip 1
	.CopyOf_A1: skip 1
	.CopyOf_A4: skip 1
	.CopyOf_A5: skip 1
	.CopyOf_B0: skip 1
	.CopyOf_E2: skip 1
	.CopyOf_E3: skip 1
	.CopyOf_E8: skip 1
	.CopyOf_E9: skip 1
	.CopyOf_EE: skip 1

	.CopyOf_04A0: skip 1
	.CopyOf_04B4: skip 1

	.CopyOf_02A2: skip 1
	.CopyOf_02FA: skip 1

	.CopyOf_0B08: skip 1
	.CopyOf_0B09: skip 1

	.CopyOf_7EC011: skip 1
	.CopyOf_7EF36C: skip 1
	.CopyOf_7EF36D: skip 1

	; not copied, but just moved in rom
	.Moved_0208: skip 1
	.Moved_0209: skip 1
	.Moved_020A: skip 1

	; extra stuff
	.LanmoCycles: skip 16 ; 16 to be safe

.savethis_end
	print "SA1 dp: ", pc

	; ancilla watch
	.CopyOf_03C4: skip 1
	.CopyOf_03A4: skip 1
	.CopyOf_0C4A: skip 10
	.CopyOf_0C5E: skip 10

	.CopyOf_0BFA: skip 10
	.CopyOf_0C04: skip 10
	.CopyOf_0C0E: skip 10
	.CopyOf_0C18: skip 10

	; dg watch
	.CopyOf_A6: skip 1
	.CopyOf_A7: skip 1
	.CopyOf_A8: skip 1
	.CopyOf_A9: skip 1
	.CopyOf_AA: skip 1

	.CopyOf_0400: skip 1
	.CopyOf_0401: skip 1
	.CopyOf_0402: skip 1
	.CopyOf_0403: skip 1
	.CopyOf_0408: skip 1
	.CopyOf_040A: skip 1
	.CopyOf_040C: skip 1
	.CopyOf_04BA: skip 1
	.CopyOf_04BB: skip 1


	.CopyOf_068E: skip 1
	.CopyOf_068F: skip 1
	.CopyOf_0690: skip 1
	.CopyOf_0691: skip 1

	.CopyOf_7EC000: skip 1

	.CopyOf_0600: skip 1
	.CopyOf_0601: skip 1
	.CopyOf_0602: skip 1
	.CopyOf_0603: skip 1
	.CopyOf_0604: skip 1
	.CopyOf_0605: skip 1
	.CopyOf_0606: skip 1
	.CopyOf_0607: skip 1
	.CopyOf_0608: skip 1
	.CopyOf_0609: skip 1
	.CopyOf_060A: skip 1
	.CopyOf_060B: skip 1
	.CopyOf_060C: skip 1
	.CopyOf_060D: skip 1
	.CopyOf_060E: skip 1
	.CopyOf_060F: skip 1
	.CopyOf_0610: skip 1
	.CopyOf_0611: skip 1
	.CopyOf_0612: skip 1
	.CopyOf_0613: skip 1
	.CopyOf_0614: skip 1
	.CopyOf_0615: skip 1
	.CopyOf_0616: skip 1
	.CopyOf_0617: skip 1
	.CopyOf_0618: skip 1
	.CopyOf_0619: skip 1
	.CopyOf_061A: skip 1
	.CopyOf_061B: skip 1
	.CopyOf_061C: skip 1
	.CopyOf_061D: skip 1
	.CopyOf_061E: skip 1
	.CopyOf_061F: skip 1

	print "SA1 mirroring: ", pc
endstruct

;==============================================================================

org $00F7E1
SA1Reset00:
	JML SA1Reset

SA1NMI00:
	JML SA1NMI

SA1IRQ00:
	JML SA1IRQ

SNES_CUSTOM_NMI_BOUNCE:
	JML SNES_CUSTOM_NMI

warnpc $00F800

org $00FFB7 ; this barely fits
ReadJoyPad_long:
--	LSR.w $4212
	BCS --
	JSR.w $0083D1
	RTL

incsrc sa1hud.asm
incsrc sa1sram.asm

pullpc
;===============================================================================
; CacheSA1Stuff is critical to balancing lag
; so if it isn't called from the HUD, we need to call it here
; otherwise, we're a lot less laggy than vanilla
; this is run every frame
;===============================================================================
WasteTimeIfNeeded:
	LSR.w SA1IRAM.CachedThisFrame
	BCS ++

	JSL CacheSA1Stuff

++	STZ.b $12
	JML $008034

CacheSA1Stuff:
	REP #$20 ; 16 bit first
	LDA.b $10 : STA.w SA1IRAM.CopyOf_10
	LDA.b $1A : STA.w SA1IRAM.CopyOf_1A
	LDA.b $20 : STA.w SA1IRAM.CopyOf_20
	LDA.b $22 : STA.w SA1IRAM.CopyOf_22
	LDA.b $2A : STA.w SA1IRAM.CopyOf_2A
	LDA.b $30 : STA.w SA1IRAM.CopyOf_30
	LDA.b $A0 : STA.w SA1IRAM.CopyOf_A0
	LDA.b $A4 : STA.w SA1IRAM.CopyOf_A4
	LDA.b $E2 : STA.w SA1IRAM.CopyOf_E2
	LDA.b $E8 : STA.w SA1IRAM.CopyOf_E8
	LDA.w $0B08 : STA.w SA1IRAM.CopyOf_0B08
	LDA.l $7EF36C : STA.w SA1IRAM.CopyOf_7EF36C

	; 8 bit stuff
	SEP #$20
	LDA.b $6C : STA.w SA1IRAM.CopyOf_6C
	LDA.b $EE : STA.w SA1IRAM.CopyOf_EE
	LDA.b $B0 : STA.w SA1IRAM.CopyOf_B0
	LDA.w $02A2 : STA.w SA1IRAM.CopyOf_02A2
	LDA.w $02FA : STA.w SA1IRAM.CopyOf_02FA
	LDA.w $04A0 : STA.w SA1IRAM.CopyOf_04A0
	LDA.w $04B4 : STA.w SA1IRAM.CopyOf_04B4
	LDA.l $7EC011 : STA.w SA1IRAM.CopyOf_7EC011

	INC.w SA1IRAM.CachedThisFrame ; flag this
	RTL

Extra_SA1_Transfers:
	SEP #$30
	LDA.l !ram_superwatch
	ASL
	TAX
	SEP #$30
	JSR (.superwatchtransfers, X)

	RTL

.superwatchtransfers
	dw ..off
	dw ..ancillae
	dw ..uw
	dw ..off

..ancillae
	LDA.w $03C4 : STA.w SA1IRAM.CopyOf_03C4
	LDA.w $03A4 : STA.w SA1IRAM.CopyOf_03A4

	LDX.b #$09
--	LDA.w $0C4A, X : STA.w SA1IRAM.CopyOf_0C4A, X
	LDA.w $0C5E, X : STA.w SA1IRAM.CopyOf_0C5E, X
	DEX
	BPL --

..off
	RTS

..uw
	REP #$20
	LDA.b $A6 : STA.w SA1IRAM.CopyOf_A6
	LDA.b $A8 : STA.w SA1IRAM.CopyOf_A8
	LDX.b $AA : STX.w SA1IRAM.CopyOf_AA
	
	LDA.w $0400 : STA.w SA1IRAM.CopyOf_0400
	LDA.w $0402 : STA.w SA1IRAM.CopyOf_0402
	LDX.w $0408 : STX.w SA1IRAM.CopyOf_0408
	LDX.w $040A : STX.w SA1IRAM.CopyOf_040A
	LDX.w $040C : STX.w SA1IRAM.CopyOf_040C
	LDA.w $04BA : STA.w SA1IRAM.CopyOf_04BA
	LDA.w $068E : STA.w SA1IRAM.CopyOf_068E
	LDA.w $0690 : STA.w SA1IRAM.CopyOf_0690

	LDA.l $7EC000 : TAX : STX.w SA1IRAM.CopyOf_7EC000

	LDX.b #$1E
--	LDA.w $0600, X : STA.w SA1IRAM.CopyOf_0600, X
	DEX
	DEX
	BPL --

	RTS

;==============================================================================
InitSA1:
	REP #$20

	LDA #$0020
	STA.w $2200

	LDA.w #SA1Reset00
	STA.w $2203

	LDA.w #SA1NMI00
	STA.w $2205

	LDA.w #SA1IRQ00
	STA.w $2207

	LDA.w #$8180
	STA.w $2220
	STA.w $2222

	SEP #$20
	LDA #$80
	STA.w $2226

	LDA.b #$03
	STA.w $2224

	LDA #$FF
	STA.w $2202
	STA.w $2229
	STZ.w $2228

	REP #$20

	STZ.b $F0
	STZ.b $F2
	STZ.b $F4
	STZ.b $F6

	STZ.w SA1IRAM.CopyOf_F0
	STZ.w SA1IRAM.CopyOf_F2
	STZ.w SA1IRAM.CopyOf_F4
	STZ.w SA1IRAM.CopyOf_F6

	STZ.w SA1IRAM.HDMA_ASK
	STZ.w SA1IRAM.cm_submodule
	STZ.w SA1IRAM.preset_addr
	STZ.w SA1IRAM.TIMER_FLAG

	STZ.w SA1IRAM.SEG_TIME_F
	STZ.w SA1IRAM.SEG_TIME_S
	STZ.w SA1IRAM.SEG_TIME_M
	STZ.w SA1IRAM.SEG_TIME_F_DISPLAY
	STZ.w SA1IRAM.SEG_TIME_S_DISPLAY
	STZ.w SA1IRAM.SEG_TIME_M_DISPLAY

	STZ.w SA1IRAM.SHORTCUT_USED
	STZ.w $2200

	SEP #$30
	RTL

SA1Reset:
	SEI
	CLC
	XCE

	REP #$FB

	LDA #$0000
	TCD

	LDA #$37FF
	TCS

	PHK
	PLB

	LDA.w #SNES_CUSTOM_NMI_BOUNCE ; set up custom NMI vector
	STA.w $220C

	SEP #$30
	STZ.w $2209 ; but don't use it
	STZ.w $2210

	STZ.w $2230
	STZ.w $2231

	LDA.b #$80
	STA.w $2227

	LDA.b #$03
	STA.w $2225 ; image 3 for page $60

	LDA.b #$FF
	STA.w $222A

	LDA.b #$F0
	STA.w $220B

	LDA.b #$90
	STA.w $220A

	REP #$34
	LDX.w #(SA1RAM.end_of_clearable_sa1ram-SA1RAM.clearable_sa1ram)-1

--	STZ.w SA1RAM.clearable_sa1ram, X
	DEX
	DEX
	BPL --

--	BRA --

; SA1IRAM.TIMER_FLAG bitfield:
; 7 - timers have been set and are awaiting a hud update
; 6 - reset timer
; 5
; 4
; 3
; 2 - Update without blocking further updates
; 1 - One update then no more
; 0 - 
SA1NMI:
	REP #$30
	PHA
	PHX
	PHY
	PHD
	PHB

	SEP #$30
	LDA.b #$10
	STA.l $00220B

	PHK
	PLB

	LDA.w $2301
	AND.b #$03
	ASL
	TAX


	JSR.w (.nmis, X)

#SA1NMI_EXIT:
	REP #$30
	PLB
	PLD
	PLY
	PLX
	PLA
	RTI

.nmis
	dw .disable_custom_nmi
	dw .enable_custom_nmi
	dw SA1NMI_COUNTERS
	dw .nothing_at_all

.disable_custom_nmi
	STZ.w $2209

.nothing_at_all
	RTS

.enable_custom_nmi
	LDA.b #$10
	STA.w $2209
	RTS

SA1NMI_COUNTERS:
	SED

.update_counters
	; if $12 = 1, then we weren't done with game code
	; that means we're in a lag frame
	LDA.b SA1IRAM.CopyOf_12 ; STA.b SA1IRAM.CopyOf_12_B
	LSR
	REP #$20
	LDA.b SA1IRAM.ROOM_TIME_LAG : ADC.w #$0000 ; carry set from $12 being 1
	STA.b SA1IRAM.ROOM_TIME_LAG

	SEP #$21 ; include carry so we can do +0+1
	LDA.b SA1IRAM.ROOM_TIME_F : ADC.b #$00
	CMP.b #$60
	BCC .rtFOK

.rtF60
	LDA.b #$00

.rtFOK
	STA.b SA1IRAM.ROOM_TIME_F

	REP #$20 ; seconds have 3 digits
	LDA.b SA1IRAM.ROOM_TIME_S : ADC.w #$0000 ; increments by 1 if F>=60
	STA.b SA1IRAM.ROOM_TIME_S

	SEP #$21 ; include carry
	LDA.b SA1IRAM.SEG_TIME_F : ADC.b #$00
	CMP.b #$60
	BCC .stFOK

.stF60
	LDA.b #$00

.stFOK
	STA.b SA1IRAM.SEG_TIME_F

	LDA.b SA1IRAM.SEG_TIME_S : ADC.b #$00 ; increments by 1 if F>=60
	CMP.b #$60
	BCC .stSOK

.stS60
	LDA.b #$00

.stSOK
	STA.b SA1IRAM.SEG_TIME_S

	REP #$20
	LDA.b SA1IRAM.SEG_TIME_M : ADC #$0000 ; increments by 1 if S>=60
	STA.b SA1IRAM.SEG_TIME_M

.dont_update_counters
	CLD

	SEP #$20
	LDA.b SA1IRAM.TIMER_FLAG 
	BMI .donothing
	BEQ .donothing

	BIT.b SA1IRAM.TIMER_FLAG
	REP #$30

	LDA.w #SA1IRAM.timers_end-SA1IRAM.timers_start-1

	LDX.w #SA1IRAM.ROOM_TIME_F
	LDY.w #SA1IRAM.ROOM_TIME_F_DISPLAY

	MVN $00,$00

	BVC .dontreset

	STZ.b SA1IRAM.ROOM_TIME_F+0
	STZ.b SA1IRAM.ROOM_TIME_F+2
	STZ.b SA1IRAM.ROOM_TIME_F+4
	STZ.b SA1IRAM.ROOM_TIME_F+6

.dontreset
	SEP #$30
	LDA #$80
	STA.b SA1IRAM.TIMER_FLAG

.donothing
++	RTS

; For everything not a timer
SA1IRQ:
	SEI

	REP #$30
	PHA
	PHX
	PHY
	PHD
	PHB

	SEP #$30

	LDA.b #$80
	STA.l $00220B

	PHK
	PLB

	LDA.w $2301 ; get IRQ type
	AND.b #$03
	ASL
	TAX

	JSR (.irq_type, X)

	REP #$30
	PLB
	PLD
	PLY
	PLX
	PLA
	RTI

.irq_nothing
	RTS

.irq_type
	dw .irq_nothing
	dw .irq_shortcuts
	dw .irq_nothing
	dw .irq_hud

	dw .irq_nothing
	dw .irq_nothing
	dw .irq_nothing
	dw .irq_nothing

.irq_hud
	JSL draw_hud_extras
	RTS

.irq_shortcuts
	JSL DoShortCuts
	RTS
