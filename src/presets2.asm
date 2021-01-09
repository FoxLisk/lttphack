; TODO add preset header
; replace ~ with ' for comments
pushpc
org $02FFC7
LoadEntrance_long:
	SEP #$30
	JSR DungeonLoadEntrance ; does PHK itself
	RTL







pullpc
PRESET_MENU:
	SEP #$30
	LDA.w !ram_preset_category
	ASL
	CLC
	ADC.w !ram_preset_category
	TAX

	REP #$20
	LDA.l .pointers-1, X
	AND.w #$FF00
	STA.b SA1IRAM.cm_cursor+0

	LDA.l .pointers+1, X
	STA.b SA1IRAM.cm_cursor+2

	; put bank in appropriate places
	STA.b SA1IRAM.preset_addr+1
	STA.b SA1IRAM.preset_prog+1
	STA.b SA1IRAM.preset_pert+1
	STA.b SA1IRAM.preset_reader+1
	STA.b SA1IRAM.preset_reader2+1

	LDA.b [SA1IRAM.cm_current_menu] ; save data pointer
	STA.b SA1IRAM.preset_prog

	; adjust the pointer to be in the correct spot for the menu
	LDA.b SA1IRAM.cm_current_menu
	CLC
	ADC.w #$0002
	STA.b SA1IRAM.cm_current_menu
	RTL

.pointers
	dl preset_header_nmg
	dl preset_header_hundo
	dl preset_header_lownmg
	dl preset_header_low
	dl preset_header_ad2020
	dl preset_header_ad
	dl preset_header_anyrmg




; TODO?
; command for writing palette
!PRESET_WRITE_END   = $0000
!PRESET_WRITE_8     = $0001
!PRESET_WRITE_16    = $0002
!PRESET_WRITE_ITEM  = $0003

!PRESET_WRITE_2N    = $0004
!PRESET_WRITE_2N1   = $0005

!PRESET_WRITE_7F    = $000F


macro write_end()
	dw !PRESET_WRITE_END
endmacro

macro write_7F()
	dw !PRESET_WRITE_7F
endmacro

macro write_items()
	dw !PRESET_WRITE_ITEM
endmacro

macro write8_enable()
	dw !PRESET_WRITE_8
endmacro

macro write16_enable()
	dw !PRESET_WRITE_16
endmacro

macro write8(addr, data)
	dw <addr> : db <data>
endmacro

macro write16(addr, data)
	dw <addr> : dw <data>
endmacro

macro write_2N(addr, n)
	dw !PRESET_WRITE_2N
	dw <addr> : db <n>
endmacro

macro write_2N1(addr, n)
	dw !PRESET_WRITE_2N1
	dw <addr> : db <n>
endmacro

macro writeroom(room, n)
	dw <room>*2 : dw <n>
endmacro

;===============================================================================
; Preset format:
;	%preset_ow("Name", pointer)
;===============================================================================
; taken care of by macros:
;	dw SRAM endpoint
;	dw Persistence Start
;	dw Persistence End
; Preset data:
;	dw Room/Screen ID
;	dw Link X
;	dw Link Y
;	dw Camera V
;	dw Camera H
;	db Item
;	db Link direction

;
;	UW ONLY
;	db Room layout
;	db Entrance
;	db Main GFX
;	db Music
;	db Floor
;	db Palace No
;	db Door
;	db Layer
;
;
;	OW ONLY
;	dw Scroll X
;	dw Scroll Y
;	dw Unknown 1
;	dw Unknown 2
;	dw Unknown 3
;
;	wram data
;	startPersistence(startofdata)
;	startSRAM(endofdata)
;
; wram_data_pointer:
; dw WRAM_ADDRESS : db VAL
;
; special commands:
; dw $0000 - end of data
; dw $0001 - swap to 8-bit write mode
; dw $0002 - swap to 16-bit write mode
; dw $0003 - swap to write items mode (please be in bank 7E)
; dw $0004 - swap to 16-bit write 2n bytes mode
; dw $0005 - swap to 16-bit write 2n+1 bytes mode

