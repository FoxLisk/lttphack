!white = $3C10
!blue = $2C10
!yellow = $3410
!red = $3810
!gray = $2010

pushpc
org $0DFAAE
	JMP fire_hud_irq

org $0DDD24
	JSR fire_hud_irq
	PLB
	RTL

; some nice free ram here
org $0DDB07
fire_hud_irq:
	SEP #$30
	LDA.b #$83
	STA.w $2200
	INC $16
	RTS

warnpc $0DDB3F

pullpc

;==============================================================================
; 
;==============================================================================
UpdateCounterLine:
	LSR
	BCC .nothing
	LDA.b SA1IRAM.SCRATCH+8
	ASL
	SEP #$31

	TAY
	INC.b SA1IRAM.SCRATCH+8

	REP #$30
	LDX.w .line, Y

	CPX.w #(5<<6+$2E) ; line 6 is too much
	BCS .nothing

	SEC
	RTS

.nothing
	REP #$31
	RTS

.line
	dw $0200 ; to write to nowhere useful
	dw (0<<6)+$2E
	dw (1<<6)+$2E
	dw (2<<6)+$2E
	dw (3<<6)+$2E
	dw (4<<6)+$2E

;==============================================================================
; A = address
; Y = color
;==============================================================================
Draw:
.all
..one
	STA.b SA1IRAM.SCRATCH+10
	STY.b SA1IRAM.SCRATCH+12
	BRA .digit1

..two
	STA.b SA1IRAM.SCRATCH+10
	STY.b SA1IRAM.SCRATCH+12
	SEP #$41 ; set overflow and carry flags for unconditional draws
	BRA .digit10

..three
	STA.b SA1IRAM.SCRATCH+10
	STY.b SA1IRAM.SCRATCH+12
	SEP #$41 ; set overflow and carry flags for unconditional draws
	BRA .digit100

.short
..two
	STA.b SA1IRAM.SCRATCH+10
	STY.b SA1IRAM.SCRATCH+12
	JSR .set_conditional_flags_d2
	BRA .digit10

..three
	STA.b SA1IRAM.SCRATCH+10
	STY.b SA1IRAM.SCRATCH+12
	JSR .set_conditional_flags_d3
	BRA .digit100

.digit100
	LDA.w #$207F
	BVC ..draw
	LDA.b (SA1IRAM.SCRATCH+10)
	XBA
	AND.w #$000F
	ORA.b SA1IRAM.SCRATCH+12
..draw
	STA.w SA1HUD+10, X

.digit10
	LDA.w #$207F
	BCC ..draw
	LDA.b (SA1IRAM.SCRATCH+10)
	AND.w #$00F0
	LSR
	LSR
	LSR
	LSR
	ORA.b SA1IRAM.SCRATCH+12
..draw
	STA.w SA1HUD+12, X

.digit1
	LDA.b (SA1IRAM.SCRATCH+10)
	AND.w #$000F
	ORA.b SA1IRAM.SCRATCH+12
	STA.w SA1HUD+14, X

.done
	RTS

.set_conditional_flags
..d3
	LDA.b (SA1IRAM.SCRATCH+10)
	SEP #$21 ; carry set for fewer cycles
	XBA
	ADC.b #$7E ; overflow set if digit 3 exists

	REP #$20

..d2
	LDA.b (SA1IRAM.SCRATCH+10)
	CMP.w #$0010 ; carry set if digit 2 or 3 exists
	RTS

;==============================================================================
; 
;==============================================================================
hex_to_dec_snes:
	REP #$10
	ASL : TAX
	LDA.l hex_to_dec_fast_table, X
	SEP #$20 ; slightly faster overall to use this
	TAY : AND #$0F : STA.w !ram_hex2dec_third_digit
	TYA : AND #$F0 : LSR #4 : STA.w !ram_hex2dec_second_digit
	XBA : AND #$0F : STA.w !ram_hex2dec_first_digit
	REP #$20 : TYA
	RTL

hex_to_dec_fast:
	PHP
	REP #$10
	ASL : TAX
	LDA.w hex_to_dec_fast_table, X
	SEP #$20 ; slightly faster overall to use this
	TAY : AND #$0F : STA.b SA1IRAM.SCRATCH+4
	TYA : AND #$F0 : LSR #4 : STA.b SA1IRAM.SCRATCH+2
	XBA : AND #$0F : STA.b SA1IRAM.SCRATCH+0
	PLP
	RTS

