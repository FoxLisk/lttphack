; regex
; dl (\$......) : db \$01 : db (\$..)
; %write8\($1, $2\)
;
; dl (\$......) : db \$02 : dw (\$....)
; %write16\($1, $2\)

; TODO?
; command for changing read address of arbitrary data
; command for writing palette
!PRESET_WRITE_END   = $0000
!PRESET_WRITE_8     = $0001
!PRESET_WRITE_16    = $0002
!PRESET_WRITE_ITEM  = $0003

!PRESET_WRITE_2N    = $0004
!PRESET_WRITE_2N1   = $0005
!PRESET_WRITE_SRAM  = $0006

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

macro write_room(room, n)
	dw <room>*2 : dw <n>
endmacro

macro write_room(room, n)
	dw !PRESET_WRITE_ROOM
	dw <room>*2 : dw <n>
endmacro



;===============================================================================
; Preset format:
;	%preset_ow("Name", pointer)
;	%preset_uw("Name", pointer)
;===============================================================================
;	dw $0104 ; Room Index
;	dw $2110 ; BG1 Vertical Scroll
;	dw $2110 ; BG2 Vertical Scroll
;	dw $0900 ; BG1 Horizontal Scroll
;	dw $0900 ; BG2 Horizontal Scroll
;	dw $0940 ; Link X
;	dw $215A ; Link Y
;	dw $017F ; Camera X
;	dw $017F ; Camera Y
;	dw $0816 ; Door Settings
;	dw $2100 ; Relative Coords HU
;	dw $2000 ; Relative Coords FU
;	dw $2110 ; Relative Coords HD
;	dw $2110 ; Relative Coords FD
;	dw $0900 ; Relative Coords HL
;	dw $0900 ; Relative Coords FL
;	dw $0900 ; Relative Coords HR
;	dw $0A00 ; Relative Coords FR
;	dw $0000 ; Quadrant 1
;	dw $0200 ; Quadrant 2
;	db $03 ; Main Graphics
;	db $FF ; Music Track
;	db $00 ; Starting Floor
;	db $FF ; Palace No
;	db $00 ; Door Orientation
;	db $00 ; Starting Background
;	dl wram_data_pointer
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




; dw $0000 ; swap to 16-bit writes
; dw BANK7E_ADDRESS : dw VAL
;
; dw $0000 ; swap to 16-bit writes
; dw BANK7E_ADDRESS : dw VAL

; dw $0000 ; swap to bank 7F
; dw BANK7F_ADDRESS : db VAL
; 
; all start as dw $90xx
;  dw $9000 : db n : dw $ADDR - write 2n bytes to address
;  dw $9001 : db n : dw $ADDR - write 2n+1 bytes to address
; ....




; possible improvements: making a counter for number of bytes
; but that shouldn't be necessary, hopefully
preset_load:
	PHP

	SEP #$20
	STZ.w $4200

	REP #$30
	PHA
	PHX
	PHY

	PHB
	PHD

	PEA.w $3000
	PLD

	SEP #$20
	LDA.b #$7E
	PHA
	PLB ; do stuff in bank 7E first

	REP #$20
	LDX.b SA1IRAM.preset_type
	JSR (.preset_types, X)

	REP #$30
	LDY.w #$0000
	LDA.w #$0001
	JMP .new_command



.toBank7F
	SEP #$20
	LDA.b #$7F
	PHA
	PLB
	REP #$20
	BRA .write8bit

.writeSRAM
	SEP #$21
	LDA.b #$7E
	PHA
	PLB
	REP #$20

	INY
	INY
	LDA.b [SA1IRAM.preset_reader], Y
	SBC.b SA1IRAM.preset_prog
	INC
	STA.b SA1IRAM.preset_writer


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
	LDA.b [SA1IRAM.preset_progr]
	STA.w $7EF000, X
	BRA ..next_from_room

..done
	JMP .done

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

.done
	PLD
	PLB

	REP #$30
	PLY
	PLX
	PLA

	PLP
	RTL

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

	LDA.b SA1IRAM.preset_reader+1 ; copy bank of data
	STA.b SA1IRAM.preset_reader2+1

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

	RTS

.preset_types
	dw preset_load_dungeon
	dw preset_load_overworld


.commands
	dw .done
	dw .write8bit
	dw .write16bit
	dw .writeItems

	dw .write2N
	dw .write2Nplus1
	dw .writeSRAM
	dw .done

	dw .done
	dw .done
	dw .done
	dw .done

	dw .done
	dw .done
	dw .done
	dw .toBank7F

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
	LDY.w #$0002

	; Room ID
	LDA.b [SA1IRAM.preset_addr] : STA.w $00A0 : STA.w $04BE

	; if camera problems persist, try adding back commented addresses
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E6 ; $0124
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E8 ; $0122
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E0 ; $0120
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00E2 ; $011E

	; Coordinates
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0022
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0020

	; Camera
	LDA.b [SA1IRAM.preset_addr], Y : INY #2
	STA.w $061C : INC #2 : STA.w $061E

	LDA.b [SA1IRAM.preset_addr], Y : INY #2
	STA.w $0618 : INC #2 : STA.w $061A

	LDA.w #$01F8 : STA.w $00EC

	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0696 : STZ.w $0698
	
	; more camera
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0600
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0602
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0604
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0606
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $0608
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $060A
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $060C
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $060E

	; quadrants
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00A6
	LDA.b [SA1IRAM.preset_addr], Y : INY #2 : STA.w $00A9