; dw $000F - swap to bank 7F (write mode becomes 8 bit)
; format:
;   dw ADDR : db n

preset_load:

	SEP #$20
	STZ.w $4200

	PEA.w $3000
	PLD

	SEP #$20
	LDA.b #$7E
	PHA
	PLB ; do stuff in bank 7E first

	; make the banks match just in case
	LDA.b SA1IRAM.preset_addr+2
	STA.b SA1IRAM.preset_prog+2
	STA.b SA1IRAM.preset_pert+2
	STA.b SA1IRAM.preset_reader+2
	STA.b SA1IRAM.preset_reader2+2

	; fill up addresses from preset header
	REP #$31
	LDY.w #$0002 ; start getting data for the preset

	; get the persistence data location
	LDA.b [SA1IRAM.preset_addr]
	STA.b SA1IRAM.preset_pert

	LDA.b [SA1IRAM.preset_addr], Y
	STA.b SA1IRAM.preset_pert_end

	INY : INY
	LDA.b [SA1IRAM.preset_addr], Y
	STA.b SA1IRAM.preset_prog_end


	; get stuff every preset has

	; Room/Screen ID
	LDA.b [SA1IRAM.preset_addr] : PHA ; save this

	; Link X and Y
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0022
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0020

	; Camera V and H
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E6 : STA.w $00E8
	SEC : SBC.w #$017F : AND.w #$01FF
	STA.w $061E : DEC : DEC : STA.w $061C

	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E0 : STA.w $00E2
	SEC : SBC.w #$0086 : AND.w #$01FF
	STA.w $0618 : DEC : DEC : STA.w $061A

	; Item
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $0303

	; Link's direction
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $002F

	PLA ; get ID back
	LDX.b SA1IRAM.preset_type
	JSR (.preset_types, X)

	; do the arbitrary writes first
	REP #$31
	LDA.w #$0001
	JSR .new_command


	SEP #$30 ; bank 7E again
	LDA.b #$7E
	PHA
	PLB

	REP #$30
	; now do the persistent writes
	LDY.w #$0000
	LDA.b SA1IRAM.preset_pert
	STA.b SA1IRAM.preset_reader

.persist
	JSR .start_arb
	CPY.b SA1IRAM.preset_pert_end
	BCC .persist

	; time for some fixers
	PHK
	PLB

	; do hud items from the items we have
	SEP #$30
	LDA.b #$7E : STA.b SA1IRAM.preset_reader+2

	LDY.w $0303
	LDA.w .item_to_menu, Y
	STA.w $0202

	CPY.b #$00
	REP #$30
	BEQ .no_item

.have_item
	TYA
	ASL : ASL ; get offset for this
	TAY

	LDX.w .item_HUD+0, Y ; bank0D offset
	STX.b SA1IRAM.preset_reader2

	LDA.w .item_HUD+2, Y ; bank7E SRAM val
	STA.b SA1IRAM.preset_reader+0

	LDA.b [SA1IRAM.preset_reader]
	AND.w #$00FF

	CPY.w #$0001*4 : BEQ .bombs_adjust
	CPY.w #$000B*4 : BNE .normal_item

.bottle_adjust
	TAX
	LDA.l $7EF35C-1, X
	AND.w #$00FF

.normal_item
	ASL
	ASL
	ADC.b SA1IRAM.preset_reader2
	TAX
	BRA .draw_item

.bombs_adjust
	CMP.w #$0001
	BCS .draw_item

.no_item
	LDX.w #$FEE7