hex_to_dec_fast_table:
	dw $000, $001, $002, $003, $004, $005, $006, $007, $008, $009
	dw $010, $011, $012, $013, $014, $015, $016, $017, $018, $019
	dw $020, $021, $022, $023, $024, $025, $026, $027, $028, $029
	dw $030, $031, $032, $033, $034, $035, $036, $037, $038, $039
	dw $040, $041, $042, $043, $044, $045, $046, $047, $048, $049
	dw $050, $051, $052, $053, $054, $055, $056, $057, $058, $059
	dw $060, $061, $062, $063, $064, $065, $066, $067, $068, $069
	dw $070, $071, $072, $073, $074, $075, $076, $077, $078, $079
	dw $080, $081, $082, $083, $084, $085, $086, $087, $088, $089
	dw $090, $091, $092, $093, $094, $095, $096, $097, $098, $099
	dw $100, $101, $102, $103, $104, $105, $106, $107, $108, $109
	dw $110, $111, $112, $113, $114, $115, $116, $117, $118, $119
	dw $120, $121, $122, $123, $124, $125, $126, $127, $128, $129
	dw $130, $131, $132, $133, $134, $135, $136, $137, $138, $139
	dw $140, $141, $142, $143, $144, $145, $146, $147, $148, $149
	dw $150, $151, $152, $153, $154, $155, $156, $157, $158, $159
	dw $160, $161, $162, $163, $164, $165, $166, $167, $168, $169
	dw $170, $171, $172, $173, $174, $175, $176, $177, $178, $179
	dw $180, $181, $182, $183, $184, $185, $186, $187, $188, $189
	dw $190, $191, $192, $193, $194, $195, $196, $197, $198, $199
	dw $200, $201, $202, $203, $204, $205, $206, $207, $208, $209
	dw $210, $211, $212, $213, $214, $215, $216, $217, $218, $219
	dw $220, $221, $222, $223, $224, $225, $226, $227, $228, $229
	dw $230, $231, $232, $233, $234, $235, $236, $237, $238, $239
	dw $240, $241, $242, $243, $244, $245, $246, $247, $248, $249
	dw $250, $251, $252, $253, $254, $255, $256, $257, $258, $259
	dw $260, $261, $262, $263, $264, $265, $266, $267, $268, $269
	dw $270, $271, $272, $273, $274, $275, $276, $277, $278, $279
	dw $280, $281, $282, $283, $284, $285, $286, $287, $288, $289
	dw $290, $291, $292, $293, $294, $295, $296, $297, $298, $299
	dw $300, $301, $302, $303, $304, $305, $306, $307, $308, $309
	dw $310, $311, $312, $313, $314, $315, $316, $317, $318, $319
	dw $320, $321, $322, $323, $324, $325, $326, $327, $328, $329
	dw $330, $331, $332, $333, $334, $335, $336, $337, $338, $339
	dw $340, $341, $342, $343, $344, $345, $346, $347, $348, $349
	dw $350, $351, $352, $353, $354, $355, $356, $357, $358, $359
	dw $360, $361, $362, $363, $364, $365, $366, $367, $368, $369
	dw $370, $371, $372, $373, $374, $375, $376, $377, $378, $379
	dw $380, $381, $382, $383, $384, $385, $386, $387, $388, $389
	dw $390, $391, $392, $393, $394, $395, $396, $397, $398, $399
	dw $400, $401, $402, $403, $404, $405, $406, $407, $408, $409
	dw $410, $411, $412, $413, $414, $415, $416, $417, $418, $419
	dw $420, $421, $422, $423, $424, $425, $426, $427, $428, $429
	dw $430, $431, $432, $433, $434, $435, $436, $437, $438, $439
	dw $440, $441, $442, $443, $444, $445, $446, $447, $448, $449
	dw $450, $451, $452, $453, $454, $455, $456, $457, $458, $459
	dw $460, $461, $462, $463, $464, $465, $466, $467, $468, $469
	dw $470, $471, $472, $473, $474, $475, $476, $477, $478, $479
	dw $480, $481, $482, $483, $484, $485, $486, $487, $488, $489
	dw $490, $491, $492, $493, $494, $495, $496, $497, $498, $499
	dw $500, $501, $502, $503, $504, $505, $506, $507, $508, $509
	dw $510, $511, $512, $513, $514, $515, $516, $517, $518, $519
	dw $520, $521, $522, $523, $524, $525, $526, $527, $528, $529
	dw $530, $531, $532, $533, $534, $535, $536, $537, $538, $539
	dw $540, $541, $542, $543, $544, $545, $546, $547, $548, $549
	dw $550, $551, $552, $553, $554, $555, $556, $557, $558, $559
	dw $560, $561, $562, $563, $564, $565, $566, $567, $568, $569
	dw $570, $571, $572, $573, $574, $575, $576, $577, $578, $579
	dw $580, $581, $582, $583, $584, $585, $586, $587, $588, $589
	dw $590, $591, $592, $593, $594, $595, $596, $597, $598, $599
	dw $600, $601, $602, $603, $604, $605, $606, $607, $608, $609
	dw $610, $611, $612, $613, $614, $615, $616, $617, $618, $619
	dw $620, $621, $622, $623, $624, $625, $626, $627, $628, $629
	dw $630, $631, $632, $633, $634, $635, $636, $637, $638, $639
	dw $640, $641, $642, $643, $644, $645, $646, $647, $648, $649
	dw $650, $651, $652, $653, $654, $655, $656, $657, $658, $659
	dw $660, $661, $662, $663, $664, $665, $666, $667, $668, $669
	dw $670, $671, $672, $673, $674, $675, $676, $677, $678, $679
	dw $680, $681, $682, $683, $684, $685, $686, $687, $688, $689
	dw $690, $691, $692, $693, $694, $695, $696, $697, $698, $699
	dw $700, $701, $702, $703, $704, $705, $706, $707, $708, $709
	dw $710, $711, $712, $713, $714, $715, $716, $717, $718, $719
	dw $720, $721, $722, $723, $724, $725, $726, $727, $728, $729
	dw $730, $731, $732, $733, $734, $735, $736, $737, $738, $739
	dw $740, $741, $742, $743, $744, $745, $746, $747, $748, $749
	dw $750, $751, $752, $753, $754, $755, $756, $757, $758, $759
	dw $760, $761, $762, $763, $764, $765, $766, $767, $768, $769
	dw $770, $771, $772, $773, $774, $775, $776, $777, $778, $779
	dw $780, $781, $782, $783, $784, $785, $786, $787, $788, $789
	dw $790, $791, $792, $793, $794, $795, $796, $797, $798, $799
	dw $800, $801, $802, $803, $804, $805, $806, $807, $808, $809
	dw $810, $811, $812, $813, $814, $815, $816, $817, $818, $819
	dw $820, $821, $822, $823, $824, $825, $826, $827, $828, $829
	dw $830, $831, $832, $833, $834, $835, $836, $837, $838, $839
	dw $840, $841, $842, $843, $844, $845, $846, $847, $848, $849
	dw $850, $851, $852, $853, $854, $855, $856, $857, $858, $859
	dw $860, $861, $862, $863, $864, $865, $866, $867, $868, $869
	dw $870, $871, $872, $873, $874, $875, $876, $877, $878, $879
	dw $880, $881, $882, $883, $884, $885, $886, $887, $888, $889
	dw $890, $891, $892, $893, $894, $895, $896, $897, $898, $899
	dw $900, $901, $902, $903, $904, $905, $906, $907, $908, $909
	dw $910, $911, $912, $913, $914, $915, $916, $917, $918, $919
	dw $920, $921, $922, $923, $924, $925, $926, $927, $928, $929
	dw $930, $931, $932, $933, $934, $935, $936, $937, $938, $939
	dw $940, $941, $942, $943, $944, $945, $946, $947, $948, $949
	dw $950, $951, $952, $953, $954, $955, $956, $957, $958, $959
	dw $960, $961, $962, $963, $964, $965, $966, $967, $968, $969
	dw $970, $971, $972, $973, $974, $975, $976, $977, $978, $979
	dw $980, $981, $982, $983, $984, $985, $986, $987, $988, $989
	dw $990, $991, $992, $993, $994, $995, $996, $997, $998, $999