.draw_item
	LDA.l $0D0000, X : STA.w SA1RAM.HUD+$04A
	LDA.l $0D0002, X : STA.w SA1RAM.HUD+$04C
	LDA.l $0D0004, X : STA.w SA1RAM.HUD+$08A
	LDA.l $0D0006, X : STA.w SA1RAM.HUD+$08C

	; make rupees match
	LDA.l $7EF362 : STA.l $7EF360

	; these are hardcoded
	; DISGUSTING

	; add sanc heart for nmg
	LDA.w !ram_preset_category
	AND.w #$00FF
	BEQ .notNMG

	; add powder for nmg
	LDA.b SA1IRAM.preset_addr
	CMP.w #presetmenu_nmg_eastern_octorok
	BCC .noitembonus

	LDA.w !ram_nmg_sanctuary_heart
	AND.w #$00FF
	BEQ .nosanc

	LDA.l $7EF36C : CLC : ADC.w #$0807 ; carry is set here
	STA.l $7EF36C

	LDA.b SA1IRAM.preset_addr

.nosanc
	CMP.w #presetmenu_nmg_eastern_after_lost_woods
	BCC .noitembonus

	SEP #$20
	LDA.w !ram_nmg_powder
	STA.l $7EF344
	REP #$20

.noitembonus
.notNMG


.done
	SEP #$20
	LDA.b #$41 : STA.b SA1IRAM.TIMER_FLAG

	LDA.b #$00
	PHA
	PLB

	PEA.w $0000
	PLD

	; reset stuff before preset goes
	JSL Player_ResetState
	STZ.w $02E4
	STZ.w $0112
	STZ.w $0345
	STZ.w $0216
	STZ.w $03F3
	STZ.w $0322

	STZ.b $57
	STZ.b $5D
	STZ.b $EF

	STZ.w SA1IRAM.LanmoCycles+0
	STZ.w SA1IRAM.LanmoCycles+1
	STZ.w SA1IRAM.LanmoCycles+2

	JSL SNES_DISABLE_CUSTOM_NMI

	REP #$30
	LDA.w #$01FF
	TCS

	SEP #$30
	LDA.b #$81
	STA.w $4200

	STZ.b $12
	JML $008034


; $0303 -> $0202
.item_to_menu
	db $00 ; $00 - Nothing
	db $04 ; $01 - Bombs
	db $02 ; $02 - Boomerang
	db $01 ; $03 - Bow
	db $0C ; $04 - Hammer
	db $06 ; $05 - Fire Rod
	db $07 ; $06 - Ice Rod
	db $0E ; $07 - Bug catching net
	db $0D ; $08 - Flute
	db $0B ; $09 - Lamp
	db $05 ; $0A - Magic Powder
	db $10 ; $0B - Bottle
	db $0F ; $0C - Book of Mudora
	db $12 ; $0D - Cane of Byrna
	db $03 ; $0E - Hookshot
	db $08 ; $0F - Bombos Medallion
	db $09 ; $10 - Ether Medallion
	db $0A ; $11 - Quake Medallion
	db $11 ; $12 - Cane of Somaria
	db $13 ; $13 - Cape
	db $14 ; $14 - Magic Mirror

; dw bank0D address, SRAM address
.item_HUD
	dw $0DF699, $7EF343 ; $01 - Bombs
	dw $0DF671, $7EF341 ; $02 - Boomerang
	dw $0DF649, $7EF340 ; $03 - Bow
	dw $0DF721, $7EF34B ; $04 - Hammer
	dw $0DF6C1, $7EF345 ; $05 - Fire Rod
	dw $0DF6D1, $7EF346 ; $06 - Ice Rod
	dw $0DF751, $7EF34D ; $07 - Bug catching net
	dw $0DF731, $7EF34C ; $08 - Flute
	dw $0DF711, $7EF34A ; $09 - Lamp
	dw $0DF6A9, $7EF344 ; $0A - Magic Powder
	dw $0DF771, $7EF34F ; $0B - Bottle
	dw $0DF761, $7EF34E ; $0C - Book of Mudora
	dw $0DF7C9, $7EF351 ; $0D - Cane of Byrna
	dw $0DF689, $7EF342 ; $0E - Hookshot
	dw $0DF6E1, $7EF347 ; $0F - Bombos Medallion
	dw $0DF701, $7EF348 ; $10 - Ether Medallion
	dw $0DF6F1, $7EF349 ; $11 - Quake Medallion
	dw $0DF7B9, $7EF350 ; $12 - Cane of Somaria
	dw $0DF7D9, $7EF352 ; $13 - Cape
	dw $0DF7E9, $7EF353 ; $14 - Magic Mirror



;===============================================================================

.write8bit
	INY
	INY

	SEP #$20
	LDA.b [SA1IRAM.preset_reader], Y
	STA.b (SA1IRAM.preset_writer)
	REP #$20

	INY
	LDA.b [SA1IRAM.preset_reader], Y
	CMP.w #$0010
	BCC .new_command

.start_8bit
	STA.b SA1IRAM.preset_writer
	BRA .write8bit

.write16bit
	INY
	INY

	LDA.b [SA1IRAM.preset_reader], Y
	STA.b (SA1IRAM.preset_writer)

	INY
	INY
	LDA.b [SA1IRAM.preset_reader], Y
	CMP.w #$0010
	BCC .new_command

	STA.b SA1IRAM.preset_writer
	BRA .write16bit

.toBank7F
	SEP #$20
	LDA.b #$7F
	PHA
	PLB
	REP #$20
	INY
	INY
	LDA.b [SA1IRAM.preset_reader], Y
	CMP.w #$0010
	BCS .start_8bit
	BRA .new_command


.start_arb
	LDA.b [SA1IRAM.preset_reader], Y

.new_command
	ASL
	TAX

	INY
	INY
	LDA.b [SA1IRAM.preset_reader], Y
	STA.b SA1IRAM.preset_writer

	JMP (.commands, X)

.write2N
	INY
	INY

	JSR .setupAndDo2N

	PLY
	LDA.b [SA1IRAM.preset_reader], Y
	CMP.w #$0010
	BCC .new_command

	STA.b SA1IRAM.preset_writer
	BRA .write2N

.write2Nplus1
	INY
	INY

	JSR .setupAndDo2N

	; one last byte
	SEP #$20
	LDA.b [SA1IRAM.preset_reader2], Y
	STA.b (SA1IRAM.preset_writer), Y
	REP #$20

	PLY
	INY ; account for the last byte
	LDA.b [SA1IRAM.preset_reader], Y
	CMP.w #$0010
	BCC .new_command

	STA.b SA1IRAM.preset_writer
	BRA .write2Nplus1

.setupAndDo2N
	LDA.b [SA1IRAM.preset_reader], Y
	AND.b #$00FF
	STA.b SA1IRAM.preset_scratch+0

	PLX ; recover return address

	SEC ; since we also want to add 1
	TYA ; let's move Y to the end of this data block
	ADC.b SA1IRAM.preset_scratch+0
	PHA ; push new location of Y
	PHX ; push return address

	LDX.b SA1IRAM.preset_scratch+0 ; get size of transfer

	; get first byte of the data so we can do Y=0 to start both
	SEC ; again, we want to add 1, to account for the size byte
	TYA
	ADC.b SA1IRAM.preset_reader+0 ; address to read from
	STA.b SA1IRAM.preset_reader2+0
	TAY

..next
	LDA.b [SA1IRAM.preset_reader2], Y
	STA.b (SA1IRAM.preset_writer), Y
	INY
	INY
	DEX
	BNE ..next

#preset_abort_fast:
	RTS

.preset_types
	dw preset_abort_fast
	dw preset_load_dungeon
	dw preset_load_overworld