;==============================================================================
; 
;==============================================================================
draw_hud_extras:
	PHP
	PHB
	PHK
	PLB

	; Draw hearts
	SEP #$21
	LDA.w SA1IRAM.CopyOf_7EF36C
	SBC.w SA1IRAM.CopyOf_7EF36D
	CMP.b #$04

	REP #$30
	LDA.w #$24A0
	ADC.w #$0000
	STA.w SA1HUD+$90

	LDA.w SA1IRAM.CopyOf_7EF36D
	AND.w #$00FF
	LSR
	LSR
	LSR
	JSR hex_to_dec_fast

	LDA.b SA1IRAM.SCRATCH+2
	ORA #$3C90
	STA.w SA1HUD+$92

	LDA.b SA1IRAM.SCRATCH+4
	ORA #$3C90
	STA.w SA1HUD+$94

	LDA.w SA1IRAM.CopyOf_7EF36D
	AND.w #$0007
	ORA.w #$3490
	STA.w SA1HUD+$96

	LDA.l !ram_heartlag_spinner
	BNE .doheartlag

	LDA.w #$207F
	BRA .drawheartlag

.doheartlag
	LDA.w SA1IRAM.CopyOf_1A
	AND.w #$000C
	LSR
	LSR
	; Desired results:
	; 00  ->  00
	; 01  ->  01
	; 10  ->  11
	; 11  ->  10
	; b0 = b1 ^ b0
	; b1 = b1

	LSR ; put b1 in b0
	STA.b SA1IRAM.SCRATCH+0
	ROL ; back to normal

	EOR.b SA1IRAM.SCRATCH+0 ; b0 ^ b1
	ROR ; get to bits 14 and 15
	ROR
	ROR

	ORA.w #$253F

.drawheartlag
	STA.w SA1HUD+$98

	; containers
	LDA.w #$24A2
	STA.w SA1HUD+$9A

	LDA.w SA1IRAM.CopyOf_7EF36C
	AND.w #$00FF
	LSR
	LSR
	LSR
	JSR hex_to_dec_fast

	LDA.b SA1IRAM.SCRATCH+2
	ORA #$3C90
	STA.w SA1HUD+$9C

	LDA.b SA1IRAM.SCRATCH+4
	ORA #$3C90
	STA.w SA1HUD+$9E

	; clear up counters
	REP #$20
	SEP #$10
	LDA.w #$207F
	LDX.b #$14
--	STA.w SA1HUD+$28+($40*0), X
	STA.w SA1HUD+$28+($40*1), X
	STA.w SA1HUD+$28+($40*2), X
	STA.w SA1HUD+$28+($40*3), X
	STA.w SA1HUD+$28+($40*4), X

	DEX
	DEX
	BPL --

	LDA.w #$0001 ; start at 1 so that 0 can be a dummy write
	STA.w SA1IRAM.SCRATCH+8


	LDA.w SA1IRAM.TIMER_FLAG
	AND.w #$FF7F
	STA.w SA1IRAM.TIMER_FLAG

.roomtime

	LDA.l !ram_counters_real
	JSR UpdateCounterLine
	BCC ..skip

	LDY.w #!yellow ; color
	LDA.w #SA1IRAM.ROOM_TIME_F_DISPLAY ; address
	JSR Draw_all_two

	DEX ; down 4
	DEX
	DEX
	DEX
	LDY.w #!white ; color
	LDA.w #SA1IRAM.ROOM_TIME_S_DISPLAY ; address
	JSR Draw_short_three

..skip
.lagtime
	LDA.l !ram_counters_lag
	JSR UpdateCounterLine
	BCC ..skip

	LDY.w #!red ; color
	LDA.w #SA1IRAM.ROOM_TIME_LAG_DISPLAY ; address
	JSR Draw_short_three

..skip
.idletime
	LDA.l !ram_counters_idle
	JSR UpdateCounterLine
	BCC ..skip

	LDY.w #!white
	LDA.w #SA1IRAM.ROOM_TIME_IDLE_DISPLAY
	JSR Draw_short_three

..skip
.segmenttime
	LDA.l !ram_counters_segment
	JSR UpdateCounterLine
	BCC ..skip

	LDY.w #!gray
	LDA.w #SA1IRAM.SEG_TIME_F_DISPLAY
	JSR Draw_all_two

	DEX
	DEX
	DEX
	DEX
	LDY.w #!yellow
	LDA.w #SA1IRAM.SEG_TIME_S_DISPLAY
	JSR Draw_all_two

	DEX
	DEX
	DEX
	DEX
	LDY.w #!white
	LDA.w #SA1IRAM.SEG_TIME_M_DISPLAY
	JSR Draw_short_three

..skip
	BRA .coordinates

.calccoordposition
	CLC
	LDA.w #$0001
	ADC.l !ram_counters_real
	ADC.l !ram_counters_lag
	ADC.l !ram_counters_idle
	ADC.l !ram_counters_segment
	STA.b SA1IRAM.SCRATCH+8

.coordinates
	LDA.l !ram_xy_toggle
	BEQ ..skip

	INC ; +2 for number of digits
	INC
	PHA

	LDA.w #$0001 ; if we're here, we are updating counter
	JSR UpdateCounterLine

	PLY
	JSR DrawCoordinates