.commands
	dw .done_arb
	dw .write8bit
	dw .write16bit
	dw .writeItems

	dw .write2N
	dw .write2Nplus1
	dw .done
	dw .done

	dw .done_arb
	dw .done_arb
	dw .done_arb
	dw .done_arb

	dw .done_arb
	dw .done_arb
	dw .done_arb
	dw .toBank7F





.writeSRAM
	SEP #$21
	LDA.b #$7E
	PHA
	PLB
	REP #$20

	INY
	INY



	LDY.w #$0000
	BRA ..start

..next_from_room
	INY

..next
	INY

..start
	LDA.b [SA1IRAM.preset_prog], Y

	INY
	INY
	CPY.b SA1IRAM.preset_writer
	BCS ..done

	TAX
	BPL ..write_room

	SEP #$20
	LDA.b [SA1IRAM.preset_reader], Y
	STA.w $7E0000, X
	REP #$20
	BRA ..next

..write_room
	LDA.b [SA1IRAM.preset_prog]
	STA.w $7EF000, X
	BRA ..next_from_room

..done
.done_arb
	RTS



.writeItems:
	SEP #$20
; BYTE 1:
; aabbbbbb
; a - bow
; b - bombs
; 

	SEP #$20
	

; BYTE 1:
; abcdefgh
; a - 
; b - 
; c - 
; d - 
; e - 
; f - 
; g - 
; h - 

; BYTE 1:
; abcdefgh
; a - 
; b - 
; c - 
; d - 
; e - 
; f - 
; g - 
; h - 

; BYTE 1:
; abcdefgh
; a - 
; b - 
; c - 
; d - 
; e - 
; f - 
; g - 
; h - 

; BYTE 1:
; abcdefgh
; a - 
; b - 
; c - 
; d - 
; e - 
; f - 
; g - 
; h - 

; BYTE 1:
; abcdefgh
; a - 
; b - 
; c - 
; d - 
; e - 
; f - 
; g - 
; h - 

	JMP .new_command
;===============================================================================







preset_load_dungeon:
	; we come preloaded with dungeon ID
	STA.w $00A0 : STA.w $04BE

	; entrance
	SEP #$20
	LDA.b [SA1IRAM.preset_addr], Y
	STA.w $010E

	; quadrants
	STZ.w $00A6

	; ab....cd
	; a bit that goes in $A6
	; b bit that goes in $A7
	; c bit that goes in $A9
	; d bit that goes in $AA
	LDA.b [SA1IRAM.preset_addr], Y
	INY

	STA.b SA1IRAM.preset_writer
	ASL : ROL.w $00A6 : ASL.w $00A6
	ASL : ROL.w $00A7 : ASL.w $00A7
	LDA.b SA1IRAM.preset_writer : AND.b #$01 : STA.w $00A9
	LDA.b SA1IRAM.preset_writer : AND.b #$02 : STA.w $00AA

	; graphics
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $0AA1

	; Music
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $0132
	CMP.b #$03 : BNE .notbeginning

	LDA.l $7EF3C5 : CMP.b #$02 : BCC .nozelda

	LDA.b #$12

.nozelda
	STA.w $0132

.notbeginning

	; Floor
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $00A4

	; Dungeon ID
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $040C

	; Layer
	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $006C

	LDA.b [SA1IRAM.preset_addr], Y : INY : STA.w $00EE
	AND.b #$0F : STA.w $0476

	REP #$20

	; configure camera based on coordinates
	LDA.w $0020
	AND.w #$FF00 : STA.w $0600
	ORA.w #$0010 : STA.w $0604
	AND.w #$FE00 : STA.w $0602
	ORA.w #$0110 : STA.w $0606

	LDA.w $0022
	AND.w #$FF00 : STA.w $0608 : STA.w $060C
	AND.w #$FE00 : STA.w $060A
	ORA.w #$0100 : STA.w $060E

	; other stuff to set
	STZ.w $0698
	LDA.w #$01F8 : STA.w $00EC

	SEP #$20
	LDA.b #$01 : STA.w $001B

	RTS