..skip
;==============================================================================
hud_draw_input_display:
	LDA.l !ram_input_display
	AND #$0003
	ASL : TAX
	LDA.w SA1IRAM.CONTROLLER_1
	XBA
	JSR (.options, X)

;==============================================================================
draw_quickwarp:
	SEP #$30 ; M=8 for just this is few cycles faster
	LDA.l !ram_qw_toggle : LSR ; shift toggle into carry
	LDA.w SA1IRAM.CopyOf_E2 : AND #$06 ; this tests the bits for camera
	ORA.w SA1IRAM.CopyOf_1B ; make QW only display in overworld, where $1B = 0
	ROL ; roll carry flag into bottom bit
	; if we're on a quick warp on the overworld
	; then we'll have $0D
	; if the camera matches but we're in the underworld
	; then we'll have $0F, and it will fail
	CMP #$0D ; 6 shifted left once and with a carry flag in bottom bit
	REP #$20 ; faster because it removes an AND #$00FF to get rid of leakage
	BEQ .qw

.notqw
	LDA.w #$207F
	STA.w SA1HUD+$10A ; 6
	BRA ++ ; 3
	; 18 cycles total

.qw ; 1 for branch
	LDA #$340C ; 3
	STA.w SA1HUD+$10A ; 6
	INC
++	STA.w SA1HUD+$10C

;==============================================================================
extra_ram:
	LDA.l !ram_extra_ram_watch : BEQ .nowatch
	LDA #$0001
	JSR UpdateCounterLine
	BCC .nowatch

	LDA.l !ram_extra_ram_watch : ASL : TAY
	LDA.w extra_ram_watch_routines, Y
	PEA.w .return-1 ; so we can RTS back
	PHA ; push the location of the routine
	RTS
.return

.nowatch
done_extras:
	JSR UpdateGlitchedWindow

	PLB : PLP
	RTL

macro add_input_character_a(pos, topbottom)
++	INY
	%add_input_character_afirst(<pos>, <topbottom>)
endmacro

macro add_input_character_afirst(pos, topbottom)
	LSR
	BCS ?inputheld

?inputnotheld:
	STX.w (!POS_MEM_INPUT_DISPLAY_<topbottom>)+<pos>
	BRA ++

?inputheld:
	STY.w (!POS_MEM_INPUT_DISPLAY_<topbottom>)+<pos>
endmacro

; this one goes backwards, since the bottom nibble is all 0
macro add_input_character_b(pos, topbottom)
++	INY ; next character
	ASL ; shift bit into carry
	BCS ?inputheld

?inputnotheld:
	STX.w !POS_MEM_INPUT_DISPLAY_<topbottom>+<pos>
	BRA ++

?inputheld:
	STY.w !POS_MEM_INPUT_DISPLAY_<topbottom>+<pos>
endmacro

hud_draw_input_display_options:
	dw .off
	dw .cool
	dw .old
	dw .off

.off
	RTS

.cool
	STA.b SA1IRAM.SCRATCH ; dpad
	AND #$000F : ORA #$2D70 : STA !POS_MEM_INPUT_DISPLAY_BOT+2

	; need buttons in this order: xbya
	SEP #$30
	LDA.b SA1IRAM.SCRATCH+0 : AND #$C0 : LSR #5 : STA.b SA1IRAM.SCRATCH+2 ; b and y in place
	LDA.b SA1IRAM.SCRATCH+1 : AND #$40 : LSR #3 : ORA.b SA1IRAM.SCRATCH+2 ; ; x in place
	; this ASL takes care of one for figuring out LR inputs
	ASL.b SA1IRAM.SCRATCH+1 : ADC #$70 ; a in place

	; #$70 is the character offset we want
	; top byte contains $29 from doing dpad, which is what we want
	REP #$20
	STA !POS_MEM_INPUT_DISPLAY_BOT+6

	; start and select
	LDA.b SA1IRAM.SCRATCH : AND #$0030 : LSR #4 : ORA #$2C00
	STA !POS_MEM_INPUT_DISPLAY_BOT+4

	; L and R
	ASL.b SA1IRAM.SCRATCH : ASL.b SA1IRAM.SCRATCH ; L into carry and remember where R is
	LDA #$2C04 : ADC #$0000 : STA !POS_MEM_INPUT_DISPLAY_TOP+2

	ASL.b SA1IRAM.SCRATCH ; R into carry
	LDA #$6C04 : ADC #$0000 : STA !POS_MEM_INPUT_DISPLAY_TOP+6

	LDA #$2C06 : STA  !POS_MEM_INPUT_DISPLAY_TOP+4
	RTS

.old
	SEP #$20
	REP #$10
	; basically: this bank | bank $7E
	; Y will hold the current input character
	LDY.w #$2400

	LDX.w #!EMPTY ; X will hold the empty character always

	; order: rlduSsYB....RLXA
	; Starting with the low byte

	; special macro to not increment Y
	%add_input_character_afirst(4, "BOT") ; dpad right
	%add_input_character_a(0, "BOT") ; dpad left
	%add_input_character_a(2, "BOT") ; dpad down
	%add_input_character_a(2, "TOP") ; dpad up

	%add_input_character_a(10, "BOT") ; start
	%add_input_character_a(10, "TOP") ; select
	%add_input_character_a(6, "TOP") ; Y
	%add_input_character_a(6, "BOT") ; B

++	XBA ; switch to high byte
	%add_input_character_b(8, "BOT") ; A
	%add_input_character_b(8, "TOP") ; X
	%add_input_character_b(0, "TOP") ; L shoulder
	%add_input_character_b(4, "TOP") ; R shoulder

++	RTS

extra_ram_watch_routines:
	dw .nothing-1
	dw .subpixels-1
	dw .spooky-1
	dw .arc-1
	dw .icebreaker-1

.nothing
	RTS

.icebreaker
	LDA.w SA1IRAM.CopyOf_6C : AND #$00FF : BEQ ..nodoor
	LDA.w #$216A : BRA ++

..nodoor
	LDA.w #!EMPTY

++	STA.w SA1HUD+06, X

.subpixels
	LDA.w #!yellow
	STA.b SA1IRAM.SCRATCH+10
	LDY.w #2
	LDA.w SA1IRAM.CopyOf_2A
	JSR DrawHex

	LDA.w #!white
	STA.b SA1IRAM.SCRATCH+10
	LDY.w #2
	LDA.w SA1IRAM.CopyOf_2B
	JMP DrawHex

.spooky
	LDA.w #!white
	STA.b SA1IRAM.SCRATCH+10
	LDY.w #2
	LDA.w SA1IRAM.CopyOf_02A2
	JMP DrawHex


.arc
	LDA.w #!white
	STA.b SA1IRAM.SCRATCH+10
	LDY.w #4
	LDA.w SA1IRAM.CopyOf_0B08
	JMP DrawHex

;==============================================================================

DrawCoordinates:
	PHY ; y coordinate first as it's right-to-left
	LDA.w #!yellow
	STA.b SA1IRAM.SCRATCH+10
	LDA.b SA1IRAM.CopyOf_20
	JSR .draw_n_digits

	PLY ; x coordinate after
	LDA.w #!white
	STA.b SA1IRAM.SCRATCH+10
	LDA.b SA1IRAM.CopyOf_22
	BRA .draw_n_digits

.next_digit
	LSR
	LSR
	LSR
	LSR

#DrawHex:
.draw_n_digits
	PHA ; remember coordinates
	AND.w #$000F ; get digit
	ORA.b SA1IRAM.SCRATCH+10 ; add in color
	STA.w SA1HUD+14, X
	PLA ; recover value
	DEX
	DEX
	DEY
	BNE .next_digit
	RTS

;==============================================================================
; For cleaning up superwatch in VRAM
;==============================================================================
UpdateGlitchedWindow:
	SEP #$30
	LDA.l !ram_superwatch
	AND.b #$03
	ASL : TAX
	JMP (.routines, X)

.routines
	dw NoSuperWatch
	dw UpdateAncillaWindow
	dw UpdateUWWindow
	dw NoSuperWatch

NoSuperWatch:
	LDA #$20

.set
	TRB.b SA1IRAM.HDMA_ASK
	RTS

CleanVRAMSW:
	SEP #$30
	STZ.w $4200

--	BIT.w $4210
	BPL --

	LDA.b #$81
	STA.w $2100

	LDA.b #$80
	STA.w $2115

	REP #$30
	LDA.w #$C200>>1
	STA.w $2116
	LDX.w #$0140/2
	LDA.w #$207F

--	STA.w $2118
	DEX
	BNE --

	SEP #$30
	LDA.b #$81
	STA.w $4200

	RTL

ClearSWBuffer:
	REP #$30
	LDA.w #$207F
	LDX.w #$013C
--	STA.w !dg_buffer, X
	DEX
	DEX
	BPL --
	RTL
