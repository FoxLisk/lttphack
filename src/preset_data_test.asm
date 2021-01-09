
;===============================================================================
; PRESET DATA HEADER
;===============================================================================
dw presetSRAM_nmg ; location of SRAM
;===============================================================================
%menu_header("ANY% NMG (NO SQ)", 15)
	%submenu("Hyrule Castle", presetmenu_nmg_escape)
	%submenu("Eastern", presetmenu_nmg_eastern)
	%submenu("Desert", presetmenu_nmg_desert)
	%submenu("Hera", presetmenu_nmg_hera)
	%submenu("Agahnim~s Tower", presetmenu_nmg_aga)
	%submenu("Palace of Darkness", presetmenu_nmg_pod)
	%submenu("Thieves~ Town", presetmenu_nmg_thieves)
	%submenu("Skull Woods", presetmenu_nmg_skull)
	%submenu("Ice Palace", presetmenu_nmg_ice)
	%submenu("Swamp Palace", presetmenu_nmg_swamp)
	%submenu("Misery Mire", presetmenu_nmg_mire)
	%submenu("Turtle Rock", presetmenu_nmg_trock)
	%submenu("Ganon~s Tower", presetmenu_nmg_gtower)
	%submenu("Ganon", presetmenu_nmg_ganon)
	%submenu("Bosses", presetmenu_nmg_boss)

;===============================================================================
;-------------------------------------------------------------------------------
; HYRULE CASTLE
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_escape:
%menu_header("Hyrule Castle", 14)

;-------------------------------------------------------------------------------
%preset_UW("Link~s Bed", "nmg", "escape", "bed")
dw $0104 ; Screen ID
dw $0940 ; Link X
dw $215A ; Link Y
dw $2110 ; Camera V
dw $0900 ; Camera H
db $00 ; Item
db $00 ; Link direction
;-----------------------------
db $00 ; Entrance
db $00 ; Room layout
db $03 ; Main GFX
db $FF ; Music
db $00 ; Floor
db $FF ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7EC167, $7D) ; Underworld exit cache
%write8($7EC165, $23) ; Underworld exit cache
%write8($7EC166, $51) ; Underworld exit cache
%write16_enable()
%write16($7E0696, $0003) ; Overworld Door
%write16($7E0542, $16CA) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $15CA) ; Object tilemap state
%write16($7E0544, $17CA) ; Object tilemap state
%write16($7EC142, $0015) ; Underworld exit cache
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Courtyard", "nmg", "escape", "courtyard")
dw $0055 ; Screen ID
dw $0A78 ; Link X
dw $0BC6 ; Link Y
dw $0B10 ; Camera V
dw $0A00 ; Camera H
db $00 ; Item
db $02 ; Link direction
;-----------------------------
db $00 ; Entrance
db $80 ; Room layout
db $01 ; Main GFX
db $03 ; Music
db $FF ; Floor
db $FF ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0001) ; Overworld Door
%write16($7E0542, $19E6) ; Object tilemap state
%write16($7E0540, $18E6) ; Object tilemap state
%write16($7E0544, $1850) ; Object tilemap state
%write_7F()
%write8($7FE0EF, $41) ; Room $B7 persistent: Turtle Rock (Map Chest / Key Chest / Roller Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "escape", "entrance")
dw $001B ; Screen ID
dw $07F9 ; Link X
dw $0709 ; Link Y
dw $06AB ; Camera V
dw $0785 ; Camera H
db $00 ; Item
db $02 ; Link direction
;-----------------------------
dw $0804 ; Scroll X
dw $0718 ; Scroll Y
dw $05B2 ; Unknown 1
dw $0005 ; Unknown 2
dw $0009 ; Unknown 3
db $00 ; Item
db $02 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("1st Key Guard", "nmg", "escape", "1st_keyguard")
dw $0001 ; Screen ID
dw $02F8 ; Link X
dw $0062 ; Link Y
dw $0000 ; Camera V
dw $0280 ; Camera H
db $00 ; Item
db $00 ; Link direction
;-----------------------------
db $7D ; Entrance
db $80 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $00 ; Floor
db $02 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Stealth Room", "nmg", "escape", "stealth_room")
dw $0082 ; Screen ID
dw $040B ; Link X
dw $1178 ; Link Y
dw $110B ; Camera V
dw $0400 ; Camera H
db $00 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $C0 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $02 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $2532) ; Object tilemap state
%write16($7E0540, $324C) ; Object tilemap state
%write16($7E0544, $2A32) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE064, $0001) ; Room $72 persistent: Hyrule Castle (Map Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("2nd Key Guard", "nmg", "escape", "2nd_keyguard")
dw $0071 ; Screen ID
dw $02AD ; Link X
dw $0F78 ; Link Y
dw $0F0B ; Camera V
dw $0200 ; Camera H
db $00 ; Item
db $04 ; Link direction
;-----------------------------
db $04 ; Entrance
db $00 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $02 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0468, $0000) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FE062, $0001) ; Room $71 persistent: Hyrule Castle (Boomerang Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Ball~n Chains", "nmg", "escape", "ball_n_chains")
dw $0070 ; Screen ID
dw $0050 ; Link X
dw $0E2D ; Link Y
dw $0E00 ; Camera V
dw $0000 ; Camera H
db $00 ; Item
db $06 ; Link direction
;-----------------------------
db $04 ; Entrance
db $00 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FE ; Floor
db $02 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0468, $0001) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FE062, $0003) ; Room $71 persistent: Hyrule Castle (Boomerang Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Backtracking", "nmg", "escape", "backtracking")
dw $0080 ; Screen ID
dw $0050 ; Link X
dw $1026 ; Link Y
dw $1000 ; Camera V
dw $0000 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $80 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FD ; Floor
db $02 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0434) ; Object tilemap state
%write16($7E0540, $0430) ; Object tilemap state
%write16($7E0544, $0438) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE080, $0004) ; Room $80 persistent: Hyrule Castle (Jail Cell Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Key Guard Revisited", "nmg", "escape", "keyguard_revisited")
dw $0072 ; Screen ID
dw $04F8 ; Link X
dw $0F2D ; Link Y
dw $0F00 ; Camera V
dw $0480 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $80 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $02 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Throne Room", "nmg", "escape", "throne_room")
dw $0051 ; Screen ID
dw $02F8 ; Link X
dw $0A8E ; Link Y
dw $0A21 ; Camera V
dw $0280 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $C0 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $01 ; Floor
db $02 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Snake Avoidance Room", "nmg", "escape", "snake_avoidance_room")
dw $0041 ; Screen ID
dw $03A8 ; Link X
dw $082D ; Link Y
dw $0800 ; Camera V
dw $0300 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $C1 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $01 ; Floor
db $00 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0F34) ; Object tilemap state
%write16($7E0546, $1694) ; Object tilemap state
%write16($7E054A, $0E70) ; Object tilemap state
%write16($7E0540, $0A64) ; Object tilemap state
%write16($7E0544, $1034) ; Object tilemap state
%write16($7E0548, $053E) ; Object tilemap state
%write16($7E054C, $1590) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Sewer Rooms", "nmg", "escape", "water_rooms")
dw $0032 ; Screen ID
dw $04F8 ; Link X
dw $061F ; Link Y
dw $0600 ; Camera V
dw $0480 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $C0 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $00 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0B8A) ; Object tilemap state
%write16($7E0546, $0FF2) ; Object tilemap state
%write16($7E0540, $0D1C) ; Object tilemap state
%write16($7E0544, $0BF2) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Key Rat", "nmg", "escape", "keyrat")
dw $0021 ; Screen ID
dw $02F8 ; Link X
dw $052D ; Link Y
dw $0500 ; Camera V
dw $0280 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $80 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $00 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $1C64) ; Object tilemap state
%write16($7E0546, $18A8) ; Object tilemap state
%write16($7E054A, $1C30) ; Object tilemap state
%write16($7E054E, $0CEA) ; Object tilemap state
%write16($7E0552, $1C8A) ; Object tilemap state
%write16($7E0540, $14A0) ; Object tilemap state
%write16($7E0544, $1C68) ; Object tilemap state
%write16($7E0548, $1C52) ; Object tilemap state
%write16($7E054C, $0C92) ; Object tilemap state
%write16($7E0550, $138A) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Last Two Screens", "nmg", "escape", "last_two_screens")
dw $0011 ; Screen ID
dw $0378 ; Link X
dw $022D ; Link Y
dw $0200 ; Camera V
dw $0300 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $41 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $FF ; Floor
db $00 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0F98) ; Object tilemap state
%write16($7E0546, $1390) ; Object tilemap state
%write16($7E054A, $13A0) ; Object tilemap state
%write16($7E0540, $0F90) ; Object tilemap state
%write16($7E0544, $0FA0) ; Object tilemap state
%write16($7E0548, $1398) ; Object tilemap state
%write16($7E054C, $455E) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFC2, $0001) ; Room $21 persistent: Hyrule Castle (Key-rat Room)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; EASTERN
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_eastern:
%menu_header("Eastern", 14)

;-------------------------------------------------------------------------------
%preset_UW("Before Cutscene", "nmg", "eastern", "before_cutscene")
dw $0002 ; Screen ID
dw $04F8 ; Link X
dw $01AC ; Link Y
dw $0110 ; Camera V
dw $0480 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $80 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $00 ; Floor
db $00 ; Palace No
db $01 ; Door
db $01 ; Layer
;-----------------------------
%write8($7E0642, $01) ; Room puzzle state (?)
%write8($7E0B09, $B0) ; Arc variable
%write8($7E0B39, $00) ; Arc variable
%write8($7E0B3D, $00) ; Arc variable
%write8($7E0B3B, $00) ; Arc variable
%write8($7E0B3F, $00) ; Arc variable
%write8($7E0B0C, $A0) ; Arc variable
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $2850) ; Object tilemap state
%write16($7E0546, $2A2C) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $2650) ; Object tilemap state
%write16($7E0544, $282C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDF84, $000A) ; Room $2 persistent: Hyrule Castle (Switch Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("After Cutscene", "nmg", "eastern", "after_cutscene")
dw $0012 ; Screen ID
dw $04F8 ; Link X
dw $027A ; Link Y
dw $020D ; Camera V
dw $0480 ; Camera H
db $02 ; Item
db $02 ; Link direction
;-----------------------------
db $04 ; Entrance
db $C0 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $00 ; Floor
db $00 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0642, $00) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0468, $0001) ; Trap door state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Octorok OW", "nmg", "eastern", "octorok")
dw $001D ; Screen ID
dw $0B10 ; Link X
dw $07DC ; Link Y
dw $071E ; Camera V
dw $0A9E ; Camera H
db $02 ; Item
db $02 ; Link direction
;-----------------------------
dw $0B1B ; Scroll X
dw $078B ; Scroll Y
dw $0894 ; Unknown 1
dw $0000 ; Unknown 2
dw $0002 ; Unknown 3
db $02 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE14B, $47) ; Overworld $E5 persistent: UNKNOWN
%write8($7FE17B, $47) ; Overworld $FD persistent: UNKNOWN
%write8($7FDFEB, $AD) ; Overworld $35 persistent: Lake Hylia
%write8($7FE057, $42) ; Overworld $6B persistent: Outside Haunted Grove
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("EP Overworld", "nmg", "eastern", "outside_palace")
dw $002E ; Screen ID
dw $0C70 ; Link X
dw $0A08 ; Link Y
dw $0A00 ; Camera V
dw $0C00 ; Camera H
db $02 ; Item
db $02 ; Link direction
;-----------------------------
dw $0C7D ; Scroll X
dw $0A6D ; Scroll Y
dw $0000 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $02 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE167, $42) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE04E, $42) ; Overworld $67 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "eastern", "entrance")
dw $001E ; Screen ID
dw $0F50 ; Link X
dw $0637 ; Link Y
dw $0600 ; Camera V
dw $0EDE ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F5B ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
db $02 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE103, $52) ; Overworld $C1 persistent: UNKNOWN
%write8($7FE06E, $52) ; Overworld $77 persistent: Black Ice Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Stalfos Room", "nmg", "eastern", "stalfos_room")
dw $00A8 ; Screen ID
dw $1128 ; Link X
dw $1577 ; Link Y
dw $150A ; Camera V
dw $1100 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $41 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B0C, $20) ; Arc variable
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $13B2) ; Object tilemap state
%write16($7E0546, $1CB2) ; Object tilemap state
%write16($7E054A, $36E0) ; Object tilemap state
%write16($7E0540, $138A) ; Object tilemap state
%write16($7E0544, $1C8A) ; Object tilemap state
%write16($7E0548, $181E) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Big Chest Room 1", "nmg", "eastern", "big_chest_room_1")
dw $00A8 ; Screen ID
dw $11C6 ; Link X
dw $1478 ; Link Y
dw $140B ; Camera V
dw $1100 ; Camera H
db $02 ; Item
db $04 ; Link direction
;-----------------------------
db $08 ; Entrance
db $41 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $02 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Dark Key Room", "nmg", "eastern", "dark_key_room")
dw $00BA ; Screen ID
dw $14CA ; Link X
dw $1678 ; Link Y
dw $160B ; Camera V
dw $1400 ; Camera H
db $02 ; Item
db $06 ; Link direction
;-----------------------------
db $08 ; Entrance
db $00 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $00) ; Trap door state
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $0A4C) ; Object tilemap state
%write16($7E0546, $045E) ; Object tilemap state
%write16($7E054A, $0864) ; Object tilemap state
%write16($7E054E, $0A70) ; Object tilemap state
%write16($7E0540, $064C) ; Object tilemap state
%write16($7E0544, $0858) ; Object tilemap state
%write16($7E0548, $0C5E) ; Object tilemap state
%write16($7E054C, $0670) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Big Key DMG Boost", "nmg", "eastern", "big_key_dmg_boost")
dw $00B9 ; Screen ID
dw $1225 ; Link X
dw $1678 ; Link Y
dw $160B ; Camera V
dw $1200 ; Camera H
db $02 ; Item
db $06 ; Link direction
;-----------------------------
db $08 ; Entrance
db $C0 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $1260) ; Object tilemap state
%write16($7E0546, $126C) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $125C) ; Object tilemap state
%write16($7E0544, $1268) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0F4, $0050) ; Room $BA persistent: Eastern Palace (Dark Antifairy / Key Pot Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Big Chest Room 2", "nmg", "eastern", "big_chest_room_2")
dw $00A8 ; Screen ID
dw $11B2 ; Link X
dw $1478 ; Link Y
dw $140B ; Camera V
dw $1100 ; Camera H
db $02 ; Item
db $04 ; Link direction
;-----------------------------
db $08 ; Entrance
db $41 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $02 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $13B2) ; Object tilemap state
%write16($7E0546, $1CB2) ; Object tilemap state
%write16($7E054A, $35E0) ; Object tilemap state
%write16($7E0540, $138A) ; Object tilemap state
%write16($7E0544, $1C8A) ; Object tilemap state
%write16($7E0548, $181E) ; Object tilemap state
%write16($7E0641, $0001) ; Room puzzle state (?)
%write16($7E0CFB, $041D) ; Rupee pull kill and damage counters
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Gifted With Greenies", "nmg", "eastern", "gwg")
dw $00A9 ; Screen ID
dw $12F8 ; Link X
dw $142B ; Link Y
dw $1400 ; Camera V
dw $1280 ; Camera H
db $02 ; Item
db $06 ; Link direction
;-----------------------------
db $08 ; Entrance
db $C0 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0641, $00) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $1370) ; Object tilemap state
%write16($7E0546, $1410) ; Object tilemap state
%write16($7E054A, $2C90) ; Object tilemap state
%write16($7E054E, $2CEC) ; Object tilemap state
%write16($7E0540, $146C) ; Object tilemap state
%write16($7E0544, $130C) ; Object tilemap state
%write16($7E0548, $2B90) ; Object tilemap state
%write16($7E054C, $2BEC) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pot Room", "nmg", "eastern", "pot_room")
dw $0099 ; Screen ID
dw $1278 ; Link X
dw $132D ; Link Y
dw $1300 ; Camera V
dw $1200 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $08 ; Entrance
db $80 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $04 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $1454) ; Object tilemap state
%write16($7E0546, $1CAA) ; Object tilemap state
%write16($7E0540, $1428) ; Object tilemap state
%write16($7E0544, $13BE) ; Object tilemap state
%write16($7E0548, $1CD2) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0B2, $00D8) ; Room $99 persistent: Eastern Palace (Eyegore Key Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Zeldagamer Room", "nmg", "eastern", "zeldagamer_room")
dw $00D9 ; Screen ID
dw $1225 ; Link X
dw $1B78 ; Link Y
dw $1B0B ; Camera V
dw $1200 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $08 ; Entrance
db $00 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $04 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $00) ; Trap door state
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $1C5C) ; Object tilemap state
%write16($7E0540, $145C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Armos", "nmg", "eastern", "armos")
dw $00D8 ; Screen ID
dw $1178 ; Link X
dw $1A30 ; Link Y
dw $1A00 ; Camera V
dw $1100 ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
db $08 ; Entrance
db $01 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $04 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $0ACA) ; Object tilemap state
%write16($7E0546, $0AF2) ; Object tilemap state
%write16($7E054A, $08F2) ; Object tilemap state
%write16($7E054E, $1860) ; Object tilemap state
%write16($7E0540, $08CA) ; Object tilemap state
%write16($7E0544, $0CCA) ; Object tilemap state
%write16($7E0548, $0CF2) ; Object tilemap state
%write16($7E054C, $185C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE130, $07FF) ; Room $D8 persistent: Eastern Palace (Zeldagamer Room / Pre-Armos Knights Room)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; DESERT
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_desert:
%menu_header("Desert", 14)

;-------------------------------------------------------------------------------
%preset_OW("Outside Eastern Palace", "nmg", "desert", "outside_eastern_palace")
dw $001E ; Screen ID
dw $0F50 ; Link X
dw $0638 ; Link Y
dw $0600 ; Camera V
dw $0ED6 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F5B ; Scroll X
dw $066D ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
db $03 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E0B09, $00) ; Arc variable
%write8($7E02A1, $17) ; Arc variable
%write8($7E0B08, $40) ; Arc variable
%write_7F()
%write8($7FE103, $52) ; Overworld $C1 persistent: UNKNOWN
%write8($7FE06E, $52) ; Overworld $77 persistent: Black Ice Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Eastern Palace Spinspeed", "nmg", "desert", "ep_spinspeed")
dw $0105 ; Screen ID
dw $0A78 ; Link X
dw $21C2 ; Link Y
dw $2110 ; Camera V
dw $0A00 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
db $08 ; Entrance
db $00 ; Room layout
db $0F ; Main GFX
db $18 ; Music
db $00 ; Floor
db $FF ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7EC167, $05) ; Underworld exit cache
%write8($7EC165, $20) ; Underworld exit cache
%write8($7EC166, $25) ; Underworld exit cache
%write16_enable()
%write16($7E0696, $000F) ; Overworld Door
%write16($7E0542, $1520) ; Object tilemap state
%write16($7EC140, $001E) ; Underworld exit cache
%write16($7EC144, $06D7) ; Underworld exit cache
%write16($7EC148, $0736) ; Underworld exit cache
%write16($7EC14C, $001E) ; Underworld exit cache
%write16($7EC150, $0744) ; Underworld exit cache
%write16($7EC154, $0600) ; Underworld exit cache
%write16($7EC158, $0C00) ; Underworld exit cache
%write16($7EC15C, $0520) ; Underworld exit cache
%write16($7EC160, $0B00) ; Underworld exit cache
%write16($7EC16C, $FFF7) ; Underworld exit cache
%write16($7EC170, $FFF6) ; Underworld exit cache
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $151C) ; Object tilemap state
%write16($7E0544, $141E) ; Object tilemap state
%write16($7EC142, $0016) ; Underworld exit cache
%write16($7EC146, $0C76) ; Underworld exit cache
%write16($7EC14A, $0CF0) ; Underworld exit cache
%write16($7EC14E, $0710) ; Underworld exit cache
%write16($7EC152, $0CFB) ; Underworld exit cache
%write16($7EC156, $091E) ; Underworld exit cache
%write16($7EC15A, $0F00) ; Underworld exit cache
%write16($7EC15E, $0A00) ; Underworld exit cache
%write16($7EC162, $1000) ; Underworld exit cache
%write16($7EC16A, $0009) ; Underworld exit cache
%write16($7EC16E, $000A) ; Underworld exit cache
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Bridge Screen", "nmg", "desert", "bridge_screen")
dw $002E ; Screen ID
dw $0C13 ; Link X
dw $0A69 ; Link Y
dw $0A0B ; Camera V
dw $0C00 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $0C85 ; Scroll X
dw $0A78 ; Scroll Y
dw $0000 ; Unknown 1
dw $FFF5 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE167, $42) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE04E, $42) ; Overworld $67 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Unholy Spinspeed", "nmg", "desert", "unholy_spinspeed")
dw $002A ; Screen ID
dw $0407 ; Link X
dw $0B9A ; Link Y
dw $0B1E ; Camera V
dw $0400 ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
dw $0485 ; Scroll X
dw $0B8D ; Scroll Y
dw $0900 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE07C, $A0) ; Overworld $7E persistent: UNKNOWN
%write8($7FE019, $1E) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $A1) ; Overworld $76 persistent: UNKNOWN
%write8($7FE161, $A1) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE04E, $9F) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $2F) ; Overworld $77 persistent: Black Ice Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Water Dash", "nmg", "desert", "water_dash")
dw $002C ; Screen ID
dw $08D2 ; Link X
dw $0BE2 ; Link Y
dw $0B1E ; Camera V
dw $0860 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
dw $08DD ; Scroll X
dw $0B8D ; Scroll Y
dw $090C ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $00 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0542, $17DE) ; Object tilemap state
%write16($7E0546, $19D6) ; Object tilemap state
%write16($7E054A, $19E6) ; Object tilemap state
%write16($7E054E, $1BE6) ; Object tilemap state
%write16($7E0540, $17D6) ; Object tilemap state
%write16($7E0544, $17E6) ; Object tilemap state
%write16($7E0548, $19DE) ; Object tilemap state
%write16($7E054C, $1BD6) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Outside Desert Palace", "nmg", "desert", "outside_desert_palace")
dw $003A ; Screen ID
dw $040E ; Link X
dw $0F88 ; Link Y
dw $0F1E ; Camera V
dw $0400 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $0485 ; Scroll X
dw $0F8B ; Scroll Y
dw $0880 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE168, $3F) ; Overworld $F4 persistent: UNKNOWN
%write8($7FE01E, $01) ; Overworld $4F persistent: Mysterious Pond
%write8($7FE02B, $3F) ; Overworld $55 persistent: Dark Waterway
%write8($7FE0D7, $3A) ; Overworld $AB persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "desert", "desert_entrance")
dw $0030 ; Screen ID
dw $0128 ; Link X
dw $0CB8 ; Link Y
dw $0C56 ; Camera V
dw $00AA ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
dw $012F ; Scroll X
dw $0CC3 ; Scroll Y
dw $0294 ; Unknown 1
dw $0008 ; Unknown 2
dw $FFF6 ; Unknown 3
db $03 ; Item
db $04 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Key Bonk", "nmg", "desert", "keybonk")
dw $0073 ; Screen ID
dw $0778 ; Link X
dw $0F22 ; Link Y
dw $0F00 ; Camera V
dw $0700 ; Camera H
db $0C ; Item
db $00 ; Link direction
;-----------------------------
db $09 ; Entrance
db $01 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $FF ; Floor
db $06 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $159E) ; Object tilemap state
%write16($7E0546, $1890) ; Object tilemap state
%write16($7E054A, $1B9A) ; Object tilemap state
%write16($7E054E, $1A24) ; Object tilemap state
%write16($7E0552, $1724) ; Object tilemap state
%write16($7E0556, $0CB2) ; Object tilemap state
%write16($7E0540, $159A) ; Object tilemap state
%write16($7E0544, $1714) ; Object tilemap state
%write16($7E0548, $1A14) ; Object tilemap state
%write16($7E054C, $1B9E) ; Object tilemap state
%write16($7E0550, $18A8) ; Object tilemap state
%write16($7E0554, $0C8A) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE068, $0001) ; Room $74 persistent: Desert Palace (Map Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pre Cannonball Room", "nmg", "desert", "pre_cannonball_room")
dw $0085 ; Screen ID
dw $0ACB ; Link X
dw $1078 ; Link Y
dw $100B ; Camera V
dw $0A00 ; Camera H
db $0C ; Item
db $00 ; Link direction
;-----------------------------
db $09 ; Entrance
db $40 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $FF ; Floor
db $06 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7E0540, $1C2C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pot Room", "nmg", "desert", "pot_room")
dw $0073 ; Screen ID
dw $0725 ; Link X
dw $0F78 ; Link Y
dw $0F0B ; Camera V
dw $0700 ; Camera H
db $0C ; Item
db $06 ; Link direction
;-----------------------------
db $09 ; Entrance
db $01 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $FF ; Floor
db $06 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $159E) ; Object tilemap state
%write16($7E0546, $1890) ; Object tilemap state
%write16($7E054A, $1B9A) ; Object tilemap state
%write16($7E054E, $1A24) ; Object tilemap state
%write16($7E0552, $1724) ; Object tilemap state
%write16($7E0556, $0CB2) ; Object tilemap state
%write16($7E0540, $159A) ; Object tilemap state
%write16($7E0544, $1714) ; Object tilemap state
%write16($7E0548, $1A14) ; Object tilemap state
%write16($7E054C, $1B9E) ; Object tilemap state
%write16($7E0550, $18A8) ; Object tilemap state
%write16($7E0554, $0C8A) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE08A, $001C) ; Room $85 persistent: Desert Palace (East Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Desert 2 Spinspeed", "nmg", "desert", "desert2_spinspeed")
dw $0083 ; Screen ID
dw $0678 ; Link X
dw $11C3 ; Link Y
dw $1110 ; Camera V
dw $0600 ; Camera H
db $0C ; Item
db $04 ; Link direction
;-----------------------------
db $09 ; Entrance
db $00 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $FF ; Floor
db $06 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $0450) ; Object tilemap state
%write16($7E0546, $1C50) ; Object tilemap state
%write16($7E054A, $1914) ; Object tilemap state
%write16($7E054E, $1928) ; Object tilemap state
%write16($7E0540, $044C) ; Object tilemap state
%write16($7E0544, $1C4C) ; Object tilemap state
%write16($7E0548, $1514) ; Object tilemap state
%write16($7E054C, $191E) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Popo Genocide", "nmg", "desert", "popo_genocide_room")
dw $0053 ; Screen ID
dw $0678 ; Link X
dw $0AC6 ; Link Y
dw $0A10 ; Camera V
dw $0600 ; Camera H
db $0C ; Item
db $02 ; Link direction
;-----------------------------
db $09 ; Entrance
db $00 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $06 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $0B60) ; Object tilemap state
%write16($7E0546, $0B68) ; Object tilemap state
%write16($7E054A, $1368) ; Object tilemap state
%write16($7E0540, $0B5C) ; Object tilemap state
%write16($7E0544, $0B64) ; Object tilemap state
%write16($7E0548, $08E2) ; Object tilemap state
%write16($7E054C, $1864) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches", "nmg", "desert", "torches")
dw $0043 ; Screen ID
dw $0778 ; Link X
dw $092E ; Link Y
dw $0900 ; Camera V
dw $0700 ; Camera H
db $0C ; Item
db $02 ; Link direction
;-----------------------------
db $0C ; Entrance
db $01 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $06 ; Palace No
db $01 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0542, $044E) ; Object tilemap state
%write16($7E0546, $094E) ; Object tilemap state
%write16($7E054A, $1470) ; Object tilemap state
%write16($7E054E, $1C70) ; Object tilemap state
%write16($7E0552, $03B6) ; Object tilemap state
%write16($7E0556, $09B6) ; Object tilemap state
%write16($7E0540, $0442) ; Object tilemap state
%write16($7E0544, $0942) ; Object tilemap state
%write16($7E0548, $144C) ; Object tilemap state
%write16($7E054C, $1C4C) ; Object tilemap state
%write16($7E0550, $03AA) ; Object tilemap state
%write16($7E0554, $09AA) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE026, $06E0) ; Room $53 persistent: Desert Palace (Popos 2 / Beamos Hellway Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Lanmolas", "nmg", "desert", "lanmolas")
dw $0043 ; Screen ID
dw $0678 ; Link X
dw $082E ; Link Y
dw $0800 ; Camera V
dw $0600 ; Camera H
db $09 ; Item
db $00 ; Link direction
;-----------------------------
db $0C ; Entrance
db $80 ; Room layout
db $12 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $06 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0012) ; Overworld Door
%write16($7E0552, $83B6) ; Object tilemap state
%write16($7E0556, $89B6) ; Object tilemap state
%write16($7E0550, $83AA) ; Object tilemap state
%write16($7E0554, $89AA) ; Object tilemap state
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; HERA
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_hera:
%menu_header("Hera", 11)

;-------------------------------------------------------------------------------
%preset_OW("Outside Desert Palace", "nmg", "hera", "outside_desert_palace")
dw $0030 ; Screen ID
dw $0128 ; Link X
dw $0C41 ; Link Y
dw $0C00 ; Camera V
dw $00A2 ; Camera H
db $09 ; Item
db $00 ; Link direction
;-----------------------------
dw $012F ; Scroll X
dw $0C6D ; Scroll Y
dw $0016 ; Unknown 1
dw $0000 ; Unknown 2
dw $000E ; Unknown 3
db $09 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E02A2, $17) ; Arc variable
%write16_enable()
%write16($7E0468, $0000) ; Trap door state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Fake Flippers", "nmg", "hera", "fake_flippers")
dw $003C ; Screen ID
dw $09E0 ; Link X
dw $0F7C ; Link Y
dw $0F1E ; Camera V
dw $0900 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $097D ; Scroll X
dw $0F8B ; Scroll Y
dw $0820 ; Unknown 1
dw $FFF2 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE048, $48) ; Overworld $64 persistent: UNKNOWN
%write8($7FE174, $09) ; Overworld $FA persistent: UNKNOWN
%write8($7FE07E, $01) ; Overworld $7F persistent: Dark Waterfall
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Death Mountain", "nmg", "hera", "dm")
dw $00F1 ; Screen ID
dw $0378 ; Link X
dw $1FC1 ; Link Y
dw $1F10 ; Camera V
dw $0300 ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
db $0C ; Entrance
db $C1 ; Room layout
db $06 ; Main GFX
db $12 ; Music
db $00 ; Floor
db $FF ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0006) ; Overworld Door
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0540) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("After Mirror", "nmg", "hera", "after_mirror")
dw $0003 ; Screen ID
dw $071E ; Link X
dw $03C0 ; Link Y
dw $031E ; Camera V
dw $06AA ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $0729 ; Scroll X
dw $038D ; Scroll Y
dw $1816 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF6 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Quickhop", "nmg", "hera", "quickhop")
dw $0003 ; Screen ID
dw $081B ; Link X
dw $0138 ; Link Y
dw $00D4 ; Camera V
dw $07A5 ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
dw $0824 ; Scroll X
dw $0143 ; Scroll Y
dw $0638 ; Unknown 1
dw $000A ; Unknown 2
dw $000B ; Unknown 3
db $03 ; Item
db $06 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "hera", "entrance")
dw $0003 ; Screen ID
dw $08F0 ; Link X
dw $0085 ; Link Y
dw $0021 ; Camera V
dw $087C ; Camera H
db $14 ; Item
db $04 ; Link direction
;-----------------------------
dw $08FB ; Scroll X
dw $0090 ; Scroll Y
dw $00D0 ; Unknown 1
dw $000D ; Unknown 2
dw $FFF4 ; Unknown 3
db $14 ; Item
db $04 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Tile room", "nmg", "hera", "tile_room")
dw $0077 ; Screen ID
dw $0E78 ; Link X
dw $0E45 ; Link Y
dw $0E00 ; Camera V
dw $0E00 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $06 ; Entrance
db $C0 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $14 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write8($7E02A2, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches", "nmg", "hera", "torches")
dw $0087 ; Screen ID
dw $0F78 ; Link X
dw $10BC ; Link Y
dw $1010 ; Camera V
dw $0F00 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $33 ; Entrance
db $01 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $00 ; Floor
db $14 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $0B10) ; Object tilemap state
%write16($7E0546, $0C18) ; Object tilemap state
%write16($7E054A, $0C28) ; Object tilemap state
%write16($7E054E, $1470) ; Object tilemap state
%write16($7E0552, $186C) ; Object tilemap state
%write16($7E0556, $1B6C) ; Object tilemap state
%write16($7E0540, $0B0C) ; Object tilemap state
%write16($7E0544, $0C10) ; Object tilemap state
%write16($7E0548, $0C20) ; Object tilemap state
%write16($7E054C, $144C) ; Object tilemap state
%write16($7E0550, $1850) ; Object tilemap state
%write16($7E0554, $1B50) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Beetles", "nmg", "hera", "beetles")
dw $0077 ; Screen ID
dw $0F68 ; Link X
dw $0F4E ; Link Y
dw $0EE2 ; Camera V
dw $0EF0 ; Camera H
db $02 ; Item
db $02 ; Link direction
;-----------------------------
db $33 ; Entrance
db $C1 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $01 ; Floor
db $14 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write8($7E02A1, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Petting Zoo", "nmg", "hera", "petting_zoo")
dw $0031 ; Screen ID
dw $03B8 ; Link X
dw $067C ; Link Y
dw $060F ; Camera V
dw $0300 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $33 ; Entrance
db $81 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $02 ; Floor
db $14 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $1C60) ; Object tilemap state
%write16($7E0540, $1C5C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFE2, $0580) ; Room $31 persistent: Tower of Hera (Hardhat Beetles Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Moldorm", "nmg", "hera", "moldorm")
dw $0017 ; Screen ID
dw $0FA8 ; Link X
dw $027A ; Link Y
dw $020D ; Camera V
dw $0F00 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $33 ; Entrance
db $C1 ; Room layout
db $05 ; Main GFX
db $11 ; Music
db $04 ; Floor
db $14 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E029F, $19) ; Arc variable
%write16_enable()
%write16($7E0696, $0005) ; Overworld Door
%write16($7E0542, $0E64) ; Object tilemap state
%write16($7E0546, $1064) ; Object tilemap state
%write16($7E054A, $1264) ; Object tilemap state
%write16($7E054E, $0E68) ; Object tilemap state
%write16($7E0552, $1068) ; Object tilemap state
%write16($7E0556, $1268) ; Object tilemap state
%write16($7E0540, $0D64) ; Object tilemap state
%write16($7E0544, $0F64) ; Object tilemap state
%write16($7E0548, $1164) ; Object tilemap state
%write16($7E054C, $0D68) ; Object tilemap state
%write16($7E0550, $0F68) ; Object tilemap state
%write16($7E0554, $1168) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFCE, $0024) ; Room $27 persistent: Tower of Hera (Big Chest)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; AGAHNIM'S TOWER
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_aga:
%menu_header("Agahnim~s Tower", 14)

;-------------------------------------------------------------------------------
%preset_OW("Outside Hera", "nmg", "aga", "outside_hera")
dw $0003 ; Screen ID
dw $08F0 ; Link X
dw $007C ; Link Y
dw $0018 ; Camera V
dw $087C ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
dw $08FB ; Scroll X
dw $0087 ; Scroll Y
dw $0050 ; Unknown 1
dw $0006 ; Unknown 2
dw $FFF4 ; Unknown 3
db $03 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E02A2, $17) ; Arc variable
%write_7F()
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("First Rupee Tree", "nmg", "aga", "first_rupee_tree")
dw $00E6 ; Screen ID
dw $0C78 ; Link X
dw $1DB8 ; Link Y
dw $1D10 ; Camera V
dw $0C00 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
db $33 ; Entrance
db $C0 ; Room layout
db $06 ; Main GFX
db $12 ; Music
db $00 ; Floor
db $FF ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0006) ; Overworld Door
%write16($7E0542, $1058) ; Object tilemap state
%write16($7E0546, $1838) ; Object tilemap state
%write16($7E0540, $0C6C) ; Object tilemap state
%write16($7E0544, $1448) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE14E, $0008) ; Room $E7 persistent: Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Lost Woods", "nmg", "aga", "lost_woods")
dw $0002 ; Screen ID
dw $0406 ; Link X
dw $007A ; Link Y
dw $0016 ; Camera V
dw $0400 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $048D ; Scroll X
dw $0085 ; Scroll Y
dw $0100 ; Unknown 1
dw $0008 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0CFB, $0001) ; Rupee pull kill and damage counters
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("After Grove", "nmg", "aga", "after_grove")
dw $0000 ; Screen ID
dw $00A0 ; Link X
dw $00CB ; Link Y
dw $006B ; Camera V
dw $0022 ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
dw $00A7 ; Scroll X
dw $00DA ; Scroll Y
dw $0306 ; Unknown 1
dw $FFF3 ; Unknown 2
dw $000E ; Unknown 3
db $03 ; Item
db $04 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0CFB, $0003) ; Rupee pull kill and damage counters
%write_7F()
%write8($7FE1E8, $E9) ; Overworld $134 persistent: UNKNOWN
%write8($7FE132, $01) ; Overworld $D9 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("After Lost Woods", "nmg", "aga", "after_lost_woods")
dw $0000 ; Screen ID
dw $0388 ; Link X
dw $03D0 ; Link Y
dw $031E ; Camera V
dw $0300 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $0385 ; Scroll X
dw $038D ; Scroll Y
dw $1860 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0CFB, $0001) ; Rupee pull kill and damage counters
%write_7F()
%write8($7FE1E8, $E9) ; Overworld $134 persistent: UNKNOWN
%write8($7FE132, $01) ; Overworld $D9 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Castle Screen", "nmg", "aga", "castle_screen")
dw $001A ; Screen ID
dw $05E5 ; Link X
dw $0728 ; Link Y
dw $06CA ; Camera V
dw $0500 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
dw $057D ; Scroll X
dw $0737 ; Scroll Y
dw $0620 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $0000 ; Unknown 3
db $03 ; Item
db $02 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0CFB, $0003) ; Rupee pull kill and damage counters
%write_7F()
%write8($7FE06C, $43) ; Overworld $76 persistent: UNKNOWN
%write8($7FE144, $42) ; Overworld $E2 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "aga", "entrance")
dw $001B ; Screen ID
dw $07F8 ; Link X
dw $065C ; Link Y
dw $0600 ; Camera V
dw $077E ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
dw $0803 ; Scroll X
dw $066D ; Scroll Y
dw $002E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
db $03 ; Item
db $06 ; Link direction
;-----------------------------
%write16_enable()
%write16($7E0542, $044C) ; Object tilemap state
%write16($7E0540, $0470) ; Object tilemap state
%write_7F()
%write8($7FE0EF, $41) ; Overworld $B7 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Fairy Skip", "nmg", "aga", "fairy_skip")
dw $00E0 ; Screen ID
dw $00DA ; Link X
dw $1C78 ; Link Y
dw $1C0B ; Camera V
dw $0000 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $04 ; Entrance
db $00 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $01 ; Floor
db $08 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0468, $0000) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FE140, $0003) ; Room $E0 persistent: Agahnim's Tower (Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Dark Room of Despair", "nmg", "aga", "dark_room_of_despair")
dw $00D0 ; Screen ID
dw $0125 ; Link X
dw $1A78 ; Link Y
dw $1A0B ; Camera V
dw $0100 ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
db $24 ; Entrance
db $01 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $02 ; Floor
db $08 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0B8C) ; Object tilemap state
%write16($7E0546, $1030) ; Object tilemap state
%write16($7E054A, $1792) ; Object tilemap state
%write16($7E054E, $1C16) ; Object tilemap state
%write16($7E0552, $0D24) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $059E) ; Object tilemap state
%write16($7E0544, $0D2A) ; Object tilemap state
%write16($7E0548, $14B0) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $0A1E) ; Object tilemap state
%write16($7E0554, $1012) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE140, $000F) ; Room $E0 persistent: Agahnim's Tower (Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Dark Room of Melancholy", "nmg", "aga", "dark_room_of_melancholy")
dw $00C0 ; Screen ID
dw $0125 ; Link X
dw $1978 ; Link Y
dw $190B ; Camera V
dw $0100 ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
db $24 ; Entrance
db $01 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $03 ; Floor
db $08 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $0E0C) ; Object tilemap state
%write16($7E0546, $1B1C) ; Object tilemap state
%write16($7E054A, $06D8) ; Object tilemap state
%write16($7E054E, $0D24) ; Object tilemap state
%write16($7E0552, $1A10) ; Object tilemap state
%write16($7E0540, $0A30) ; Object tilemap state
%write16($7E0544, $1A0C) ; Object tilemap state
%write16($7E0548, $0710) ; Object tilemap state
%write16($7E054C, $06E4) ; Object tilemap state
%write16($7E0550, $1518) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE120, $0020) ; Room $D0 persistent: Agahnim's Tower (Dark Maze)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spear Guards", "nmg", "aga", "spear_guards")
dw $00C0 ; Screen ID
dw $0178 ; Link X
dw $182C ; Link Y
dw $1800 ; Camera V
dw $0100 ; Camera H
db $03 ; Item
db $04 ; Link direction
;-----------------------------
db $24 ; Entrance
db $01 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $03 ; Floor
db $08 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE100, $0018) ; Room $C0 persistent: Agahnim's Tower (Dark Bridge Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Circle of Pots", "nmg", "aga", "circle_of_pots")
dw $00B0 ; Screen ID
dw $0078 ; Link X
dw $16C4 ; Link Y
dw $1610 ; Camera V
dw $0000 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $24 ; Entrance
db $00 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $04 ; Floor
db $08 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0542, $151C) ; Object tilemap state
%write16($7E0546, $1528) ; Object tilemap state
%write16($7E054A, $1910) ; Object tilemap state
%write16($7E054E, $1824) ; Object tilemap state
%write16($7E0552, $1B1C) ; Object tilemap state
%write16($7E0556, $1B28) ; Object tilemap state
%write16($7E055A, $172C) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $1514) ; Object tilemap state
%write16($7E0544, $1520) ; Object tilemap state
%write16($7E0548, $1710) ; Object tilemap state
%write16($7E054C, $1818) ; Object tilemap state
%write16($7E0550, $1B14) ; Object tilemap state
%write16($7E0554, $1B20) ; Object tilemap state
%write16($7E0558, $192C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0E0, $003F) ; Room $B0 persistent: Agahnim's Tower (Circle of Pots)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pit Room", "nmg", "aga", "pit_room")
dw $0040 ; Screen ID
dw $012C ; Link X
dw $0978 ; Link Y
dw $090B ; Camera V
dw $0100 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
db $24 ; Entrance
db $01 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $05 ; Floor
db $08 ; Palace No
db $02 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write16($7E0468, $0001) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FE0E0, $043F) ; Room $B0 persistent: Agahnim's Tower (Circle of Pots)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Agahnim", "nmg", "aga", "agahnim")
dw $0030 ; Screen ID
dw $0078 ; Link X
dw $062D ; Link Y
dw $0600 ; Camera V
dw $0000 ; Camera H
db $02 ; Item
db $04 ; Link direction
;-----------------------------
db $24 ; Entrance
db $00 ; Room layout
db $04 ; Main GFX
db $10 ; Music
db $06 ; Floor
db $08 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E02A2, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $0004) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFE0, $0001) ; Room $30 persistent: Agahnim's Tower (Maiden Sacrifice Chamber)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; PALACE OF DARKNESS
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_pod:
%menu_header("Palace of Darkness", 14)

;-------------------------------------------------------------------------------
%preset_OW("Pyramid", "nmg", "pod", "pyramid")
dw $005B ; Screen ID
dw $07F0 ; Link X
dw $0660 ; Link Y
dw $0602 ; Camera V
dw $0778 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
dw $07F7 ; Scroll X
dw $066F ; Scroll Y
dw $002E ; Unknown 1
dw $FFFE ; Unknown 2
dw $FFF8 ; Unknown 3
db $02 ; Item
db $00 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Palace Overworld Screen", "nmg", "pod", "pod_overworld")
dw $006E ; Screen ID
dw $0C70 ; Link X
dw $0A0C ; Link Y
dw $0A00 ; Camera V
dw $0C00 ; Camera H
db $02 ; Item
db $02 ; Link direction
;-----------------------------
dw $0C7D ; Scroll X
dw $0A6D ; Scroll Y
dw $0000 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $02 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE00C, $DB) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $42) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $7A) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE160, $42) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE124, $AD) ; Overworld $D2 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "pod", "entrance")
dw $005E ; Screen ID
dw $0F50 ; Link X
dw $064C ; Link Y
dw $0600 ; Camera V
dw $0EDE ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F5B ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
db $02 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FDFCD, $23) ; Overworld $26 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Main Hub (small key)", "nmg", "pod", "main_hub_small_key")
dw $004A ; Screen ID
dw $14F8 ; Link X
dw $081B ; Link Y
dw $0800 ; Camera V
dw $1480 ; Camera H
db $02 ; Item
db $00 ; Link direction
;-----------------------------
db $24 ; Entrance
db $80 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $0520) ; Object tilemap state
%write16($7E0546, $0B20) ; Object tilemap state
%write16($7E054A, $0844) ; Object tilemap state
%write16($7E054E, $056E) ; Object tilemap state
%write16($7E0552, $0B6E) ; Object tilemap state
%write16($7E0540, $050E) ; Object tilemap state
%write16($7E0544, $0B0E) ; Object tilemap state
%write16($7E0548, $0838) ; Object tilemap state
%write16($7E054C, $055C) ; Object tilemap state
%write16($7E0550, $0B5C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Main Hub (bk)", "nmg", "pod", "main_hub_bk")
dw $004A ; Screen ID
dw $14F8 ; Link X
dw $081A ; Link Y
dw $0800 ; Camera V
dw $1480 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $80 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B0C, $D0) ; Arc variable
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Main Hub (hammeryump)", "nmg", "pod", "main_hub_hammeryump")
dw $004A ; Screen ID
dw $14F8 ; Link X
dw $0818 ; Link Y
dw $0800 ; Camera V
dw $1480 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $80 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E029F, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Hammeryump", "nmg", "pod", "hammeryump")
dw $002A ; Screen ID
dw $1478 ; Link X
dw $0424 ; Link Y
dw $0400 ; Camera V
dw $1400 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $C0 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $1350) ; Object tilemap state
%write16($7E0540, $0C50) ; Object tilemap state
%write16($7E0544, $1328) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pre Sexy Statue", "nmg", "pod", "before_sexy_statue")
dw $003A ; Screen ID
dw $1578 ; Link X
dw $062C ; Link Y
dw $0600 ; Camera V
dw $1500 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $C1 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3F, $01) ; Arc variable
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $0B20) ; Object tilemap state
%write16($7E0546, $0C20) ; Object tilemap state
%write16($7E0540, $0B1C) ; Object tilemap state
%write16($7E0544, $0C1C) ; Object tilemap state
%write16($7E0548, $4E64) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Sexy Statue Room", "nmg", "pod", "sexy_statue_room")
dw $002A ; Screen ID
dw $15B4 ; Link X
dw $04F8 ; Link Y
dw $048B ; Camera V
dw $1500 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $C1 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $1350) ; Object tilemap state
%write16($7E0540, $0C50) ; Object tilemap state
%write16($7E0544, $1328) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mimics", "nmg", "pod", "mimics")
dw $002B ; Screen ID
dw $1678 ; Link X
dw $0413 ; Link Y
dw $0400 ; Camera V
dw $1600 ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
db $26 ; Entrance
db $40 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0642, $01) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $0610) ; Object tilemap state
%write16($7E0546, $052C) ; Object tilemap state
%write16($7E054A, $072C) ; Object tilemap state
%write16($7E054E, $1692) ; Object tilemap state
%write16($7E0552, $16AA) ; Object tilemap state
%write16($7E0556, $151E) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0510) ; Object tilemap state
%write16($7E0544, $0710) ; Object tilemap state
%write16($7E0548, $062C) ; Object tilemap state
%write16($7E054C, $1592) ; Object tilemap state
%write16($7E0550, $15AA) ; Object tilemap state
%write16($7E0554, $151A) ; Object tilemap state
%write16($7E0558, $1522) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Statue", "nmg", "pod", "statue")
dw $001B ; Screen ID
dw $1678 ; Link X
dw $0320 ; Link Y
dw $0300 ; Camera V
dw $1600 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $00 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $01 ; Door
db $01 ; Layer
;-----------------------------
%write8($7E0642, $00) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $1728) ; Object tilemap state
%write16($7E0540, $1714) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFB6, $0038) ; Room $1B persistent: Palace of Darkness (Mimics / Moving Wall Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Basement", "nmg", "pod", "basement")
dw $001B ; Screen ID
dw $1790 ; Link X
dw $0251 ; Link Y
dw $0200 ; Camera V
dw $1700 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $81 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0C ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $01) ; Trap door state
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Turtle Room", "nmg", "pod", "turtle_room")
dw $000B ; Screen ID
dw $1678 ; Link X
dw $00C8 ; Link Y
dw $0010 ; Camera V
dw $1600 ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
db $26 ; Entrance
db $00 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $0966) ; Object tilemap state
%write16($7E0546, $03CA) ; Object tilemap state
%write16($7E054A, $076A) ; Object tilemap state
%write16($7E054E, $095E) ; Object tilemap state
%write16($7E0552, $085E) ; Object tilemap state
%write16($7E0556, $1814) ; Object tilemap state
%write16($7E055A, $1854) ; Object tilemap state
%write16($7E0540, $0962) ; Object tilemap state
%write16($7E0544, $096A) ; Object tilemap state
%write16($7E0548, $0CCA) ; Object tilemap state
%write16($7E054C, $086A) ; Object tilemap state
%write16($7E0550, $075E) ; Object tilemap state
%write16($7E0554, $5760) ; Object tilemap state
%write16($7E0558, $1828) ; Object tilemap state
%write16($7E055C, $1864) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Helma", "nmg", "pod", "helma")
dw $006A ; Screen ID
dw $1578 ; Link X
dw $0C24 ; Link Y
dw $0C00 ; Camera V
dw $1500 ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
db $26 ; Entrance
db $41 ; Room layout
db $07 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0C ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0007) ; Overworld Door
%write16($7E0542, $03F2) ; Object tilemap state
%write16($7E0540, $03CA) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE054, $0010) ; Room $6A persistent: Palace of Darkness (Rupee Room)
%write16($7FDF96, $03F0) ; Room $B persistent: Palace of Darkness (Turtle Room)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; THIEVES~ TOWN
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_thieves:
%menu_header("Thieves~ Town", 19)

;-------------------------------------------------------------------------------
%preset_OW("Outside PoD", "nmg", "thieves", "outside_pod")
dw $005E ; Screen ID
dw $0F50 ; Link X
dw $063E ; Link Y
dw $0600 ; Camera V
dw $0ED6 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F5B ; Scroll X
dw $066D ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
db $04 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E0ABD, $00) ; Palette swap
%write8($7E02A1, $17) ; Arc variable
%write8($7E0B08, $08) ; Arc variable
%write8($7E0B0C, $8E) ; Arc variable
%write_7F()
%write8($7FDFCD, $23) ; Overworld $26 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Overworld Hammerdash", "nmg", "thieves", "ow_hammerdash")
dw $006E ; Screen ID
dw $0C06 ; Link X
dw $0A6A ; Link Y
dw $0A0C ; Camera V
dw $0C00 ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
dw $0C85 ; Scroll X
dw $0A79 ; Scroll Y
dw $0000 ; Unknown 1
dw $FFF4 ; Unknown 2
dw $0000 ; Unknown 3
db $04 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE00C, $DB) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $42) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $7A) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE160, $42) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE124, $AD) ; Overworld $D2 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Grove", "nmg", "thieves", "grove")
dw $0072 ; Screen ID
dw $04DA ; Link X
dw $0C0C ; Link Y
dw $0C00 ; Camera V
dw $045C ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
dw $04E1 ; Scroll X
dw $0C6D ; Scroll Y
dw $000C ; Unknown 1
dw $0000 ; Unknown 2
dw $0004 ; Unknown 3
db $04 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE13B, $26) ; Overworld $DD persistent: UNKNOWN
%write8($7FE163, $42) ; Overworld $F1 persistent: UNKNOWN
%write8($7FE150, $42) ; Overworld $E8 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Usain Bolt", "nmg", "thieves", "usain_bolt")
dw $002A ; Screen ID
dw $0407 ; Link X
dw $0B99 ; Link Y
dw $0B1E ; Camera V
dw $0400 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
dw $0485 ; Scroll X
dw $0B8D ; Scroll Y
dw $0900 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $04 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE07C, $A0) ; Overworld $7E persistent: UNKNOWN
%write8($7FE019, $1E) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $A1) ; Overworld $76 persistent: UNKNOWN
%write8($7FE161, $A1) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE04E, $9F) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $2F) ; Overworld $77 persistent: Black Ice Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("After Activating Flute", "nmg", "thieves", "after_activating_flute")
dw $0018 ; Screen ID
dw $01CA ; Link X
dw $0798 ; Link Y
dw $0734 ; Camera V
dw $014C ; Camera H
db $08 ; Item
db $00 ; Link direction
;-----------------------------
dw $01D1 ; Scroll X
dw $07A3 ; Scroll Y
dw $092A ; Unknown 1
dw $000A ; Unknown 2
dw $0004 ; Unknown 3
db $08 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E02A1, $23) ; Arc variable
%write8($7E02A2, $FD) ; Arc variable
%write_7F()
%write8($7FE102, $42) ; Overworld $C1 persistent: UNKNOWN
%write8($7FE128, $DC) ; Overworld $D4 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("After Warp", "nmg", "thieves", "darkworld")
dw $0050 ; Screen ID
dw $0161 ; Link X
dw $0553 ; Link Y
dw $04F5 ; Camera V
dw $00E3 ; Camera H
db $08 ; Item
db $04 ; Link direction
;-----------------------------
dw $0168 ; Scroll X
dw $0562 ; Scroll Y
dw $079E ; Unknown 1
dw $FFFB ; Unknown 2
dw $000D ; Unknown 3
db $08 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE068, $26) ; Overworld $74 persistent: Dark Swamp North
%write8($7FE045, $13) ; Overworld $62 persistent: Locked Chest House
%write8($7FE136, $1A) ; Overworld $DB persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "thieves", "entrance")
dw $0058 ; Screen ID
dw $01F8 ; Link X
dw $07C2 ; Link Y
dw $0764 ; Camera V
dw $017E ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
dw $0203 ; Scroll X
dw $07D1 ; Scroll Y
dw $0BAE ; Unknown 1
dw $000C ; Unknown 2
dw $FFF2 ; Unknown 3
db $04 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("After Big Key", "nmg", "thieves", "after_big_key")
dw $00DB ; Screen ID
dw $17BA ; Link X
dw $1B68 ; Link Y
dw $1AFB ; Camera V
dw $1700 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $26 ; Entrance
db $C1 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $0470) ; Object tilemap state
%write16($7E0546, $333E) ; Object tilemap state
%write16($7E0540, $040C) ; Object tilemap state
%write16($7E0544, $1058) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Stalfos Hallway", "nmg", "thieves", "blind_hallway")
dw $00CC ; Screen ID
dw $1978 ; Link X
dw $181D ; Link Y
dw $1800 ; Camera V
dw $1900 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $34 ; Entrance
db $C1 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $0424) ; Object tilemap state
%write16($7E0546, $1C70) ; Object tilemap state
%write16($7E0540, $0470) ; Object tilemap state
%write16($7E0544, $1C24) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE138, $0080) ; Room $DC persistent: Thieves Town (South East Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Conveyor Gibos", "nmg", "thieves", "conveyor_gibos")
dw $00BC ; Screen ID
dw $181D ; Link X
dw $1778 ; Link Y
dw $170B ; Camera V
dw $1800 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0F8, $0340) ; Room $BC persistent: Thieves Town (Conveyor Toilet)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Hellway", "nmg", "thieves", "hellway")
dw $00BB ; Screen ID
dw $1716 ; Link X
dw $1778 ; Link Y
dw $170B ; Camera V
dw $1700 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $34 ; Entrance
db $01 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0ABD, $01) ; Palette swap
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Bombable Floor", "nmg", "thieves", "bombable_floor")
dw $0065 ; Screen ID
dw $0AE7 ; Link X
dw $0D78 ; Link Y
dw $0D0B ; Camera V
dw $0A00 ; Camera H
db $01 ; Item
db $04 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $00 ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0ABD, $00) ; Palette swap
%write8($7E0B3F, $00) ; Arc variable
%write8($7E0B0C, $B0) ; Arc variable
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $1560) ; Object tilemap state
%write16($7E0546, $1660) ; Object tilemap state
%write16($7E054A, $1C68) ; Object tilemap state
%write16($7E0540, $155C) ; Object tilemap state
%write16($7E0544, $165C) ; Object tilemap state
%write16($7E0548, $1C64) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Backtracking", "nmg", "thieves", "backtracking_1")
dw $0064 ; Screen ID
dw $0878 ; Link X
dw $0D28 ; Link Y
dw $0D00 ; Camera V
dw $0800 ; Camera H
db $01 ; Item
db $06 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $00 ; Floor
db $16 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E029F, $01) ; Arc variable
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $1610) ; Object tilemap state
%write16($7E0546, $1C24) ; Object tilemap state
%write16($7E054A, $1C2C) ; Object tilemap state
%write16($7E0540, $160C) ; Object tilemap state
%write16($7E0544, $1614) ; Object tilemap state
%write16($7E0548, $1C28) ; Object tilemap state
%write16($7E054C, $1C30) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Basement", "nmg", "thieves", "basement")
dw $00BC ; Screen ID
dw $1878 ; Link X
dw $162A ; Link Y
dw $1600 ; Camera V
dw $1800 ; Camera H
db $01 ; Item
db $00 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Prison", "nmg", "thieves", "prison")
dw $0045 ; Screen ID
dw $0AE4 ; Link X
dw $0978 ; Link Y
dw $090B ; Camera V
dw $0A00 ; Camera H
db $01 ; Item
db $00 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FE ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $07A0) ; Object tilemap state
%write16($7E0546, $08A0) ; Object tilemap state
%write16($7E054A, $0C30) ; Object tilemap state
%write16($7E054E, $0B6C) ; Object tilemap state
%write16($7E0552, $10EC) ; Object tilemap state
%write16($7E0540, $079C) ; Object tilemap state
%write16($7E0544, $089C) ; Object tilemap state
%write16($7E0548, $040C) ; Object tilemap state
%write16($7E054C, $0B5C) ; Object tilemap state
%write16($7E0550, $10DC) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE00A, $0002) ; Room $45 persistent: Thieves Town (Jail Cells Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Gloves", "nmg", "thieves", "after_gloves")
dw $0044 ; Screen ID
dw $08DC ; Link X
dw $0978 ; Link Y
dw $090B ; Camera V
dw $0800 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FE ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3F, $01) ; Arc variable
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $07D0) ; Object tilemap state
%write16($7E0546, $08D0) ; Object tilemap state
%write16($7E054A, $1624) ; Object tilemap state
%write16($7E054E, $1828) ; Object tilemap state
%write16($7E0552, $1A18) ; Object tilemap state
%write16($7E0556, $1A20) ; Object tilemap state
%write16($7E0540, $07CC) ; Object tilemap state
%write16($7E0544, $08CC) ; Object tilemap state
%write16($7E0548, $1618) ; Object tilemap state
%write16($7E054C, $1728) ; Object tilemap state
%write16($7E0550, $1928) ; Object tilemap state
%write16($7E0554, $1A1C) ; Object tilemap state
%write16($7E0558, $1A24) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE00A, $0162) ; Room $45 persistent: Thieves Town (Jail Cells Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Backtracking", "nmg", "thieves", "backtracking_2")
dw $0044 ; Screen ID
dw $08E4 ; Link X
dw $0978 ; Link Y
dw $090B ; Camera V
dw $0800 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FE ; Floor
db $16 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pot Hammerdash", "nmg", "thieves", "pot_hammerdash")
dw $0045 ; Screen ID
dw $0A78 ; Link X
dw $082C ; Link Y
dw $0800 ; Camera V
dw $0A00 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $34 ; Entrance
db $00 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FE ; Floor
db $16 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $07A0) ; Object tilemap state
%write16($7E0546, $08A0) ; Object tilemap state
%write16($7E054A, $0C30) ; Object tilemap state
%write16($7E054E, $0B6C) ; Object tilemap state
%write16($7E0552, $10EC) ; Object tilemap state
%write16($7E0540, $079C) ; Object tilemap state
%write16($7E0544, $089C) ; Object tilemap state
%write16($7E0548, $040C) ; Object tilemap state
%write16($7E054C, $0B5C) ; Object tilemap state
%write16($7E0550, $10DC) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE008, $0080) ; Room $44 persistent: Thieves Town (Big Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Blind", "nmg", "thieves", "blind")
dw $00BC ; Screen ID
dw $1978 ; Link X
dw $1619 ; Link Y
dw $1600 ; Camera V
dw $1900 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $34 ; Entrance
db $41 ; Room layout
db $0A ; Main GFX
db $16 ; Music
db $FF ; Floor
db $16 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000A) ; Overworld Door
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0F8, $0002) ; Room $BC persistent: Thieves Town (Conveyor Toilet)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; SKULL WOODS
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_skull:
%menu_header("Skull Woods", 12)

;-------------------------------------------------------------------------------
%preset_OW("Outside Thieves", "nmg", "skull", "outside_thieves")
dw $0058 ; Screen ID
dw $01F8 ; Link X
dw $07C8 ; Link Y
dw $076A ; Camera V
dw $0176 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
dw $0203 ; Scroll X
dw $07D7 ; Scroll Y
dw $0B2E ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFFA ; Unknown 3
db $04 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E02A1, $17) ; Arc variable
%write8($7E02A2, $00) ; Arc variable
%write_7F()
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Cursed Dwarf", "nmg", "skull", "cursed_dwarf")
dw $0058 ; Screen ID
dw $0280 ; Link X
dw $09C0 ; Link Y
dw $091E ; Camera V
dw $01FE ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
dw $028B ; Scroll X
dw $098B ; Scroll Y
dw $183E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
db $04 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E029F, $18) ; Arc variable
%write16_enable()
%write16($7E0540, $1B6C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Getting Tempered", "nmg", "skull", "getting_tempered")
dw $0058 ; Screen ID
dw $03E1 ; Link X
dw $091A ; Link Y
dw $08B6 ; Camera V
dw $0300 ; Camera H
db $01 ; Item
db $06 ; Link direction
;-----------------------------
dw $038D ; Scroll X
dw $0925 ; Scroll Y
dw $1560 ; Unknown 1
dw $0008 ; Unknown 2
dw $0000 ; Unknown 3
db $01 ; Item
db $06 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Fencedash", "nmg", "skull", "fence_dash")
dw $0062 ; Screen ID
dw $0408 ; Link X
dw $0909 ; Link Y
dw $08A6 ; Camera V
dw $0400 ; Camera H
db $14 ; Item
db $06 ; Link direction
;-----------------------------
dw $047D ; Scroll X
dw $0915 ; Scroll Y
dw $0400 ; Unknown 1
dw $FFF8 ; Unknown 2
dw $0000 ; Unknown 3
db $14 ; Item
db $06 ; Link direction
;-----------------------------
%write_7F()
%write8($7FDFDD, $B5) ; Overworld $2E persistent: South of Eastern Palace
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Dash to Skull Woods", "nmg", "skull", "dash_to_sw")
dw $0058 ; Screen ID
dw $0348 ; Link X
dw $0608 ; Link Y
dw $0600 ; Camera V
dw $02CA ; Camera H
db $14 ; Item
db $04 ; Link direction
;-----------------------------
dw $034F ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $0006 ; Unknown 3
db $14 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Mummy Room", "nmg", "skull", "mummy_room")
dw $0040 ; Screen ID
dw $0248 ; Link X
dw $0250 ; Link Y
dw $01F0 ; Camera V
dw $01CA ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
dw $024F ; Scroll X
dw $025F ; Scroll Y
dw $0EBA ; Unknown 1
dw $FFFE ; Unknown 2
dw $0006 ; Unknown 3
db $14 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Bomb Jump", "nmg", "skull", "bomb_jump")
dw $0040 ; Screen ID
dw $02E8 ; Link X
dw $025B ; Link Y
dw $01FD ; Camera V
dw $0266 ; Camera H
db $14 ; Item
db $04 ; Link direction
;-----------------------------
dw $02F3 ; Scroll X
dw $026A ; Scroll Y
dw $0F4E ; Unknown 1
dw $0003 ; Unknown 2
dw $000A ; Unknown 3
db $14 ; Item
db $04 ; Link direction
;-----------------------------
%write8($7E0B3F, $00) ; Arc variable
%write16_enable()
%write16($7E0542, $0420) ; Object tilemap state
%write16($7E0546, $161E) ; Object tilemap state
%write16($7E054A, $1B4C) ; Object tilemap state
%write16($7E054E, $175C) ; Object tilemap state
%write16($7E0540, $075C) ; Object tilemap state
%write16($7E0544, $140C) ; Object tilemap state
%write16($7E0548, $1430) ; Object tilemap state
%write16($7E054C, $1954) ; Object tilemap state
%write16($7E0550, $1764) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Key Pot", "nmg", "skull", "key_pot")
dw $0056 ; Screen ID
dw $0D1A ; Link X
dw $0B78 ; Link Y
dw $0B0C ; Camera V
dw $0D00 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $29 ; Entrance
db $41 ; Room layout
db $09 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $10 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E029F, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $0009) ; Overworld Door
%write16($7E0542, $140C) ; Object tilemap state
%write16($7E0546, $0A5C) ; Object tilemap state
%write16($7E054A, $080C) ; Object tilemap state
%write16($7E054E, $0614) ; Object tilemap state
%write16($7E0552, $0724) ; Object tilemap state
%write16($7E0556, $0918) ; Object tilemap state
%write16($7E055A, $0924) ; Object tilemap state
%write16($7E0540, $1430) ; Object tilemap state
%write16($7E0544, $0664) ; Object tilemap state
%write16($7E0548, $0A60) ; Object tilemap state
%write16($7E054C, $0830) ; Object tilemap state
%write16($7E0550, $0718) ; Object tilemap state
%write16($7E0554, $0628) ; Object tilemap state
%write16($7E0558, $0A14) ; Object tilemap state
%write16($7E055C, $0A28) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Skull Entrance", "nmg", "skull", "skull_entrance")
dw $0040 ; Screen ID
dw $0098 ; Link X
dw $00C7 ; Link Y
dw $0066 ; Camera V
dw $0012 ; Camera H
db $01 ; Item
db $04 ; Link direction
;-----------------------------
dw $009F ; Scroll X
dw $00D3 ; Scroll Y
dw $0282 ; Unknown 1
dw $000A ; Unknown 2
dw $FFFE ; Unknown 3
db $01 ; Item
db $04 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mummy Hellway", "nmg", "skull", "mummy_hellway")
dw $0049 ; Screen ID
dw $12DC ; Link X
dw $0978 ; Link Y
dw $090B ; Camera V
dw $1200 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $2B ; Entrance
db $00 ; Room layout
db $09 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $10 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0009) ; Overworld Door
%write16($7E0542, $1490) ; Object tilemap state
%write16($7E0546, $1B9C) ; Object tilemap state
%write16($7E054A, $14AC) ; Object tilemap state
%write16($7E054E, $18AC) ; Object tilemap state
%write16($7E0552, $0F68) ; Object tilemap state
%write16($7E0556, $055C) ; Object tilemap state
%write16($7E055A, $0FEE) ; Object tilemap state
%write16($7E0540, $1390) ; Object tilemap state
%write16($7E0544, $1B90) ; Object tilemap state
%write16($7E0548, $1BA0) ; Object tilemap state
%write16($7E054C, $17AC) ; Object tilemap state
%write16($7E0550, $1CAC) ; Object tilemap state
%write16($7E0554, $1068) ; Object tilemap state
%write16($7E0558, $0FCE) ; Object tilemap state
%write16($7E055C, $1870) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE032, $0003) ; Room $59 persistent: Skull Woods (Final Section Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mummy Key", "nmg", "skull", "mummy_key")
dw $0049 ; Screen ID
dw $1278 ; Link X
dw $0815 ; Link Y
dw $0800 ; Camera V
dw $1200 ; Camera H
db $05 ; Item
db $06 ; Link direction
;-----------------------------
db $2B ; Entrance
db $00 ; Room layout
db $09 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $10 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0009) ; Overworld Door
%write16($7E0556, $855C) ; Object tilemap state
%write16($7E055A, $8FEE) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0558, $8FCE) ; Object tilemap state
%write16($7E055C, $9870) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE012, $0801) ; Room $49 persistent: Skull Woods (Gibdo Torch Puzzle Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mothula", "nmg", "skull", "mothula")
dw $0039 ; Screen ID
dw $12D0 ; Link X
dw $0778 ; Link Y
dw $070B ; Camera V
dw $1200 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $2B ; Entrance
db $00 ; Room layout
db $09 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $10 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $01) ; Trap door state
%write16_enable()
%write16($7E0696, $0009) ; Overworld Door
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7E0546, $1A64) ; Object tilemap state
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1664) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFF2, $0002) ; Room $39 persistent: Skull Woods (Gibdo Key / Mothula Hole Room)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; ICE PALACE
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_ice:
%menu_header("Ice Palace", 16)

;-------------------------------------------------------------------------------
%preset_OW("Outside Skull", "nmg", "ice", "outside_skull")
dw $0040 ; Screen ID
dw $0098 ; Link X
dw $00CB ; Link Y
dw $0069 ; Camera V
dw $0016 ; Camera H
db $05 ; Item
db $06 ; Link direction
;-----------------------------
dw $00A3 ; Scroll X
dw $00D6 ; Scroll Y
dw $0282 ; Unknown 1
dw $0007 ; Unknown 2
dw $FFFA ; Unknown 3
db $05 ; Item
db $06 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Bridge Warp", "nmg", "ice", "bridge_warp")
dw $002C ; Screen ID
dw $0898 ; Link X
dw $0A0C ; Link Y
dw $0A00 ; Camera V
dw $0820 ; Camera H
db $14 ; Item
db $02 ; Link direction
;-----------------------------
dw $089F ; Scroll X
dw $0A6D ; Scroll Y
dw $0004 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $14 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $D0) ; Arc variable
%write8($7E02A2, $00) ; Altitude
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Lottery", "nmg", "ice", "lottery")
dw $0055 ; Screen ID
dw $0BE1 ; Link X
dw $0587 ; Link Y
dw $051E ; Camera V
dw $0B00 ; Camera H
db $08 ; Item
db $00 ; Link direction
;-----------------------------
dw $0B7D ; Scroll X
dw $058D ; Scroll Y
dw $0920 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $08 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE17B, $DB) ; Overworld $FD persistent: UNKNOWN
%write8($7FE168, $D4) ; Overworld $F4 persistent: UNKNOWN
%write8($7FE166, $12) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE111, $BB) ; Overworld $C8 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Medallion", "nmg", "ice", "medallion")
dw $0057 ; Screen ID
dw $0F70 ; Link X
dw $040C ; Link Y
dw $0400 ; Camera V
dw $0EFE ; Camera H
db $08 ; Item
db $06 ; Link direction
;-----------------------------
dw $0F7B ; Scroll X
dw $046F ; Scroll Y
dw $009E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
db $08 ; Item
db $06 ; Link direction
;-----------------------------
%write_7F()
%write8($7FDFCC, $56) ; Overworld $26 persistent: UNKNOWN
%write8($7FE06E, $09) ; Overworld $77 persistent: Black Ice Cave
%write8($7FE106, $09) ; Overworld $C3 persistent: UNKNOWN
%write8($7FE128, $09) ; Overworld $D4 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Zoras Domain", "nmg", "ice", "zoras_domain")
dw $000F ; Screen ID
dw $0F40 ; Link X
dw $0215 ; Link Y
dw $0200 ; Camera V
dw $0ECD ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F4A ; Scroll X
dw $026F ; Scroll Y
dw $0098 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF3 ; Unknown 3
db $14 ; Item
db $00 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE05D, $59) ; Overworld $6E persistent: Outside Hedge Maze
%write8($7FDFA6, $38) ; Overworld $13 persistent: Sanctuary
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Tiny Warp Dik", "nmg", "ice", "tiny_warp")
dw $000F ; Screen ID
dw $0F40 ; Link X
dw $0221 ; Link Y
dw $0200 ; Camera V
dw $0ECD ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F4A ; Scroll X
dw $026F ; Scroll Y
dw $0098 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF3 ; Unknown 3
db $14 ; Item
db $00 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "ice", "ice_entrance")
dw $0075 ; Screen ID
dw $0CB8 ; Link X
dw $0DCB ; Link Y
dw $0D69 ; Camera V
dw $0C32 ; Camera H
db $14 ; Item
db $02 ; Link direction
;-----------------------------
dw $0CBF ; Scroll X
dw $0DD6 ; Scroll Y
dw $0BC6 ; Unknown 1
dw $0007 ; Unknown 2
dw $FFFE ; Unknown 3
db $14 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FDFF9, $42) ; Overworld $3C persistent: Great Swamp SE
%write8($7FDFDA, $D4) ; Overworld $2D persistent: Bridge to Hyrule Castle
%write8($7FE01B, $42) ; Overworld $4D persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Ice 2", "nmg", "ice", "ice2")
dw $000E ; Screen ID
dw $1D1E ; Link X
dw $0178 ; Link Y
dw $010C ; Camera V
dw $1D00 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $2B ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $00 ; Floor
db $12 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0468, $0000) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FDF9C, $0001) ; Room $E persistent: Ice Palace (Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Penguin Switch Room", "nmg", "ice", "penguin_switch_room")
dw $001E ; Screen ID
dw $1DD8 ; Link X
dw $0378 ; Link Y
dw $030B ; Camera V
dw $1D00 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FF ; Floor
db $12 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $0760) ; Object tilemap state
%write16($7E0546, $0860) ; Object tilemap state
%write16($7E054A, $575E) ; Object tilemap state
%write16($7E0540, $075C) ; Object tilemap state
%write16($7E0544, $085C) ; Object tilemap state
%write16($7E0548, $0954) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDF9C, $000B) ; Room $E persistent: Ice Palace (Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Bombable Floor", "nmg", "ice", "bombable_floor")
dw $001E ; Screen ID
dw $1D78 ; Link X
dw $0314 ; Link Y
dw $0300 ; Camera V
dw $1D00 ; Camera H
db $05 ; Item
db $06 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FF ; Floor
db $12 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E054A, $585A) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFBE, $0071) ; Room $1F persistent: Ice Palace (Pengator / Big Key Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Conveyor Room", "nmg", "ice", "conveyor_room")
dw $003E ; Screen ID
dw $1D78 ; Link X
dw $06D0 ; Link Y
dw $0610 ; Camera V
dw $1D00 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FE ; Floor
db $12 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $0664) ; Object tilemap state
%write16($7E0546, $0A5C) ; Object tilemap state
%write16($7E0540, $0660) ; Object tilemap state
%write16($7E0544, $0A58) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFFC, $0006) ; Room $3E persistent: Ice Palace (Stalfos Knights / Conveyor Hellway)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("IPBJ", "nmg", "ice", "ipbj")
dw $003E ; Screen ID
dw $1C78 ; Link X
dw $07D3 ; Link Y
dw $0710 ; Camera V
dw $1C00 ; Camera H
db $01 ; Item
db $02 ; Link direction
;-----------------------------
db $2D ; Entrance
db $80 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FE ; Floor
db $12 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $01) ; Trap door state
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFFC, $0306) ; Room $3E persistent: Ice Palace (Stalfos Knights / Conveyor Hellway)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Penguin Lineup Room", "nmg", "ice", "penguin_room")
dw $004E ; Screen ID
dw $1DB8 ; Link X
dw $0862 ; Link Y
dw $0800 ; Camera V
dw $1D00 ; Camera H
db $01 ; Item
db $02 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FE ; Floor
db $12 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $0B8C) ; Object tilemap state
%write16($7E0546, $0A30) ; Object tilemap state
%write16($7E0540, $078C) ; Object tilemap state
%write16($7E0544, $0C1C) ; Object tilemap state
%write16($7E0548, $0C70) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Lonely Firebar", "nmg", "ice", "lonely_firebar")
dw $005E ; Screen ID
dw $1D10 ; Link X
dw $0B78 ; Link Y
dw $0B0B ; Camera V
dw $1D00 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FD ; Floor
db $12 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $0460) ; Object tilemap state
%write16($7E0546, $0870) ; Object tilemap state
%write16($7E0540, $045C) ; Object tilemap state
%write16($7E0544, $084C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE05C, $001F) ; Room $6E persistent: Ice Palace (Pengators Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Last Two Screens", "nmg", "ice", "last_two_screens")
dw $009E ; Screen ID
dw $1D50 ; Link X
dw $1378 ; Link Y
dw $130B ; Camera V
dw $1D00 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FB ; Floor
db $12 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $1858) ; Object tilemap state
%write16($7E0546, $1CA4) ; Object tilemap state
%write16($7E0540, $13A4) ; Object tilemap state
%write16($7E0544, $179C) ; Object tilemap state
%write16($7E0548, $5764) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Kholdstare", "nmg", "ice", "kholdstare")
dw $00CE ; Screen ID
dw $1D40 ; Link X
dw $18AA ; Link Y
dw $1810 ; Camera V
dw $1D00 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $2D ; Entrance
db $01 ; Room layout
db $0B ; Main GFX
db $16 ; Music
db $FA ; Floor
db $12 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000B) ; Overworld Door
%write16($7E0542, $0850) ; Object tilemap state
%write16($7E0546, $0BD0) ; Object tilemap state
%write16($7E054A, $0CD0) ; Object tilemap state
%write16($7E054E, $0AD0) ; Object tilemap state
%write16($7E0552, $0C70) ; Object tilemap state
%write16($7E0556, $0AF0) ; Object tilemap state
%write16($7E055A, $0870) ; Object tilemap state
%write16($7E055E, $0970) ; Object tilemap state
%write16($7E0540, $084C) ; Object tilemap state
%write16($7E0544, $0BCC) ; Object tilemap state
%write16($7E0548, $0CCC) ; Object tilemap state
%write16($7E054C, $0ACC) ; Object tilemap state
%write16($7E0550, $0C6C) ; Object tilemap state
%write16($7E0554, $0AEC) ; Object tilemap state
%write16($7E0558, $086C) ; Object tilemap state
%write16($7E055C, $096C) ; Object tilemap state
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; SWAMP PALACE
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_swamp:
%menu_header("Swamp Palace", 18)

;-------------------------------------------------------------------------------
%preset_OW("Outside Ice", "nmg", "swamp", "outside_ice")
dw $0075 ; Screen ID
dw $0CB8 ; Link X
dw $0DCB ; Link Y
dw $0D6D ; Camera V
dw $0C3E ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
dw $0CC3 ; Scroll X
dw $0DDA ; Scroll Y
dw $0BC6 ; Unknown 1
dw $0003 ; Unknown 2
dw $FFF2 ; Unknown 3
db $04 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $00) ; Arc variable
%write_7F()
%write8($7FDFF9, $42) ; Overworld $3C persistent: Great Swamp SE
%write8($7FDFDA, $D4) ; Overworld $2D persistent: Bridge to Hyrule Castle
%write8($7FE01B, $42) ; Overworld $4D persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Link~s House", "nmg", "swamp", "links_house")
dw $002C ; Screen ID
dw $08B8 ; Link X
dw $0B23 ; Link Y
dw $0AC5 ; Camera V
dw $0840 ; Camera H
db $14 ; Item
db $02 ; Link direction
;-----------------------------
dw $08BF ; Scroll X
dw $0B32 ; Scroll Y
dw $0608 ; Unknown 1
dw $FFFB ; Unknown 2
dw $0000 ; Unknown 3
db $14 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $FC) ; Arc variable
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Swamp Overworld", "nmg", "swamp", "swamp_overworld")
dw $0073 ; Screen ID
dw $07AF ; Link X
dw $0DD9 ; Link Y
dw $0D1E ; Camera V
dw $0700 ; Camera H
db $08 ; Item
db $02 ; Link direction
;-----------------------------
dw $0785 ; Scroll X
dw $0D93 ; Scroll Y
dw $08A0 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
db $08 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $A8) ; Arc variable
%write_7F()
%write8($7FE147, $AB) ; Overworld $E3 persistent: UNKNOWN
%write8($7FE164, $A9) ; Overworld $F2 persistent: UNKNOWN
%write8($7FE059, $13) ; Overworld $6C persistent: Dark Link's House
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Antifairy Room", "nmg", "swamp", "antifairy_room")
dw $003B ; Screen ID
dw $0778 ; Link X
dw $0EF0 ; Link Y
dw $0E91 ; Camera V
dw $06FA ; Camera H
db $04 ; Item
db $02 ; Link direction
;-----------------------------
dw $077F ; Scroll X
dw $0EFE ; Scroll Y
dw $0520 ; Unknown 1
dw $000F ; Unknown 2
dw $0006 ; Unknown 3
db $04 ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE153, $D3) ; Overworld $E9 persistent: UNKNOWN
%write8($7FE07C, $09) ; Overworld $7E persistent: UNKNOWN
%write8($7FE164, $EC) ; Overworld $F2 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "swamp", "entrance")
dw $007B ; Screen ID
dw $0778 ; Link X
dw $0EEF ; Link Y
dw $0E91 ; Camera V
dw $06FA ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
dw $077F ; Scroll X
dw $0EFE ; Scroll Y
dw $0520 ; Unknown 1
dw $000F ; Unknown 2
dw $0006 ; Unknown 3
db $14 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E0B0C, $F0) ; Arc variable
%write16_enable()
%write16($7E0542, $193E) ; Object tilemap state
%write16($7E0540, $193A) ; Object tilemap state
%write16($7E0544, $1842) ; Object tilemap state
%write_7F()
%write8($7FE07D, $13) ; Overworld $7E persistent: UNKNOWN
%write8($7FE126, $AB) ; Overworld $D3 persistent: UNKNOWN
%write8($7FE0E2, $AA) ; Overworld $B1 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("First Key Pot", "nmg", "swamp", "first_key_pot")
dw $0028 ; Screen ID
dw $1078 ; Link X
dw $0426 ; Link Y
dw $0400 ; Camera V
dw $1000 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $4E ; Entrance
db $C0 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFD0, $000E) ; Room $28 persistent: Swamp Palace (Entrance Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Tiny Hallway Key", "nmg", "swamp", "hallway_key_1")
dw $0037 ; Screen ID
dw $0EF8 ; Link X
dw $0728 ; Link Y
dw $0700 ; Camera V
dw $0E80 ; Camera H
db $14 ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $80 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $0520) ; Object tilemap state
%write16($7E0546, $1430) ; Object tilemap state
%write16($7E0540, $0420) ; Object tilemap state
%write16($7E0544, $0620) ; Object tilemap state
%write16($7E0548, $063C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Water Lever 1", "nmg", "swamp", "water_lever_1")
dw $0037 ; Screen ID
dw $0E78 ; Link X
dw $071D ; Link Y
dw $0700 ; Camera V
dw $0E00 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $80 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Main Hub", "nmg", "swamp", "main_hub")
dw $0037 ; Screen ID
dw $0E18 ; Link X
dw $0778 ; Link Y
dw $070B ; Camera V
dw $0E00 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $80 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Water Lever 2", "nmg", "swamp", "water_lever_2")
dw $0036 ; Screen ID
dw $0C17 ; Link X
dw $0678 ; Link Y
dw $060B ; Camera V
dw $0C00 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $25 ; Entrance
db $C0 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B0C, $A0) ; Arc variable
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $0F9A) ; Object tilemap state
%write16($7E0546, $05C0) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write16($7E054E, $1072) ; Object tilemap state
%write16($7E0540, $100A) ; Object tilemap state
%write16($7E0544, $05BC) ; Object tilemap state
%write16($7E0548, $046C) ; Object tilemap state
%write16($7E054C, $0FDE) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFEC, $0031) ; Room $36 persistent: Swamp Palace (Big Chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Sociable Firebar", "nmg", "swamp", "sociable_firebar")
dw $0034 ; Screen ID
dw $0878 ; Link X
dw $072C ; Link Y
dw $06BF ; Camera V
dw $0800 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $25 ; Entrance
db $C0 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $085C) ; Object tilemap state
%write16($7E0546, $572A) ; Object tilemap state
%write16($7E054A, $5922) ; Object tilemap state
%write16($7E0540, $084E) ; Object tilemap state
%write16($7E0544, $5722) ; Object tilemap state
%write16($7E0548, $5726) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Backtracking", "nmg", "swamp", "backtracking")
dw $0035 ; Screen ID
dw $0A19 ; Link X
dw $0678 ; Link Y
dw $060B ; Camera V
dw $0A00 ; Camera H
db $04 ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $80 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $0818) ; Object tilemap state
%write16($7E0546, $0820) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C4C) ; Object tilemap state
%write16($7E0552, $1B64) ; Object tilemap state
%write16($7E0556, $1CF2) ; Object tilemap state
%write16($7E0540, $0814) ; Object tilemap state
%write16($7E0544, $081C) ; Object tilemap state
%write16($7E0548, $0824) ; Object tilemap state
%write16($7E054C, $174C) ; Object tilemap state
%write16($7E0550, $16F0) ; Object tilemap state
%write16($7E0554, $1758) ; Object tilemap state
%write16($7E0558, $063C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Hookshot", "nmg", "swamp", "hook_shot")
dw $0035 ; Screen ID
dw $0BDA ; Link X
dw $0778 ; Link Y
dw $070B ; Camera V
dw $0B00 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $25 ; Entrance
db $81 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFE8, $0001) ; Room $34 persistent: Swamp Palace (Push Block Puzzle / Pre-Big Key Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Hookdash", "nmg", "swamp", "hookdash")
dw $0036 ; Screen ID
dw $0CF8 ; Link X
dw $062C ; Link Y
dw $0600 ; Camera V
dw $0C80 ; Camera H
db $04 ; Item
db $06 ; Link direction
;-----------------------------
db $25 ; Entrance
db $C0 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $0F9A) ; Object tilemap state
%write16($7E0546, $05C0) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write16($7E054E, $1072) ; Object tilemap state
%write16($7E0540, $100A) ; Object tilemap state
%write16($7E0544, $05BC) ; Object tilemap state
%write16($7E0548, $046C) ; Object tilemap state
%write16($7E054C, $0FDE) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Water Lever 3", "nmg", "swamp", "water_lever_3")
dw $0026 ; Screen ID
dw $0DA8 ; Link X
dw $0426 ; Link Y
dw $0400 ; Camera V
dw $0D00 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $01 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $041C) ; Object tilemap state
%write16($7E0546, $1A16) ; Object tilemap state
%write16($7E0540, $080C) ; Object tilemap state
%write16($7E0544, $1396) ; Object tilemap state
%write16($7E0548, $1ADC) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FDFCC, $0400) ; Room $26 persistent: Swamp Palace (Statue Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Restock Room", "nmg", "swamp", "restock")
dw $0066 ; Screen ID
dw $0D78 ; Link X
dw $0D2A ; Link Y
dw $0D00 ; Camera V
dw $0D00 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $81 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FE ; Floor
db $0A ; Palace No
db $01 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $0654) ; Object tilemap state
%write16($7E0546, $0668) ; Object tilemap state
%write16($7E054A, $2630) ; Object tilemap state
%write16($7E054E, $2634) ; Object tilemap state
%write16($7E0552, $2638) ; Object tilemap state
%write16($7E0540, $0554) ; Object tilemap state
%write16($7E0544, $0568) ; Object tilemap state
%write16($7E0548, $2530) ; Object tilemap state
%write16($7E054C, $2534) ; Object tilemap state
%write16($7E0550, $2538) ; Object tilemap state
%write16($7E0554, $383C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE04C, $0080) ; Room $66 persistent: Swamp Palace (Hidden Chest / Hidden Door Room)
%write16($7FE06C, $0002) ; Room $76 persistent: Swamp Palace (Water Drain Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Phelps Way", "nmg", "swamp", "phelps_way")
dw $0016 ; Screen ID
dw $0D78 ; Link X
dw $02D8 ; Link Y
dw $0210 ; Camera V
dw $0D00 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $81 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write16($7E0542, $03C0) ; Object tilemap state
%write16($7E0546, $04C0) ; Object tilemap state
%write16($7E054A, $05C0) ; Object tilemap state
%write16($7E054E, $06C0) ; Object tilemap state
%write16($7E0540, $03BC) ; Object tilemap state
%write16($7E0544, $04BC) ; Object tilemap state
%write16($7E0548, $05BC) ; Object tilemap state
%write16($7E054C, $06BC) ; Object tilemap state
%write16($7E0550, $13F0) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Arrghus", "nmg", "swamp", "arrghus")
dw $0016 ; Screen ID
dw $0C78 ; Link X
dw $0212 ; Link Y
dw $0200 ; Camera V
dw $0C00 ; Camera H
db $0E ; Item
db $02 ; Link direction
;-----------------------------
db $25 ; Entrance
db $80 ; Room layout
db $08 ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $0008) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFAC, $0004) ; Room $16 persistent: Swamp Palace (Swimming Treadmill)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; MISERY MIRE
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_mire:
%menu_header("Misery Mire", 19)

;-------------------------------------------------------------------------------
%preset_OW("Outside Swamp", "nmg", "mire", "outside_swamp")
dw $007B ; Screen ID
dw $077A ; Link X
dw $0EFA ; Link Y
dw $0E9C ; Camera V
dw $06F4 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
dw $0781 ; Scroll X
dw $0F09 ; Scroll Y
dw $049E ; Unknown 1
dw $FFF4 ; Unknown 2
dw $FFFC ; Unknown 3
db $0E ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E0B09, $03) ; Arc variable
%write8($7E0B39, $88) ; Arc variable
%write8($7E0B3A, $81) ; Arc variable
%write8($7E0B3B, $79) ; Arc variable
%write8($7E02A2, $00) ; Arc variable
%write8($7E0B08, $AE) ; Arc variable
%write8($7E0B0C, $01) ; Arc variable
%write8($7E0B38, $84) ; Arc variable
%write8($7E0B3C, $7B) ; Arc variable
%write_7F()
%write8($7FE07D, $13) ; Overworld $7E persistent: UNKNOWN
%write8($7FE126, $AB) ; Overworld $D3 persistent: UNKNOWN
%write8($7FE0E2, $AA) ; Overworld $B1 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Death Mountain", "nmg", "mire", "dm")
dw $0003 ; Screen ID
dw $067B ; Link X
dw $0328 ; Link Y
dw $02CA ; Camera V
dw $060D ; Camera H
db $05 ; Item
db $02 ; Link direction
;-----------------------------
dw $0682 ; Scroll X
dw $0337 ; Scroll Y
dw $1600 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF3 ; Unknown 3
db $05 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $FE) ; Arc variable
%write_7F()
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Free Flutedash", "nmg", "mire", "free_flutedash")
dw $0003 ; Screen ID
dw $06C1 ; Link X
dw $004B ; Link Y
dw $0000 ; Camera V
dw $0653 ; Camera H
db $0E ; Item
db $06 ; Link direction
;-----------------------------
dw $06C8 ; Scroll X
dw $006D ; Scroll Y
dw $000A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFD ; Unknown 3
db $0E ; Item
db $06 ; Link direction
;-----------------------------
%write8($7E02A2, $0F) ; Arc variable
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Mire Overworld Screen", "nmg", "mire", "darkworld_warp")
dw $0030 ; Screen ID
dw $008E ; Link X
dw $0FA8 ; Link Y
dw $0F1E ; Camera V
dw $000C ; Camera H
db $0C ; Item
db $06 ; Link direction
;-----------------------------
dw $0099 ; Scroll X
dw $0F8D ; Scroll Y
dw $1880 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF4 ; Unknown 3
db $0C ; Item
db $06 ; Link direction
;-----------------------------
%write8($7E02A2, $F7) ; Arc variable
%write8($7E02A2, $8B) ; Altitude
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Mire Entrance", "nmg", "mire", "entrance")
dw $0070 ; Screen ID
dw $0128 ; Link X
dw $0CE6 ; Link Y
dw $0C82 ; Camera V
dw $00A6 ; Camera H
db $08 ; Item
db $06 ; Link direction
;-----------------------------
dw $0133 ; Scroll X
dw $0CF1 ; Scroll Y
dw $0414 ; Unknown 1
dw $000C ; Unknown 2
dw $FFFA ; Unknown 3
db $08 ; Item
db $06 ; Link direction
;-----------------------------
%write8($7E02A2, $8B) ; Arc variable
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mire 2", "nmg", "mire", "mire2")
dw $0098 ; Screen ID
dw $1188 ; Link X
dw $132A ; Link Y
dw $1300 ; Camera V
dw $1100 ; Camera H
db $10 ; Item
db $00 ; Link direction
;-----------------------------
db $25 ; Entrance
db $81 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $00 ; Floor
db $0E ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Main Hub", "nmg", "mire", "main_hub")
dw $00D2 ; Screen ID
dw $0578 ; Link X
dw $1A1C ; Link Y
dw $1A00 ; Camera V
dw $0500 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $27 ; Entrance
db $C1 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0468, $0000) ; Trap door state
%write_7F()
%write16_enable()
%write16($7FE124, $03EF) ; Room $D2 persistent: Misery Mire (Mire02 / Wizzrobes Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Beat the Fireball", "nmg", "mire", "beat_the_fireball")
dw $00B2 ; Screen ID
dw $0578 ; Link X
dw $17E2 ; Link Y
dw $1710 ; Camera V
dw $0500 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $27 ; Entrance
db $01 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $2930) ; Object tilemap state
%write16($7E0546, $284C) ; Object tilemap state
%write16($7E054A, $2A4C) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $2830) ; Object tilemap state
%write16($7E0544, $2A30) ; Object tilemap state
%write16($7E0548, $294C) ; Object tilemap state
%write16($7E054C, $175E) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Bari Key", "nmg", "mire", "bari_key")
dw $00C2 ; Screen ID
dw $0415 ; Link X
dw $1978 ; Link Y
dw $190B ; Camera V
dw $0400 ; Camera H
db $05 ; Item
db $02 ; Link direction
;-----------------------------
db $27 ; Entrance
db $C0 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $3044) ; Object tilemap state
%write16($7E0546, $07B4) ; Object tilemap state
%write16($7E0540, $2E64) ; Object tilemap state
%write16($7E0544, $3440) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Sluggulas", "nmg", "mire", "sluggulas")
dw $00C1 ; Screen ID
dw $0278 ; Link X
dw $19CF ; Link Y
dw $1910 ; Camera V
dw $0200 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $27 ; Entrance
db $00 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $1430) ; Object tilemap state
%write16($7E0546, $1C30) ; Object tilemap state
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE102, $0200) ; Room $C1 persistent: Misery Mire (Compass Chest / Tile Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches", "nmg", "mire", "torches")
dw $00D1 ; Screen ID
dw $02A8 ; Link X
dw $1A28 ; Link Y
dw $1A00 ; Camera V
dw $0200 ; Camera H
db $05 ; Item
db $02 ; Link direction
;-----------------------------
db $27 ; Entrance
db $00 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $0430) ; Object tilemap state
%write16($7E0546, $0C70) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write16($7E0540, $07A8) ; Object tilemap state
%write16($7E0544, $0C4C) ; Object tilemap state
%write16($7E0548, $044C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE122, $0040) ; Room $D1 persistent: Misery Mire (Conveyor Slug / Big Key Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spark Gamble", "nmg", "mire", "spark_gamble")
dw $00C1 ; Screen ID
dw $03D6 ; Link X
dw $1878 ; Link Y
dw $180B ; Camera V
dw $0300 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $27 ; Entrance
db $01 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $1430) ; Object tilemap state
%write16($7E0546, $1C30) ; Object tilemap state
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Big Chest Room", "nmg", "mire", "big_chest_room")
dw $00C3 ; Screen ID
dw $06D8 ; Link X
dw $1978 ; Link Y
dw $190B ; Camera V
dw $0600 ; Camera H
db $05 ; Item
db $06 ; Link direction
;-----------------------------
db $27 ; Entrance
db $40 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spike Key", "nmg", "mire", "spike_key")
dw $00C3 ; Screen ID
dw $0678 ; Link X
dw $1814 ; Link Y
dw $1800 ; Camera V
dw $0600 ; Camera H
db $0E ; Item
db $06 ; Link direction
;-----------------------------
db $27 ; Entrance
db $40 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3F, $01) ; Arc variable
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Wizzrobe", "nmg", "mire", "wizzrobe")
dw $00B3 ; Screen ID
dw $0624 ; Link X
dw $1678 ; Link Y
dw $160B ; Camera V
dw $0600 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $27 ; Entrance
db $00 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $02 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $1430) ; Object tilemap state
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C30) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Basement", "nmg", "mire", "basement")
dw $00A2 ; Screen ID
dw $04F8 ; Link X
dw $1444 ; Link Y
dw $1400 ; Camera V
dw $0480 ; Camera H
db $0E ; Item
db $04 ; Link direction
;-----------------------------
db $27 ; Entrance
db $C0 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $00 ; Door
db $01 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0540, $1C0C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0E4, $0001) ; Room $B2 persistent: Misery Mire (Slug Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spooky Action 1", "nmg", "mire", "spooky_action_1")
dw $0093 ; Screen ID
dw $0612 ; Link X
dw $1378 ; Link Y
dw $130B ; Camera V
dw $0600 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $27 ; Entrance
db $00 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FE ; Floor
db $0E ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E02A2, $00) ; Arc variable
%write8($7E02A2, $8B) ; Altitude
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $0760) ; Object tilemap state
%write16($7E0546, $17A0) ; Object tilemap state
%write16($7E054A, $18A0) ; Object tilemap state
%write16($7E0540, $071C) ; Object tilemap state
%write16($7E0544, $179C) ; Object tilemap state
%write16($7E0548, $189C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spooky Action 2", "nmg", "mire", "spooky_action_2")
dw $0092 ; Screen ID
dw $0515 ; Link X
dw $1378 ; Link Y
dw $130B ; Camera V
dw $0500 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $27 ; Entrance
db $41 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FE ; Floor
db $0E ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3F, $00) ; Arc variable
%write8($7E02A2, $8B) ; Altitude
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write16($7E0542, $175C) ; Object tilemap state
%write16($7E0546, $1768) ; Object tilemap state
%write16($7E0540, $1756) ; Object tilemap state
%write16($7E0544, $1762) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Vitreous", "nmg", "mire", "vitty")
dw $00A0 ; Screen ID
dw $0078 ; Link X
dw $1428 ; Link Y
dw $1400 ; Camera V
dw $0000 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $27 ; Entrance
db $C0 ; Room layout
db $0C ; Main GFX
db $16 ; Music
db $FF ; Floor
db $0E ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000C) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE0A4, $0200) ; Room $92 persistent: Misery Mire (Dark Bomb Wall / Switches Room)
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; TURTLE ROCK
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_trock:
%menu_header("Turtle Rock", 17)

;-------------------------------------------------------------------------------
%preset_OW("Outside Mire", "nmg", "trock", "outside_mire")
dw $0070 ; Screen ID
dw $0128 ; Link X
dw $0CDA ; Link Y
dw $0C7C ; Camera V
dw $00A6 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
dw $0133 ; Scroll X
dw $0CE9 ; Scroll Y
dw $0414 ; Unknown 1
dw $0004 ; Unknown 2
dw $FFFA ; Unknown 3
db $03 ; Item
db $00 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Ice Rod Overworld", "nmg", "trock", "icerod_overworld")
dw $003F ; Screen ID
dw $0F70 ; Link X
dw $0E07 ; Link Y
dw $0E00 ; Camera V
dw $0EF6 ; Camera H
db $14 ; Item
db $02 ; Link direction
;-----------------------------
dw $0F7B ; Scroll X
dw $0E6D ; Scroll Y
dw $001E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
db $14 ; Item
db $02 ; Link direction
;-----------------------------
%write8($7E02A2, $38) ; Arc variable
%write_7F()
%write8($7FE0D6, $0B) ; Overworld $AB persistent: UNKNOWN
%write8($7FE047, $BB) ; Overworld $63 persistent: UNKNOWN
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Death Mountain", "nmg", "trock", "dm")
dw $0003 ; Screen ID
dw $067B ; Link X
dw $0328 ; Link Y
dw $02CA ; Camera V
dw $060D ; Camera H
db $08 ; Item
db $00 ; Link direction
;-----------------------------
dw $0682 ; Scroll X
dw $0337 ; Scroll Y
dw $1600 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF3 ; Unknown 3
db $08 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E029F, $FF) ; Arc variable
%write8($7E02A2, $FE) ; Arc variable
%write_7F()
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Squirrels", "nmg", "trock", "squirrels")
dw $00DF ; Screen ID
dw $1EF8 ; Link X
dw $1BD9 ; Link Y
dw $1B10 ; Camera V
dw $1E80 ; Camera H
db $08 ; Item
db $06 ; Link direction
;-----------------------------
db $84 ; Entrance
db $80 ; Room layout
db $06 ; Main GFX
db $12 ; Music
db $01 ; Floor
db $FF ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E02A2, $84) ; Arc variable
%write16_enable()
%write16($7E0696, $0006) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE13E, $0003) ; Room $DF persistent: Cave
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Peg Puzzle", "nmg", "trock", "peg_puzzle")
dw $0005 ; Screen ID
dw $0DE1 ; Link X
dw $0077 ; Link Y
dw $0013 ; Camera V
dw $0D00 ; Camera H
db $0E ; Item
db $02 ; Link direction
;-----------------------------
dw $0D7D ; Scroll X
dw $0082 ; Scroll Y
dw $0060 ; Unknown 1
dw $000B ; Unknown 2
dw $0000 ; Unknown 3
db $0E ; Item
db $02 ; Link direction
;-----------------------------
%write_7F()
%write8($7FE17F, $CA) ; Overworld $FF persistent: UNKNOWN
%write8($7FE1BF, $EC) ; Overworld $11F persistent: UNKNOWN
%write8($7FE058, $CA) ; Overworld $6C persistent: Dark Link's House
%write8($7FE16E, $28) ; Overworld $F7 persistent: UNKNOWN
%write8($7FE037, $28) ; Overworld $5B persistent: Pyramid of Power
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "trock", "entrance")
dw $0047 ; Screen ID
dw $0F08 ; Link X
dw $013D ; Link Y
dw $00DB ; Camera V
dw $0E96 ; Camera H
db $0E ; Item
db $06 ; Link direction
;-----------------------------
dw $0F13 ; Scroll X
dw $014A ; Scroll Y
dw $0614 ; Unknown 1
dw $0003 ; Unknown 2
dw $000A ; Unknown 3
db $0E ; Item
db $06 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches", "nmg", "trock", "torches")
dw $00C6 ; Screen ID
dw $0DCD ; Link X
dw $1878 ; Link Y
dw $180B ; Camera V
dw $0D00 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $1F ; Entrance
db $C1 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $00 ; Floor
db $18 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E02A2, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $190C) ; Object tilemap state
%write16($7E0540, $070C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE10C, $0028) ; Room $C6 persistent: Turtle Rock
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Roller Room", "nmg", "trock", "roller_room")
dw $00C7 ; Screen ID
dw $0E78 ; Link X
dw $1820 ; Link Y
dw $1800 ; Camera V
dw $0E00 ; Camera H
db $12 ; Item
db $06 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $00 ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $0B0C) ; Object tilemap state
%write16($7E0546, $160C) ; Object tilemap state
%write16($7E054A, $894A) ; Object tilemap state
%write16($7E054E, $8DCA) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0A0C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write16($7E0548, $8932) ; Object tilemap state
%write16($7E054C, $8DB2) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pokey 0", "nmg", "trock", "pokey_0")
dw $00C6 ; Screen ID
dw $0C78 ; Link X
dw $182B ; Link Y
dw $1800 ; Camera V
dw $0C00 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $00 ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $190C) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $070C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Chomps", "nmg", "trock", "chomps")
dw $00B6 ; Screen ID
dw $0C78 ; Link X
dw $1718 ; Link Y
dw $1700 ; Camera V
dw $0C00 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $35 ; Entrance
db $00 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $00 ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $0A96) ; Object tilemap state
%write16($7E0540, $095E) ; Object tilemap state
%write16($7E0544, $0AA6) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0EC, $0020) ; Room $B6 persistent: Turtle Rock (Chain Chomps Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pokey 1", "nmg", "trock", "pokey_1")
dw $0014 ; Screen ID
dw $0819 ; Link X
dw $0278 ; Link Y
dw $020B ; Camera V
dw $0800 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FF ; Floor
db $18 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pokeys 2", "nmg", "trock", "pokeys_2")
dw $0014 ; Screen ID
dw $0878 ; Link X
dw $03C4 ; Link Y
dw $0310 ; Camera V
dw $0800 ; Camera H
db $12 ; Item
db $04 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FF ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFA6, $0040) ; Room $13 persistent: Turtle Rock (Hokku-Bokku Key Room 2)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Crystal Roller", "nmg", "trock", "crystal_roller")
dw $0014 ; Screen ID
dw $0878 ; Link X
dw $022B ; Link Y
dw $0200 ; Camera V
dw $0800 ; Camera H
db $12 ; Item
db $02 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FF ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFC8, $0028) ; Room $24 persistent: Turtle Rock (Double Hokku-Bokku / Big chest Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Dark Room", "nmg", "trock", "dark_room")
dw $0004 ; Screen ID
dw $0878 ; Link X
dw $0025 ; Link Y
dw $0000 ; Camera V
dw $0800 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $35 ; Entrance
db $00 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FF ; Floor
db $18 ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3B, $00) ; Arc variable
%write8($7E0B0C, $A0) ; Arc variable
%write8($7E0B3C, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $16A2) ; Object tilemap state
%write16($7E0546, $19A2) ; Object tilemap state
%write16($7E054A, $13F0) ; Object tilemap state
%write16($7E0540, $1698) ; Object tilemap state
%write16($7E0544, $1998) ; Object tilemap state
%write16($7E0548, $13CC) ; Object tilemap state
%write16($7E054C, $5A5E) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Laser Skip", "nmg", "trock", "laser_skip")
dw $00C5 ; Screen ID
dw $0A78 ; Link X
dw $19DE ; Link Y
dw $1910 ; Camera V
dw $0A00 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $35 ; Entrance
db $40 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FE ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE10A, $0040) ; Room $C5 persistent: Turtle Rock (Laser Bridge)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Switch Room", "nmg", "trock", "switch_room")
dw $00C5 ; Screen ID
dw $0A18 ; Link X
dw $1978 ; Link Y
dw $190B ; Camera V
dw $0A00 ; Camera H
db $12 ; Item
db $02 ; Link direction
;-----------------------------
db $35 ; Entrance
db $40 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FE ; Floor
db $18 ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE12A, $0010) ; Room $D5 persistent: Turtle Rock (Laser Key Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Trinexx", "nmg", "trock", "trinexx")
dw $00B4 ; Screen ID
dw $0878 ; Link X
dw $161D ; Link Y
dw $1600 ; Camera V
dw $0800 ; Camera H
db $12 ; Item
db $04 ; Link direction
;-----------------------------
db $35 ; Entrance
db $C0 ; Room layout
db $0D ; Main GFX
db $16 ; Music
db $FD ; Floor
db $18 ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E02A1, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $000D) ; Overworld Door
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7E0540, $1C2C) ; Object tilemap state
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; GANON~S TOWER
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_gtower:
%menu_header("Ganon~s Tower", 21)

;-------------------------------------------------------------------------------
%preset_OW("Outside Turtle Rock", "nmg", "gtower", "outside_trock")
dw $0047 ; Screen ID
dw $0F08 ; Link X
dw $013E ; Link Y
dw $00E0 ; Camera V
dw $0E96 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
dw $0F13 ; Scroll X
dw $014D ; Scroll Y
dw $0712 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
db $12 ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E0B09, $60) ; Arc variable
%write8($7E0B08, $78) ; Arc variable
%write8($7E0B0C, $3C) ; Arc variable
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Entrance", "nmg", "gtower", "entrance")
dw $0043 ; Screen ID
dw $08F8 ; Link X
dw $0037 ; Link Y
dw $0000 ; Camera V
dw $087A ; Camera H
db $0E ; Item
db $02 ; Link direction
;-----------------------------
dw $08FF ; Scroll X
dw $006D ; Scroll Y
dw $0050 ; Unknown 1
dw $0000 ; Unknown 2
dw $0006 ; Unknown 3
db $0E ; Item
db $02 ; Link direction
;-----------------------------
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spike Skip", "nmg", "gtower", "spike_skip")
dw $008B ; Screen ID
dw $1715 ; Link X
dw $1078 ; Link Y
dw $100C ; Camera V
dw $1700 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $00 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $00) ; Trap door state
%write8($7E0B0C, $50) ; Arc variable
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $171C) ; Object tilemap state
%write16($7E0546, $0864) ; Object tilemap state
%write16($7E054A, $085C) ; Object tilemap state
%write16($7E054E, $0C4C) ; Object tilemap state
%write16($7E0552, $144C) ; Object tilemap state
%write16($7E0556, $0864) ; Object tilemap state
%write16($7E0540, $0920) ; Object tilemap state
%write16($7E0544, $1720) ; Object tilemap state
%write16($7E0548, $0760) ; Object tilemap state
%write16($7E054C, $0960) ; Object tilemap state
%write16($7E0550, $0C70) ; Object tilemap state
%write16($7E0554, $1C4C) ; Object tilemap state
%write16($7E0641, $0001) ; Room puzzle state (?)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Pre Firesnakes Room", "nmg", "gtower", "pre_firesnakes_room")
dw $009B ; Screen ID
dw $16D4 ; Link X
dw $1278 ; Link Y
dw $120B ; Camera V
dw $1600 ; Camera H
db $04 ; Item
db $04 ; Link direction
;-----------------------------
db $37 ; Entrance
db $00 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $00 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0641, $00) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $0C30) ; Object tilemap state
%write16($7E0546, $1820) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0430) ; Object tilemap state
%write16($7E0544, $181C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Bombable Floor", "nmg", "gtower", "bombable_floor")
dw $009C ; Screen ID
dw $1978 ; Link X
dw $1224 ; Link Y
dw $1200 ; Camera V
dw $1900 ; Camera H
db $02 ; Item
db $06 ; Link direction
;-----------------------------
db $37 ; Entrance
db $C1 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $00 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $0938) ; Object tilemap state
%write16($7E0540, $0838) ; Object tilemap state
%write16($7E0544, $0550) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE0B8, $0002) ; Room $9C persistent: Ganon's Tower (Invisible Floor Maze Room)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Ice Armos", "nmg", "gtower", "ice_armos")
dw $001C ; Screen ID
dw $199F ; Link X
dw $03A8 ; Link Y
dw $0310 ; Camera V
dw $1900 ; Camera H
db $01 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $FF ; Floor
db $1A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E029F, $00) ; Arc variable
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Floor 2", "nmg", "gtower", "floor_2")
dw $000C ; Screen ID
dw $18F8 ; Link X
dw $0026 ; Link Y
dw $0000 ; Camera V
dw $1880 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $37 ; Entrance
db $C0 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $01 ; Floor
db $1A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B09, $00) ; Arc variable
%write8($7E0B08, $40) ; Arc variable
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mimics 1", "nmg", "gtower", "mimics1")
dw $006B ; Screen ID
dw $1678 ; Link X
dw $0CCC ; Link Y
dw $0C10 ; Camera V
dw $1600 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $80 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $02 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $00) ; Trap door state
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $052C) ; Object tilemap state
%write16($7E0546, $082C) ; Object tilemap state
%write16($7E054A, $0B2C) ; Object tilemap state
%write16($7E054E, $1962) ; Object tilemap state
%write16($7E0540, $051C) ; Object tilemap state
%write16($7E0544, $081C) ; Object tilemap state
%write16($7E0548, $0B1C) ; Object tilemap state
%write16($7E054C, $195A) ; Object tilemap state
%write16($7E0550, $050C) ; Object tilemap state
%write16($7E0641, $0001) ; Room puzzle state (?)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Mimics 2", "nmg", "gtower", "mimics2")
dw $006B ; Screen ID
dw $16D8 ; Link X
dw $0D78 ; Link Y
dw $0D0B ; Camera V
dw $1600 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
db $37 ; Entrance
db $00 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $02 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0641, $00) ; Room puzzle state (?)
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE056, $0240) ; Room $6B persistent: Ganon's Tower (Mimics Rooms)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Spike Room", "nmg", "gtower", "spike_room")
dw $006B ; Screen ID
dw $1778 ; Link X
dw $0C1C ; Link Y
dw $0C00 ; Camera V
dw $1700 ; Camera H
db $03 ; Item
db $06 ; Link direction
;-----------------------------
db $37 ; Entrance
db $81 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $02 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0468, $01) ; Trap door state
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE056, $2640) ; Room $6B persistent: Ganon's Tower (Mimics Rooms)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Gauntlet 1", "nmg", "gtower", "gauntlet")
dw $005C ; Screen ID
dw $1978 ; Link X
dw $0A23 ; Link Y
dw $0A00 ; Camera V
dw $1900 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $81 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $02 ; Floor
db $1A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $16D8) ; Object tilemap state
%write16($7E0546, $19D8) ; Object tilemap state
%write16($7E054A, $19E4) ; Object tilemap state
%write16($7E054E, $16E4) ; Object tilemap state
%write16($7E0540, $165E) ; Object tilemap state
%write16($7E0544, $1854) ; Object tilemap state
%write16($7E0548, $1A5E) ; Object tilemap state
%write16($7E054C, $1868) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Gauntlet 3", "nmg", "gtower", "gauntlet_3")
dw $005D ; Screen ID
dw $1A78 ; Link X
dw $0AE0 ; Link Y
dw $0A10 ; Camera V
dw $1A00 ; Camera H
db $03 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $00 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $03 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $052C) ; Object tilemap state
%write16($7E0546, $0B2C) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0510) ; Object tilemap state
%write16($7E0544, $0B10) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE03A, $00FD) ; Room $5D persistent: Ganon's Tower (Gauntlet 1/2/3)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Lanmola 2", "nmg", "gtower", "lanmola2")
dw $006C ; Screen ID
dw $19D5 ; Link X
dw $0D78 ; Link Y
dw $0D0B ; Camera V
dw $1900 ; Camera H
db $03 ; Item
db $02 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $03 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $0628) ; Object tilemap state
%write16($7E0546, $0A28) ; Object tilemap state
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0614) ; Object tilemap state
%write16($7E0544, $0A14) ; Object tilemap state
%write_7F()
%write16_enable()
%write16($7FE03A, $0EFD) ; Room $5D persistent: Ganon's Tower (Gauntlet 1/2/3)
%write16($7FE05A, $00C9) ; Room $6D persistent: Ganon's Tower (Gauntlet 4/5)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Wizzrobes 1", "nmg", "gtower", "wizz1")
dw $006C ; Screen ID
dw $1878 ; Link X
dw $0C26 ; Link Y
dw $0C00 ; Camera V
dw $1800 ; Camera H
db $05 ; Item
db $04 ; Link direction
;-----------------------------
db $37 ; Entrance
db $00 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $03 ; Floor
db $1A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Wizzrobes 2", "nmg", "gtower", "wizz2")
dw $00A5 ; Screen ID
dw $0B78 ; Link X
dw $1524 ; Link Y
dw $1500 ; Camera V
dw $0B00 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $81 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $04 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE0CA, $008C) ; Room $A5 persistent: Ganon's Tower (Wizzrobes Rooms)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches 1", "nmg", "gtower", "torches1")
dw $0095 ; Screen ID
dw $0BD3 ; Link X
dw $1278 ; Link Y
dw $120B ; Camera V
dw $0B00 ; Camera H
db $12 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $41 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $04 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write8($7E0B3F, $01) ; Arc variable
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FE0CA, $00EF) ; Room $A5 persistent: Ganon's Tower (Wizzrobes Rooms)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Torches 2", "nmg", "gtower", "torches2")
dw $0096 ; Screen ID
dw $0D78 ; Link X
dw $13A2 ; Link Y
dw $1310 ; Camera V
dw $0D00 ; Camera H
db $09 ; Item
db $06 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $04 ; Floor
db $1A ; Palace No
db $00 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $1570) ; Object tilemap state
%write16($7E0546, $0B2E) ; Object tilemap state
%write16($7E054A, $120E) ; Object tilemap state
%write16($7E054E, $1820) ; Object tilemap state
%write16($7E0552, $8B0C) ; Object tilemap state
%write16($7E0556, $9220) ; Object tilemap state
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $154C) ; Object tilemap state
%write16($7E0544, $0520) ; Object tilemap state
%write16($7E0548, $1120) ; Object tilemap state
%write16($7E054C, $180E) ; Object tilemap state
%write16($7E0550, $8420) ; Object tilemap state
%write16($7E0554, $8B32) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Helma Key", "nmg", "gtower", "helma_key")
dw $003D ; Screen ID
dw $1B78 ; Link X
dw $0724 ; Link Y
dw $0700 ; Camera V
dw $1B00 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $05 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0542, $0C70) ; Object tilemap state
%write16($7E0546, $1628) ; Object tilemap state
%write16($7E054A, $1A14) ; Object tilemap state
%write16($7E054E, $954C) ; Object tilemap state
%write16($7E0552, $9C50) ; Object tilemap state
%write16($7E0540, $0C4C) ; Object tilemap state
%write16($7E0544, $1618) ; Object tilemap state
%write16($7E0548, $1820) ; Object tilemap state
%write16($7E054C, $1A24) ; Object tilemap state
%write16($7E0550, $9570) ; Object tilemap state
%write16($7E0554, $9C6C) ; Object tilemap state
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Bombable Wall", "nmg", "gtower", "bombable_wall")
dw $003D ; Screen ID
dw $1B16 ; Link X
dw $0678 ; Link Y
dw $060B ; Camera V
dw $1B00 ; Camera H
db $05 ; Item
db $00 ; Link direction
;-----------------------------
db $37 ; Entrance
db $01 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $05 ; Floor
db $1A ; Palace No
db $02 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_7F()
%write16_enable()
%write16($7FDFFA, $000C) ; Room $3D persistent: Ganon's Tower (Torch Room 2)
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Moldorm 2", "nmg", "gtower", "moldorm_2")
dw $003D ; Screen ID
dw $1A78 ; Link X
dw $07D0 ; Link Y
dw $0710 ; Camera V
dw $1A00 ; Camera H
db $01 ; Item
db $04 ; Link direction
;-----------------------------
db $37 ; Entrance
db $00 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $05 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write_end()

;-------------------------------------------------------------------------------
%preset_UW("Agahnim 2", "nmg", "gtower", "agahnim_2")
dw $001D ; Screen ID
dw $1A78 ; Link X
dw $0226 ; Link Y
dw $0200 ; Camera V
dw $1A00 ; Camera H
db $05 ; Item
db $02 ; Link direction
;-----------------------------
db $37 ; Entrance
db $80 ; Room layout
db $0E ; Main GFX
db $16 ; Music
db $06 ; Floor
db $1A ; Palace No
db $01 ; Door
db $00 ; Layer
;-----------------------------
%write16_enable()
%write16($7E0696, $000E) ; Overworld Door
%write16($7E0468, $0001) ; Trap door state
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; GANON
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_ganon:
%menu_header("Ganon", 2)

;-------------------------------------------------------------------------------
%preset_OW("Ganon", "nmg", "ganon", "pyramid")
dw $005B ; Screen ID
dw $07F0 ; Link X
dw $0668 ; Link Y
dw $060A ; Camera V
dw $0778 ; Camera H
db $0E ; Item
db $00 ; Link direction
;-----------------------------
dw $07F7 ; Scroll X
dw $0677 ; Scroll Y
dw $002E ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF8 ; Unknown 3
db $0E ; Item
db $00 ; Link direction
;-----------------------------
%write8($7E02A2, $FC) ; Arc variable
%write_end()

;-------------------------------------------------------------------------------
%preset_OW("Ganon (full magic)", "nmg", "ganon", "pyramid_magic")
dw $005B ; Screen ID
dw $07F0 ; Link X
dw $0669 ; Link Y
dw $060B ; Camera V
dw $0778 ; Camera H
db $0E ; Item
db $02 ; Link direction
;-----------------------------
dw $07F7 ; Scroll X
dw $0678 ; Scroll Y
dw $002E ; Unknown 1
dw $FFF5 ; Unknown 2
dw $FFF8 ; Unknown 3
db $0E ; Item
db $02 ; Link direction
;-----------------------------
%write_end()

;===============================================================================
;-------------------------------------------------------------------------------
; BOSSES
;-------------------------------------------------------------------------------
;===============================================================================
presetmenu_nmg_boss:
%menu_header("Bosses", 0)
;===============================================================================

;===============================================================================
presetpersistent_nmg_escape:
;-----------------------------
.bed
..end
;-----------------------------
.courtyard
..end
;-----------------------------
.entrance
..end
;-----------------------------
.1st_keyguard
..end
;-----------------------------
.stealth_room
..end
;-----------------------------
.2nd_keyguard
%write8_enable()
%write8($7E0FC7, $01) ; Prize pack index
%write_end()
..end
;-----------------------------
.ball_n_chains
..end
;-----------------------------
.backtracking
..end
;-----------------------------
.keyguard_revisited
..end
;-----------------------------
.throne_room
..end
;-----------------------------
.snake_avoidance_room
..end
;-----------------------------
.water_rooms
..end
;-----------------------------
.keyrat
..end
;-----------------------------
.last_two_screens
..end

;===============================================================================
presetpersistent_nmg_eastern:
;-----------------------------
.before_cutscene
%write8_enable()
%write8($7E0B31, $00) ; Arc variable
%write8($7E0B35, $00) ; Arc variable
%write8($7E0FC8, $02) ; Prize pack index
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.after_cutscene
..end
;-----------------------------
.octoroc
..end
;-----------------------------
.outside_palace
..end
;-----------------------------
.entrance
%write8_enable()
%write8($7E0FC8, $03) ; Prize pack index
%write_end()
..end
;-----------------------------
.stalfos_room
..end
;-----------------------------
.big_chest_room_1
%write8_enable()
%write8($7E0FCC, $01) ; Prize pack index
%write_end()
..end
;-----------------------------
.dark_key_room
..end
;-----------------------------
.big_key_dmg_boost
%write8_enable()
%write8($7E0FC8, $05) ; Prize pack index
%write8($7E0B37, $FF) ; Arc variable
%write_end()
..end
;-----------------------------
.big_chest_room_2
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.gwg
..end
;-----------------------------
.pot_room
%write8_enable()
%write8($7E0FC8, $00) ; Prize pack index
%write_end()
..end
;-----------------------------
.zeldagamer_room
..end
;-----------------------------
.armos
%write8_enable()
%write8($7E0FC8, $02) ; Prize pack index
%write_end()
..end

;===============================================================================
presetpersistent_nmg_desert:
;-----------------------------
.outside_eastern_palace
%write8_enable()
%write8($7E0B31, $30) ; Arc variable
%write8($7E0B35, $30) ; Arc variable
%write8($7E0B32, $30) ; Arc variable
%write8($7E0B33, $30) ; Arc variable
%write8($7E0B37, $BF) ; Arc variable
%write8($7E0B30, $30) ; Arc variable
%write8($7E0B34, $30) ; Arc variable
%write_end()
..end
;-----------------------------
.ep_spinspeed
..end
;-----------------------------
.bridge_screen
..end
;-----------------------------
.unholy_spinspeed
..end
;-----------------------------
.water_dash
..end
;-----------------------------
.outside_desert_palace
..end
;-----------------------------
.desert_entrance
..end
;-----------------------------
.keybonk
..end
;-----------------------------
.pre_cannonball_room
..end
;-----------------------------
.pot_room
%write8_enable()
%write8($7E0FC8, $03) ; Prize pack index
%write_end()
..end
;-----------------------------
.desert2_spinspeed
..end
;-----------------------------
.popo_genocide_room
%write8_enable()
%write8($7E0B37, $9D) ; Arc variable
%write_end()
..end
;-----------------------------
.torches
%write8_enable()
%write8($7E0FC8, $04) ; Prize pack index
%write8($7E0B37, $A8) ; Arc variable
%write_end()
..end
;-----------------------------
.lanmolas
%write8_enable()
%write8($7E0B37, $96) ; Arc variable
%write_end()
..end

;===============================================================================
presetpersistent_nmg_hera:
;-----------------------------
.outside_desert_palace
..end
;-----------------------------
.fake_flippers
..end
;-----------------------------
.dm
%write8_enable()
%write8($7E0FC9, $01) ; Prize pack index
%write_end()
..end
;-----------------------------
.after_mirror
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.quickhop
..end
;-----------------------------
.entrance
..end
;-----------------------------
.tile_room
..end
;-----------------------------
.torches
%write8_enable()
%write8($7E0B37, $80) ; Arc variable
%write_end()
..end
;-----------------------------
.beetles
..end
;-----------------------------
.petting_zoo
%write8_enable()
%write8($7E0FCC, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.moldorm
%write8_enable()
%write8($7E0FC8, $05) ; Prize pack index
%write_end()
..end

;===============================================================================
presetpersistent_nmg_aga:
;-----------------------------
.outside_hera
..end
;-----------------------------
.first_rupee_tree
..end
;-----------------------------
.lost_woods
..end
;-----------------------------
.after_grove
..end
;-----------------------------
.after_lost_woods
..end
;-----------------------------
.castle_screen
..end
;-----------------------------
.entrance
..end
;-----------------------------
.fairy_skip
%write8_enable()
%write8($7E0FC8, $07) ; Prize pack index
%write_end()
..end
;-----------------------------
.dark_room_of_despair
..end
;-----------------------------
.dark_room_of_melancholy
..end
;-----------------------------
.spear_guards
..end
;-----------------------------
.circle_of_pots
%write8_enable()
%write8($7E0FC7, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.pit_room
..end
;-----------------------------
.agahnim
..end

;===============================================================================
presetpersistent_nmg_pod:
;-----------------------------
.pyramid
..end
;-----------------------------
.pod_overworld
..end
;-----------------------------
.entrance
..end
;-----------------------------
.main_hub_small_key
..end
;-----------------------------
.main_hub_bk
%write8_enable()
%write8($7E0B35, $00) ; Arc variable
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write8($7E0B34, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.main_hub_hammeryump
..end
;-----------------------------
.hammeryump
..end
;-----------------------------
.before_sexy_statue
%write8_enable()
%write8($7E0FCD, $01) ; Prize pack index
%write8($7E0B37, $01) ; Arc variable
%write_end()
..end
;-----------------------------
.sexy_statue_room
..end
;-----------------------------
.mimics
..end
;-----------------------------
.statue
%write8_enable()
%write8($7E0FCB, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.basement
..end
;-----------------------------
.turtle_room
..end
;-----------------------------
.helma
%write8_enable()
%write8($7E0FC8, $01) ; Prize pack index
%write_end()
..end

;===============================================================================
presetpersistent_nmg_thieves:
;-----------------------------
.outside_pod
%write8_enable()
%write8($7E0B31, $38) ; Arc variable
%write8($7E0B32, $00) ; Arc variable
%write8($7E0B33, $0F) ; Arc variable
%write8($7E0B30, $0E) ; Arc variable
%write_end()
..end
;-----------------------------
.ow_hammerdash
..end
;-----------------------------
.grove
..end
;-----------------------------
.usain_bolt
..end
;-----------------------------
.after_activating_flute
..end
;-----------------------------
.darkworld
..end
;-----------------------------
.entrance
..end
;-----------------------------
.after_big_key
..end
;-----------------------------
.blind_hallway
..end
;-----------------------------
.conveyor_gibos
..end
;-----------------------------
.hellway
..end
;-----------------------------
.bombable_floor
%write8_enable()
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.backtracking_1
..end
;-----------------------------
.basement
..end
;-----------------------------
.prison
..end
;-----------------------------
.after_gloves
%write8_enable()
%write8($7E0B37, $0E) ; Arc variable
%write_end()
..end
;-----------------------------
.backtracking_2
%write8_enable()
%write8($7E0B37, $0C) ; Arc variable
%write_end()
..end
;-----------------------------
.pot_hammerdash
%write8_enable()
%write8($7E0B37, $07) ; Arc variable
%write_end()
..end
;-----------------------------
.blind
..end

;===============================================================================
presetpersistent_nmg_skull:
;-----------------------------
.outside_thieves
..end
;-----------------------------
.cursed_dwarf
..end
;-----------------------------
.getting_tempered
..end
;-----------------------------
.fence_dash
..end
;-----------------------------
.dash_to_sw
..end
;-----------------------------
.mummy_room
..end
;-----------------------------
.bomb_jump
%write8_enable()
%write8($7E0FCC, $04) ; Prize pack index
%write8($7E0B37, $FB) ; Arc variable
%write_end()
..end
;-----------------------------
.key_pot
%write8_enable()
%write8($7E0B36, $D9) ; Arc variable
%write8($7E0B37, $A0) ; Arc variable
%write_end()
..end
;-----------------------------
.skull_entrance
%write8_enable()
%write8($7E0B36, $50) ; Arc variable
%write_end()
..end
;-----------------------------
.mummy_hellway
%write8_enable()
%write8($7E0B37, $AF) ; Arc variable
%write_end()
..end
;-----------------------------
.mummy_key
%write8_enable()
%write8($7E0B37, $B0) ; Arc variable
%write_end()
..end
;-----------------------------
.mothula
%write8_enable()
%write8($7E0B37, $8F) ; Arc variable
%write_end()
..end

;===============================================================================
presetpersistent_nmg_ice:
;-----------------------------
.outside_skull
%write8_enable()
%write8($7E0B37, $19) ; Arc variable
%write_end()
..end
;-----------------------------
.bridge_warp
..end
;-----------------------------
.lottery
%write8_enable()
%write8($7E0FC8, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.medallion
..end
;-----------------------------
.zoras_domain
..end
;-----------------------------
.tiny_warp
..end
;-----------------------------
.ice_entrance
..end
;-----------------------------
.ice2
..end
;-----------------------------
.penguin_switch_room
%write8_enable()
%write8($7E0FCC, $05) ; Prize pack index
%write_end()
..end
;-----------------------------
.bombable_floor
%write8_enable()
%write8($7E0FC9, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.conveyor_room
%write8_enable()
%write8($7E0FCA, $02) ; Prize pack index
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.ipbj
%write8_enable()
%write8($7E0B37, $59) ; Arc variable
%write_end()
..end
;-----------------------------
.penguin_room
%write8_enable()
%write8($7E0B37, $4F) ; Arc variable
%write_end()
..end
;-----------------------------
.lonely_firebar
%write8_enable()
%write8($7E0FC9, $06) ; Prize pack index
%write8($7E0B37, $A0) ; Arc variable
%write_end()
..end
;-----------------------------
.last_two_screens
..end
;-----------------------------
.kholdstare
..end

;===============================================================================
presetpersistent_nmg_swamp:
;-----------------------------
.outside_ice
..end
;-----------------------------
.links_house
..end
;-----------------------------
.swamp_overworld
..end
;-----------------------------
.antifairy_room
..end
;-----------------------------
.entrance
%write8_enable()
%write8($7E0B36, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.first_key_pot
..end
;-----------------------------
.hallway_key_1
..end
;-----------------------------
.water_lever_1
..end
;-----------------------------
.main_hub
..end
;-----------------------------
.water_lever_2
%write8_enable()
%write8($7E0B35, $CA) ; Arc variable
%write8($7E0B36, $C5) ; Arc variable
%write8($7E0B33, $C5) ; Arc variable
%write8($7E0B37, $D3) ; Arc variable
%write8($7E0B34, $CE) ; Arc variable
%write_end()
..end
;-----------------------------
.sociable_firebar
%write8_enable()
%write8($7E0B35, $B8) ; Arc variable
%write8($7E0B36, $B9) ; Arc variable
%write8($7E0B33, $C3) ; Arc variable
%write8($7E0B37, $BA) ; Arc variable
%write8($7E0B34, $BE) ; Arc variable
%write_end()
..end
;-----------------------------
.backtracking
..end
;-----------------------------
.hook_shot
%write8_enable()
%write8($7E0FC8, $03) ; Prize pack index
%write_end()
..end
;-----------------------------
.hookdash
%write8_enable()
%write8($7E0B35, $CD) ; Arc variable
%write8($7E0B36, $D4) ; Arc variable
%write8($7E0B33, $E8) ; Arc variable
%write8($7E0B37, $ED) ; Arc variable
%write8($7E0B34, $DB) ; Arc variable
%write_end()
..end
;-----------------------------
.water_lever_3
%write8_enable()
%write8($7E0B35, $BC) ; Arc variable
%write8($7E0B36, $C3) ; Arc variable
%write8($7E0B33, $D7) ; Arc variable
%write8($7E0B37, $DC) ; Arc variable
%write8($7E0B34, $CA) ; Arc variable
%write_end()
..end
;-----------------------------
.restock
%write8_enable()
%write8($7E0B35, $2A) ; Arc variable
%write8($7E0B36, $24) ; Arc variable
%write8($7E0B37, $1B) ; Arc variable
%write_end()
..end
;-----------------------------
.phelps_way
%write8_enable()
%write8($7E0B35, $A9) ; Arc variable
%write8($7E0B36, $A3) ; Arc variable
%write8($7E0B37, $9A) ; Arc variable
%write_end()
..end
;-----------------------------
.arrghus
..end

;===============================================================================
presetpersistent_nmg_mire:
;-----------------------------
.outside_swamp
%write8_enable()
%write8($7E0B31, $94) ; Arc variable
%write8($7E0B35, $71) ; Arc variable
%write8($7E0B32, $91) ; Arc variable
%write8($7E0B36, $74) ; Arc variable
%write8($7E0B33, $85) ; Arc variable
%write8($7E0B37, $7E) ; Arc variable
%write8($7E0B30, $8B) ; Arc variable
%write8($7E0B34, $78) ; Arc variable
%write_end()
..end
;-----------------------------
.dm
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.free_flutedash
..end
;-----------------------------
.darkworld_warp
..end
;-----------------------------
.entrance
..end
;-----------------------------
.mire2
..end
;-----------------------------
.main_hub
%write8_enable()
%write8($7E0FC8, $04) ; Prize pack index
%write_end()
..end
;-----------------------------
.beat_the_fireball
..end
;-----------------------------
.bari_key
..end
;-----------------------------
.sluggulas
%write8_enable()
%write8($7E0B37, $9E) ; Arc variable
%write_end()
..end
;-----------------------------
.torches
%write8_enable()
%write8($7E0FCA, $03) ; Prize pack index
%write8($7E0B37, $91) ; Arc variable
%write_end()
..end
;-----------------------------
.spark_gamble
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.big_chest_room
%write8_enable()
%write8($7E0B37, $A0) ; Arc variable
%write_end()
..end
;-----------------------------
.spike_key
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.wizzrobe
..end
;-----------------------------
.basement
..end
;-----------------------------
.spooky_action_1
..end
;-----------------------------
.spooky_action_2
%write8_enable()
%write8($7E0B37, $17) ; Arc variable
%write_end()
..end
;-----------------------------
.vitty
%write8_enable()
%write8($7E0B37, $1D) ; Arc variable
%write_end()
..end

;===============================================================================
presetpersistent_nmg_trock:
;-----------------------------
.outside_mire
..end
;-----------------------------
.icerod_overworld
..end
;-----------------------------
.dm
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.squirrels
..end
;-----------------------------
.peg_puzzle
..end
;-----------------------------
.entrance
..end
;-----------------------------
.torches
%write8_enable()
%write8($7E0FCC, $06) ; Prize pack index
%write_end()
..end
;-----------------------------
.roller_room
..end
;-----------------------------
.pokey_0
..end
;-----------------------------
.chomps
%write8_enable()
%write8($7E0FCD, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.pokey_1
..end
;-----------------------------
.pokeys_2
%write8_enable()
%write8($7E0FCD, $04) ; Prize pack index
%write_end()
..end
;-----------------------------
.crystal_roller
%write8_enable()
%write8($7E0FCD, $06) ; Prize pack index
%write_end()
..end
;-----------------------------
.dark_room
%write8_enable()
%write8($7E0B35, $00) ; Arc variable
%write8($7E0B36, $00) ; Arc variable
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $62) ; Arc variable
%write8($7E0B34, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.laser_skip
%write8_enable()
%write8($7E0B37, $5F) ; Arc variable
%write_end()
..end
;-----------------------------
.switch_room
..end
;-----------------------------
.trinexx
..end

;===============================================================================
presetpersistent_nmg_gtower:
;-----------------------------
.outside_trock
..end
;-----------------------------
.entrance
..end
;-----------------------------
.spike_skip
%write8_enable()
%write8($7E0B37, $00) ; Arc variable
%write_end()
..end
;-----------------------------
.pre_firesnakes_room
..end
;-----------------------------
.bombable_floor
..end
;-----------------------------
.ice_armos
..end
;-----------------------------
.floor_2
%write8_enable()
%write8($7E0B31, $BD) ; Arc variable
%write8($7E0B35, $70) ; Arc variable
%write8($7E0B32, $90) ; Arc variable
%write8($7E0B33, $52) ; Arc variable
%write8($7E0B37, $13) ; Arc variable
%write8($7E0B30, $AD) ; Arc variable
%write8($7E0B34, $42) ; Arc variable
%write_end()
..end
;-----------------------------
.mimics1
..end
;-----------------------------
.mimics2
%write8_enable()
%write8($7E0FCB, $04) ; Prize pack index
%write_end()
..end
;-----------------------------
.spike_room
%write8_enable()
%write8($7E0FCB, $05) ; Prize pack index
%write_end()
..end
;-----------------------------
.gauntlet
..end
;-----------------------------
.gauntlet_3
%write8_enable()
%write8($7E0FCC, $02) ; Prize pack index
%write_end()
..end
;-----------------------------
.lanmola2
%write8_enable()
%write8($7E0FCC, $04) ; Prize pack index
%write_end()
..end
;-----------------------------
.wizz1
..end
;-----------------------------
.wizz2
%write8_enable()
%write8($7E0FC7, $04) ; Prize pack index
%write_end()
..end
;-----------------------------
.torches1
%write8_enable()
%write8($7E0B37, $0C) ; Arc variable
%write8($7E0FC7, $06) ; Prize pack index
%write_end()
..end
;-----------------------------
.torches2
%write8_enable()
%write8($7E0B37, $0E) ; Arc variable
%write_end()
..end
;-----------------------------
.helma_key
%write8_enable()
%write8($7E0B37, $06) ; Arc variable
%write_end()
..end
;-----------------------------
.bombable_wall
%write8_enable()
%write8($7E0B37, $0D) ; Arc variable
%write_end()
..end
;-----------------------------
.moldorm_2
%write8_enable()
%write8($7E0B37, $10) ; Arc variable
%write_end()
..end
;-----------------------------
.agahnim_2
..end

;===============================================================================
presetpersistent_nmg_ganon:
;-----------------------------
.pyramid
..end
;-----------------------------
.pyramid_magic
..end

;===============================================================================
presetpersistent_nmg_boss:
;===============================================================================
presetSRAM_nmg:
;-------------------------------------------------------------------------------
.escape
;-------------------------------------------------------------------------------
..bed
%write8($7EF36F, $FF) ; Keys
%write8($7EF36C, $1818) ; Health (goal)
%write8($7EF378, $F800) ; ????
%write8($7EF3DC, $8C01) ; Player name
%write8($7EF3E0, $AA01) ; Player name
%write8($7EF400, $FF00) ; Deaths
%write8($7EF3DA, $8C01) ; Player name
%write8($7EF3DE, $8C01) ; Player name
%write8($7EF3E2, $55) ; Player name
%write8($7EF402, $FF) ; Deaths
%write8($7EF4FE, $D0EA) ; Inverse checksum
%writeroom($104, $0002) ; Room $0104: Unknown (...............q)
%writeroom($106, $F000) ; Room $0106: Unknown (.dddb...........)
%writeroom($107, $F000) ; Room $0107: Unknown (.dddb...........)
...end
;-------------------------------------------------------------------------------
..courtyard
%write8($7EF2BB, $00) ; Overworld $3B: Unknown (........)
%write8($7EF2FB, $00) ; Overworld $7B: Unknown (........)
%write8($7EF3C8, $03) ; Entrances Phase
%write8($7EF359, $01) ; Sword
%write8($7EF3C5, $01) ; Game Phase 1
%write8($7EF35A, $01) ; Shield
%write8($7EF362, $01) ; Rupees (actual)
%write8($7EF3C6, $11) ; Game Phase 2
%writeroom($055, $000F) ; Room $0055: Castle Secret Entrance / Uncle Death Room (.............qqq)
%writeroom($028, $0000) ; Room $0028: Swamp Palace (Entrance Room) (................)
...end
;-------------------------------------------------------------------------------
..entrance
...end
;-------------------------------------------------------------------------------
..1st_keyguard
%write8($7EF36F, $00) ; Keys
%writeroom($050, $0005) ; Room $0050: Hyrule Castle (West Corridor) (..............q.)
%writeroom($060, $0005) ; Room $0060: Hyrule Castle (West Entrance Room) (..............q.)
%writeroom($001, $000C) ; Room $0001: Hyrule Castle (North Corridor) (.............qq.)
%writeroom($061, $000F) ; Room $0061: Hyrule Castle (Main Entrance Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..stealth_room
%writeroom($072, $840F) ; Room $0072: Hyrule Castle (Map Chest Room) (.d....K......qqq)
%writeroom($082, $000F) ; Room $0082: Hyrule Castle (Basement Chasm Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..2nd_keyguard
%writeroom($071, $0002) ; Room $0071: Hyrule Castle (Boomerang Chest Room) (...............q)
%writeroom($081, $000F) ; Room $0081: Hyrule Castle (.............qqq)
...end
;-------------------------------------------------------------------------------
..ball_n_chains
%write8($7EF341, $01) ; Boomerang
%writeroom($070, $0008) ; Room $0070: Hyrule Castle (Small Corridor to Jail Cells) (.............q..)
%writeroom($071, $841B) ; Room $0071: Hyrule Castle (Boomerang Chest Room) (.d....K.....qq.q)
...end
;-------------------------------------------------------------------------------
..backtracking
%write8($7EF3D3, $00) ; Super Bomb Boom
%write8($7EF3FF, $00) ; Deaths
%write8($7EF3C8, $02) ; Entrances Phase
%write8($7EF3CC, $01) ; Tagalong
%write8($7EF3E5, $00) ; Validity (checksum)
%write8($7EF34A, $01) ; Torch
%write8($7EF366, $4000) ; BigKey1
%writeroom($080, $043C) ; Room $0080: Hyrule Castle (Jail Cell Room) (......K....cqqq.)
...end
;-------------------------------------------------------------------------------
..keyguard_revisited
...end
;-------------------------------------------------------------------------------
..throne_room
%writeroom($051, $000F) ; Room $0051: Hyrule Castle (Throne Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..snake_avoidance_room
%write8($7EF3C8, $04) ; Entrances Phase
%writeroom($041, $000F) ; Room $0041: Hyrule Castle (First Dark Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..water_rooms
%writeroom($032, $801F) ; Room $0032: Hyrule Castle (Sewer Key Chest Room) (.d..........qqqq)
%writeroom($042, $000C) ; Room $0042: Hyrule Castle (6 Ropes Room) (.............qq.)
...end
;-------------------------------------------------------------------------------
..keyrat
%writeroom($022, $8003) ; Room $0022: Hyrule Castle (Sewer Text Trigger Room) (.d.............q)
%writeroom($021, $0003) ; Room $0021: Hyrule Castle (Key-rat Room) (...............q)
...end
;-------------------------------------------------------------------------------
..last_two_screens
%writeroom($011, $2005) ; Room $0011: Hyrule Castle (Bombable Stock Room) (...d..........q.)
%writeroom($021, $840F) ; Room $0021: Hyrule Castle (Key-rat Room) (.d....K......qqq)
...end
;-------------------------------------------------------------------------------
.eastern
;-------------------------------------------------------------------------------
..before_cutscene
%writeroom($002, $000F) ; Room $0002: Hyrule Castle (Switch Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..after_cutscene
%write8($7EF29B, $20) ; Overworld $1B: Unknown (...?....)
%write8($7EF3C7, $01) ; Map Phase
%write8($7EF3E3, $00) ; Player name
%write8($7EF3C8, $01) ; Entrances Phase
%write8($7EF3CC, $00) ; Tagalong
%write8($7EF3C5, $02) ; Game Phase 1
%write8($7EF3C6, $15) ; Game Phase 2
%writeroom($012, $000F) ; Room $0012: Sanctuary (.............qqq)
...end
;-------------------------------------------------------------------------------
..octoroc
%write8($7EF36F, $FF) ; Keys
...end
;-------------------------------------------------------------------------------
..outside_palace
...end
;-------------------------------------------------------------------------------
..entrance
...end
;-------------------------------------------------------------------------------
..stalfos_room
%write8($7EF36F, $00) ; Keys
%writeroom($0A8, $0005) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (..............q.)
%writeroom($0A9, $000F) ; Room $00A9: Eastern Palace (Big Chest Room) (.............qqq)
%writeroom($0B9, $000F) ; Room $00B9: Eastern Palace (Lobby Cannonballs Room) (.............qqq)
%writeroom($0C9, $000F) ; Room $00C9: Eastern Palace (Entrance Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..big_chest_room_1
%write8($7EF373, $00) ; Magic filler
%write8($7EF36E, $10) ; Magic Power
%writeroom($0A8, $000F) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..dark_key_room
%writeroom($0AA, $000A) ; Room $00AA: Eastern Palace (Map Chest Room) (.............q.q)
%writeroom($0BA, $0008) ; Room $00BA: Eastern Palace (Dark Antifairy / Key Pot Room) (.............q..)
...end
;-------------------------------------------------------------------------------
..big_key_dmg_boost
%write8($7EF362, $15) ; Rupees (actual)
%writeroom($0BA, $840C) ; Room $00BA: Eastern Palace (Dark Antifairy / Key Pot Room) (.d....K......qq.)
%writeroom($0B9, $800F) ; Room $00B9: Eastern Palace (Lobby Cannonballs Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
..big_chest_room_2
%write8($7EF36D, $0C) ; Health (actual)
%write8($7EF366, $6000) ; BigKey1
%writeroom($0A8, $200F) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (...d.........qqq)
%writeroom($0B8, $8015) ; Room $00B8: Eastern Palace (Big Key Room) (.d..........q.q.)
...end
;-------------------------------------------------------------------------------
..gwg
%write8($7EF377, $0A) ; Arrows
%write8($7EF340, $02) ; Bow
%writeroom($0A9, $201F) ; Room $00A9: Eastern Palace (Big Chest Room) (...d........qqqq)
...end
;-------------------------------------------------------------------------------
..pot_room
%write8($7EF362, $1B) ; Rupees (actual)
%write8($7EF36E, $20) ; Magic Power
%writeroom($099, $C403) ; Room $0099: Eastern Palace (Eyegore Key Room) (.dd...K........q)
...end
;-------------------------------------------------------------------------------
..zeldagamer_room
%write8($7EF377, $14) ; Arrows
%writeroom($0DA, $0002) ; Room $00DA: Eastern Palace (...............q)
%writeroom($0D9, $0003) ; Room $00D9: Eastern Palace (Canonball Room) (...............q)
...end
;-------------------------------------------------------------------------------
..armos
%write8($7EF34F, $00) ; Bottles
%write8($7EF377, $12) ; Arrows
%write8($7EF362, $1C) ; Rupees (actual)
%writeroom($0D8, $0005) ; Room $00D8: Eastern Palace (Zeldagamer Room / Pre-Armos Knights Room) (..............q.)
...end
;-------------------------------------------------------------------------------
.desert
;-------------------------------------------------------------------------------
..outside_eastern_palace
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $00) ; Arrows
%write8($7EF3E7, $00) ; Deaths
%write8($7EF340, $01) ; Bow
%write8($7EF36C, $20) ; Health (goal)
%write8($7EF374, $04) ; Pendants
%write8($7EF36D, $20) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%writeroom($0C8, $0801) ; Room $00C8: Eastern Palace (Armos Knights[Boss]) (.....k..........)
...end
;-------------------------------------------------------------------------------
..ep_spinspeed
%write8($7EF3C7, $03) ; Map Phase
%write8($7EF355, $01) ; Boots
%write8($7EF379, $FC) ; Ability Flags
%writeroom($105, $0002) ; Room $0105: Unknown (...............q)
...end
;-------------------------------------------------------------------------------
..bridge_screen
...end
;-------------------------------------------------------------------------------
..unholy_spinspeed
...end
;-------------------------------------------------------------------------------
..water_dash
%write8($7EF34E, $01) ; Book of Mudora
%writeroom($107, $F002) ; Room $0107: Unknown (.dddb..........q)
...end
;-------------------------------------------------------------------------------
..outside_desert_palace
...end
;-------------------------------------------------------------------------------
..desert_entrance
...end
;-------------------------------------------------------------------------------
..keybonk
%write8($7EF36F, $00) ; Keys
%write8($7EF377, $05) ; Arrows
%write8($7EF340, $02) ; Bow
%writeroom($074, $0003) ; Room $0074: Desert Palace (Map Chest Room) (...............q)
%writeroom($084, $000F) ; Room $0084: Desert Palace (Main Entrance Room) (.............qqq)
%writeroom($073, $0001) ; Room $0073: Desert Palace (Big Chest Room) (................)
...end
;-------------------------------------------------------------------------------
..pre_cannonball_room
%writeroom($073, $0405) ; Room $0073: Desert Palace (Big Chest Room) (......K.......q.)
%writeroom($075, $0002) ; Room $0075: Desert Palace (Big Key Chest Room) (...............q)
%writeroom($085, $400A) ; Room $0085: Desert Palace (East Entrance Room) (..d..........q.q)
...end
;-------------------------------------------------------------------------------
..pot_room
%write8($7EF377, $0A) ; Arrows
%write8($7EF366, $7000) ; BigKey1
%writeroom($075, $0017) ; Room $0075: Desert Palace (Big Key Chest Room) (............q.qq)
%writeroom($085, $400E) ; Room $0085: Desert Palace (East Entrance Room) (..d..........qqq)
...end
;-------------------------------------------------------------------------------
..desert2_spinspeed
%write8($7EF377, $14) ; Arrows
%write8($7EF354, $01) ; Gloves
%writeroom($073, $041F) ; Room $0073: Desert Palace (Big Chest Room) (......K.....qqqq)
%writeroom($083, $0007) ; Room $0083: Desert Palace (West Entrance Room) (..............qq)
...end
;-------------------------------------------------------------------------------
..popo_genocide_room
%write8($7EF37F, $00) ; Key for dungeon $03
%writeroom($053, $0008) ; Room $0053: Desert Palace (Popos 2 / Beamos Hellway Room) (.............q..)
%writeroom($063, $840A) ; Room $0063: Desert Palace (Final Section Entrance Room) (.d....K......q.q)
...end
;-------------------------------------------------------------------------------
..torches
%writeroom($043, $6401) ; Room $0043: Desert Palace (Torch Puzzle / Moving Wall Room) (..dd..K.........)
%writeroom($053, $240F) ; Room $0053: Desert Palace (Popos 2 / Beamos Hellway Room) (...d..K......qqq)
...end
;-------------------------------------------------------------------------------
..lanmolas
%write8($7EF377, $19) ; Arrows
%write8($7EF36E, $70) ; Magic Power
%writeroom($043, $E48D) ; Room $0043: Desert Palace (Torch Puzzle / Moving Wall Room) (.ddd..K..c...qq.)
...end
;-------------------------------------------------------------------------------
.hera
;-------------------------------------------------------------------------------
..outside_desert_palace
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $0C) ; Arrows
%write8($7EF36C, $28) ; Health (goal)
%write8($7EF374, $06) ; Pendants
%write8($7EF36D, $28) ; Health (actual)
%write8($7EF3E9, $00) ; Deaths
%write8($7EF36E, $80) ; Magic Power
%writeroom($033, $0802) ; Room $0033: Desert Palace (Lanmolas[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..fake_flippers
...end
;-------------------------------------------------------------------------------
..dm
%write8($7EF377, $0B) ; Arrows
%write8($7EF3C8, $05) ; Entrances Phase
%write8($7EF3CC, $04) ; Tagalong
%writeroom($0F0, $000F) ; Room $00F0: Cave (Lost Old Man Starting Cave) (.............qqq)
%writeroom($0F1, $000F) ; Room $00F1: Cave (Lost Old Man Starting Cave) (.............qqq)
...end
;-------------------------------------------------------------------------------
..after_mirror
%write8($7EF353, $02) ; Magic Mirror
%write8($7EF3C8, $01) ; Entrances Phase
%write8($7EF3CC, $00) ; Tagalong
...end
;-------------------------------------------------------------------------------
..quickhop
...end
;-------------------------------------------------------------------------------
..entrance
...end
;-------------------------------------------------------------------------------
..tile_room
%write8($7EF36F, $00) ; Keys
%write8($7EF386, $01) ; Key for dungeon $0A
%writeroom($077, $800F) ; Room $0077: Tower of Hera (Entrance Room) (.d...........qqq)
%writeroom($087, $0402) ; Room $0087: Tower of Hera (Tile Room) (......K........q)
...end
;-------------------------------------------------------------------------------
..torches
%writeroom($087, $040E) ; Room $0087: Tower of Hera (Tile Room) (......K......qqq)
...end
;-------------------------------------------------------------------------------
..beetles
%write8($7EF366, $7020) ; BigKey1
%write8($7EF36E, $70) ; Magic Power
%write8($7EF386, $00) ; Key for dungeon $0A
%writeroom($087, $041F) ; Room $0087: Tower of Hera (Tile Room) (......K.....qqqq)
...end
;-------------------------------------------------------------------------------
..petting_zoo
%write8($7EF343, $01) ; Bombs
%write8($7EF375, $00) ; Bomb filler
%writeroom($031, $800F) ; Room $0031: Tower of Hera (Hardhat Beetles Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
..moldorm
%write8($7EF357, $01) ; Moon Pearl
%write8($7EF36D, $20) ; Health (actual)
%writeroom($017, $000F) ; Room $0017: Tower of Hera (Moldorm Fall Room) (.............qqq)
%writeroom($027, $001F) ; Room $0027: Tower of Hera (Big Chest) (............qqqq)
...end
;-------------------------------------------------------------------------------
.aga
;-------------------------------------------------------------------------------
..outside_hera
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $04) ; Map Phase
%write8($7EF3F7, $00) ; Deaths
%write8($7EF36C, $30) ; Health (goal)
%write8($7EF374, $07) ; Pendants
%write8($7EF36D, $30) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%writeroom($007, $080F) ; Room $0007: Tower of Hera (Moldorm[Boss]) (.....k.......qqq)
...end
;-------------------------------------------------------------------------------
..first_rupee_tree
%writeroom($0E6, $000F) ; Room $00E6: Cave (.............qqq)
%writeroom($0E7, $000F) ; Room $00E7: Cave (.............qqq)
...end
;-------------------------------------------------------------------------------
..lost_woods
%write8($7EF377, $0A) ; Arrows
%write8($7EF362, $26) ; Rupees (actual)
...end
;-------------------------------------------------------------------------------
..after_grove
%write8($7EF3C7, $05) ; Map Phase
%write8($7EF300, $40) ; Overworld $80: Unknown (..?.....)
%write8($7EF359, $02) ; Sword
...end
;-------------------------------------------------------------------------------
..after_lost_woods
%write8($7EF3C7, $05) ; Map Phase
%write8($7EF300, $40) ; Overworld $80: Unknown (..?.....)
%write8($7EF359, $02) ; Sword
%write8($7EF362, $76) ; Rupees (actual)
...end
;-------------------------------------------------------------------------------
..castle_screen
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF29B, $60) ; Overworld $1B: Unknown (..??....)
...end
;-------------------------------------------------------------------------------
..fairy_skip
%write8($7EF36F, $00) ; Keys
%write8($7EF377, $08) ; Arrows
%writeroom($0E0, $000A) ; Room $00E0: Agahnim's Tower (Entrance Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..dark_room_of_despair
%writeroom($0D0, $0004) ; Room $00D0: Agahnim's Tower (Dark Maze) (..............q.)
%writeroom($0E0, $201E) ; Room $00E0: Agahnim's Tower (Entrance Room) (...d........qqqq)
...end
;-------------------------------------------------------------------------------
..dark_room_of_melancholy
%writeroom($0C0, $0001) ; Room $00C0: Agahnim's Tower (Dark Bridge Room) (................)
%writeroom($0D0, $801F) ; Room $00D0: Agahnim's Tower (Dark Maze) (.d..........qqqq)
...end
;-------------------------------------------------------------------------------
..spear_guards
%writeroom($0C0, $240F) ; Room $00C0: Agahnim's Tower (Dark Bridge Room) (...d..K......qqq)
...end
;-------------------------------------------------------------------------------
..circle_of_pots
%write8($7EF377, $03) ; Arrows
%writeroom($0B0, $000C) ; Room $00B0: Agahnim's Tower (Circle of Pots) (.............qq.)
...end
;-------------------------------------------------------------------------------
..pit_room
%write8($7EF377, $07) ; Arrows
%write8($7EF362, $77) ; Rupees (actual)
%writeroom($040, $0001) ; Room $0040: Agahnim's Tower (Final Bridge Room) (................)
%writeroom($0B0, $240F) ; Room $00B0: Agahnim's Tower (Circle of Pots) (...d..K......qqq)
...end
;-------------------------------------------------------------------------------
..agahnim
%writeroom($030, $840A) ; Room $0030: Agahnim's Tower (Maiden Sacrifice Chamber) (.d....K......q.q)
%writeroom($040, $000B) ; Room $0040: Agahnim's Tower (Final Bridge Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
.pod
;-------------------------------------------------------------------------------
..pyramid
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $06) ; Map Phase
%write8($7EF3EB, $00) ; Deaths
%write8($7EF3C5, $03) ; Game Phase 1
%write8($7EF282, $20) ; Overworld $02: Unknown (...?....)
%write8($7EF3CA, $40) ; LW/DW
%writeroom($020, $0802) ; Room $0020: Agahnim's Tower (Agahnim[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..pod_overworld
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF2DE, $20) ; Overworld $5E: Unknown (...?....)
%write8($7EF362, $09) ; Rupees (actual)
...end
;-------------------------------------------------------------------------------
..main_hub_small_key
%write8($7EF343, $03) ; Bombs
%write8($7EF36F, $00) ; Keys
%write8($7EF382, $01) ; Key for dungeon $06
%writeroom($04A, $200F) ; Room $004A: Palace of Darkness (Entrance Room) (...d.........qqq)
%writeroom($009, $0018) ; Room $0009: Palace of Darkness (............qq..)
...end
;-------------------------------------------------------------------------------
..main_hub_bk
%write8($7EF343, $04) ; Bombs
%write8($7EF36F, $01) ; Keys
%writeroom($00A, $001F) ; Room $000A: Palace of Darkness (Stalfos Trap Room) (............qqqq)
%writeroom($03A, $800F) ; Room $003A: Palace of Darkness (Bombable Floor Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
..main_hub_hammeryump
%write8($7EF36F, $00) ; Keys
%write8($7EF366, $7220) ; BigKey1
%write8($7EF382, $00) ; Key for dungeon $06
%writeroom($00A, $801F) ; Room $000A: Palace of Darkness (Stalfos Trap Room) (.d..........qqqq)
%writeroom($03A, $801F) ; Room $003A: Palace of Darkness (Bombable Floor Room) (.d..........qqqq)
...end
;-------------------------------------------------------------------------------
..hammeryump
%writeroom($02A, $402F) ; Room $002A: Palace of Darkness (Big Hub Room) (..d........c.qqq)
...end
;-------------------------------------------------------------------------------
..before_sexy_statue
%write8($7EF34B, $01) ; Hammer
%write8($7EF36F, $01) ; Keys
%write8($7EF36D, $28) ; Health (actual)
%write8($7EF382, $01) ; Key for dungeon $06
%writeroom($01A, $301A) ; Room $001A: Palace of Darkness (Big Chest Room) (...db.......qq.q)
%writeroom($019, $802F) ; Room $0019: Palace of Darkness (Dark Maze) (.d.........c.qqq)
...end
;-------------------------------------------------------------------------------
..sexy_statue_room
%write8($7EF377, $06) ; Arrows
...end
;-------------------------------------------------------------------------------
..mimics
%write8($7EF343, $06) ; Bombs
%write8($7EF36D, $30) ; Health (actual)
%writeroom($02B, $000A) ; Room $002B: Palace of Darkness (Map Chest / Fairy Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..statue
%write8($7EF377, $07) ; Arrows
%writeroom($01B, $0002) ; Room $001B: Palace of Darkness (Mimics / Moving Wall Room) (...............q)
...end
;-------------------------------------------------------------------------------
..basement
%write8($7EF377, $06) ; Arrows
%writeroom($01B, $008E) ; Room $001B: Palace of Darkness (Mimics / Moving Wall Room) (.........c...qqq)
...end
;-------------------------------------------------------------------------------
..turtle_room
%write8($7EF36F, $00) ; Keys
%writeroom($00B, $200C) ; Room $000B: Palace of Darkness (Turtle Room) (...d.........qq.)
...end
;-------------------------------------------------------------------------------
..helma
%writeroom($06A, $8005) ; Room $006A: Palace of Darkness (Rupee Room) (.d............q.)
%writeroom($00B, $200F) ; Room $000B: Palace of Darkness (Turtle Room) (...d.........qqq)
...end
;-------------------------------------------------------------------------------
.thieves
;-------------------------------------------------------------------------------
..outside_pod
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $07) ; Map Phase
%write8($7EF3EF, $00) ; Deaths
%write8($7EF36C, $38) ; Health (goal)
%write8($7EF36D, $38) ; Health (actual)
%write8($7EF37A, $02) ; Crystals
%write8($7EF382, $00) ; Key for dungeon $06
%writeroom($05A, $0801) ; Room $005A: Palace of Darkness (Helmasaur King[Boss]) (.....k..........)
...end
;-------------------------------------------------------------------------------
..ow_hammerdash
...end
;-------------------------------------------------------------------------------
..grove
...end
;-------------------------------------------------------------------------------
..usain_bolt
%write8($7EF34C, $02) ; Flute
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..after_activating_flute
%write8($7EF298, $20) ; Overworld $18: Unknown (...?....)
%write8($7EF34C, $03) ; Flute
...end
;-------------------------------------------------------------------------------
..darkworld
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF2D8, $20) ; Overworld $58: Unknown (...?....)
%write8($7EF362, $0A) ; Rupees (actual)
...end
;-------------------------------------------------------------------------------
..after_big_key
%write8($7EF36F, $00) ; Keys
%write8($7EF366, $7230) ; BigKey1
%writeroom($0CC, $000F) ; Room $00CC: Thieves Town (North East Entrance Room) (.............qqq)
%writeroom($0DC, $000F) ; Room $00DC: Thieves Town (South East Entrance Room) (.............qqq)
%writeroom($0CB, $000F) ; Room $00CB: Thieves Town (North West Entrance Room) (.............qqq)
%writeroom($0DB, $002F) ; Room $00DB: Thieves Town (Main (South West) Entrance Room) (...........c.qqq)
...end
;-------------------------------------------------------------------------------
..blind_hallway
%writeroom($0CC, $800F) ; Room $00CC: Thieves Town (North East Entrance Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
..conveyor_gibos
%writeroom($0BC, $C407) ; Room $00BC: Thieves Town (Conveyor Toilet) (.dd...K.......qq)
...end
;-------------------------------------------------------------------------------
..hellway
%writeroom($0BB, $0001) ; Room $00BB: Thieves Town (Hellway) (................)
...end
;-------------------------------------------------------------------------------
..bombable_floor
%writeroom($064, $0003) ; Room $0064: Thieves Town (West Attic Room) (...............q)
%writeroom($065, $0002) ; Room $0065: Thieves Town (East Attic Room) (...............q)
%writeroom($0AB, $8402) ; Room $00AB: Thieves Town (Moving Spikes / Key Pot Room) (.d....K........q)
%writeroom($0BB, $000B) ; Room $00BB: Thieves Town (Hellway) (.............q.q)
...end
;-------------------------------------------------------------------------------
..backtracking_1
%write8($7EF343, $05) ; Bombs
%writeroom($065, $0103) ; Room $0065: Thieves Town (East Attic Room) (........c......q)
...end
;-------------------------------------------------------------------------------
..basement
%writeroom($0BC, $C40F) ; Room $00BC: Thieves Town (Conveyor Toilet) (.dd...K......qqq)
%writeroom($0BB, $000F) ; Room $00BB: Thieves Town (Hellway) (.............qqq)
...end
;-------------------------------------------------------------------------------
..prison
%writeroom($045, $000A) ; Room $0045: Thieves Town (Jail Cells Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..after_gloves
%write8($7EF354, $02) ; Gloves
%write8($7EF3CC, $06) ; Tagalong
%writeroom($044, $4017) ; Room $0044: Thieves Town (Big Chest Room) (..d.........q.qq)
%writeroom($045, $00FF) ; Room $0045: Thieves Town (Jail Cells Room) (.........cccqqqq)
...end
;-------------------------------------------------------------------------------
..backtracking_2
...end
;-------------------------------------------------------------------------------
..pot_hammerdash
%write8($7EF377, $0B) ; Arrows
...end
;-------------------------------------------------------------------------------
..blind
...end
;-------------------------------------------------------------------------------
.skull
;-------------------------------------------------------------------------------
..outside_thieves
%write8($7EF36F, $FF) ; Keys
%write8($7EF36C, $40) ; Health (goal)
%write8($7EF3CC, $00) ; Tagalong
%write8($7EF36D, $40) ; Health (actual)
%write8($7EF3F9, $00) ; Deaths
%write8($7EF37A, $22) ; Crystals
%write8($7EF387, $00) ; Key for dungeon $0B
%writeroom($0AC, $0A01) ; Room $00AC: Thieves Town (Blind The Thief[Boss]) (.....k.R........)
...end
;-------------------------------------------------------------------------------
..cursed_dwarf
%write8($7EF343, $04) ; Bombs
%write8($7EF2D8, $22) ; Overworld $58: Unknown (...?...?)
%write8($7EF362, $136) ; Rupees (actual)
%writeroom($106, $F012) ; Room $0106: Unknown (.dddb.......q..q)
...end
;-------------------------------------------------------------------------------
..getting_tempered
%write8($7EF3CC, $07) ; Tagalong
...end
;-------------------------------------------------------------------------------
..fence_dash
%write8($7EF3CC, $00) ; Tagalong
%write8($7EF359, $03) ; Sword
%write8($7EF3C9, $20) ; Game Phase 3
%write8($7EF362, $12C) ; Rupees (actual)
%writeroom($121, $0002) ; Room $0121: Unknown (...............q)
...end
;-------------------------------------------------------------------------------
..dash_to_sw
%write8($7EF362, $258) ; Rupees (actual)
%writeroom($11C, $0011) ; Room $011C: Unknown (............q...)
...end
;-------------------------------------------------------------------------------
..mummy_room
...end
;-------------------------------------------------------------------------------
..bomb_jump
%write8($7EF377, $10) ; Arrows
%write8($7EF366, $72B0) ; BigKey1
%writeroom($057, $001A) ; Room $0057: Skull Woods (Big Key Room) (............qq.q)
...end
;-------------------------------------------------------------------------------
..key_pot
%write8($7EF343, $03) ; Bombs
%write8($7EF36F, $00) ; Keys
%write8($7EF345, $01) ; Fire Rod
%write8($7EF36D, $30) ; Health (actual)
%write8($7EF343, $04) ; Bombs
%writeroom($056, $0005) ; Room $0056: Skull Woods (Key Pot / Trap Room) (..............q.)
%writeroom($058, $0012) ; Room $0058: Skull Woods (Big Chest Room) (............q..q)
...end
;-------------------------------------------------------------------------------
..skull_entrance
%write8($7EF36F, $FF) ; Keys
%write8($7EF2C0, $20) ; Overworld $40: Unknown (...?....)
%write8($7EF384, $01) ; Key for dungeon $08
%write8($7EF36E, $70) ; Magic Power
%writeroom($056, $0407) ; Room $0056: Skull Woods (Key Pot / Trap Room) (......K.......qq)
...end
;-------------------------------------------------------------------------------
..mummy_hellway
%write8($7EF36F, $00) ; Keys
%writeroom($049, $2002) ; Room $0049: Skull Woods (Gibdo Torch Puzzle Room) (...d...........q)
%writeroom($059, $800A) ; Room $0059: Skull Woods (Final Section Entrance Room) (.d...........q.q)
...end
;-------------------------------------------------------------------------------
..mummy_key
%write8($7EF36E, $30) ; Magic Power
%writeroom($049, $A00F) ; Room $0049: Skull Woods (Gibdo Torch Puzzle Room) (.d.d.........qqq)
...end
;-------------------------------------------------------------------------------
..mothula
%writeroom($039, $4402) ; Room $0039: Skull Woods (Gibdo Key / Mothula Hole Room) (..d...K........q)
...end
;-------------------------------------------------------------------------------
.ice
;-------------------------------------------------------------------------------
..outside_skull
%write8($7EF36F, $FF) ; Keys
%write8($7EF3F3, $00) ; Deaths
%write8($7EF36C, $48) ; Health (goal)
%write8($7EF384, $00) ; Key for dungeon $08
%write8($7EF36D, $48) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $62) ; Crystals
%writeroom($029, $0801) ; Room $0029: Skull Woods (Mothula[Boss]) (.....k..........)
%writeroom($039, $4403) ; Room $0039: Skull Woods (Gibdo Key / Mothula Hole Room) (..d...K........q)
...end
;-------------------------------------------------------------------------------
..bridge_warp
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..lottery
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..medallion
...end
;-------------------------------------------------------------------------------
..zoras_domain
%write8($7EF349, $01) ; Quake Medallion
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..tiny_warp
%write8($7EF379, $FE) ; Ability Flags
%write8($7EF356, $01) ; Flippers
%write8($7EF362, $64) ; Rupees (actual)
...end
;-------------------------------------------------------------------------------
..ice_entrance
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..ice2
%write8($7EF36F, $00) ; Keys
%write8($7EF36E, $70) ; Magic Power
%writeroom($00E, $0001) ; Room $000E: Ice Palace (Entrance Room) (................)
...end
;-------------------------------------------------------------------------------
..penguin_switch_room
%write8($7EF36E, $60) ; Magic Power
%writeroom($00E, $8403) ; Room $000E: Ice Palace (Entrance Room) (.d....K........q)
%writeroom($01E, $0003) ; Room $001E: Ice Palace (Bomb Floor / Bari Room) (...............q)
%writeroom($02E, $0004) ; Room $002E: Ice Palace (Compass Room) (..............q.)
...end
;-------------------------------------------------------------------------------
..bombable_floor
%writeroom($01F, $0002) ; Room $001F: Ice Palace (Pengator / Big Key Room) (...............q)
...end
;-------------------------------------------------------------------------------
..conveyor_room
%write8($7EF343, $01) ; Bombs
%write8($7EF343, $02) ; Bombs
%writeroom($01E, $0007) ; Room $001E: Ice Palace (Bomb Floor / Bari Room) (..............qq)
%writeroom($03E, $0004) ; Room $003E: Ice Palace (Stalfos Knights / Conveyor Hellway) (..............q.)
...end
;-------------------------------------------------------------------------------
..ipbj
%write8($7EF36D, $40) ; Health (actual)
%writeroom($03E, $4407) ; Room $003E: Ice Palace (Stalfos Knights / Conveyor Hellway) (..d...K.......qq)
...end
;-------------------------------------------------------------------------------
..penguin_room
%write8($7EF343, $00) ; Bombs
%write8($7EF343, $01) ; Bombs
%writeroom($04E, $400C) ; Room $004E: Ice Palace (Bomb-Jump Room) (..d..........qq.)
...end
;-------------------------------------------------------------------------------
..lonely_firebar
%write8($7EF36D, $38) ; Health (actual)
%writeroom($05E, $0001) ; Room $005E: Ice Palace (Lonely Firebar) (................)
%writeroom($06E, $0004) ; Room $006E: Ice Palace (Pengators Room) (..............q.)
...end
;-------------------------------------------------------------------------------
..last_two_screens
%writeroom($05E, $0003) ; Room $005E: Ice Palace (Lonely Firebar) (...............q)
%writeroom($07E, $0002) ; Room $007E: Ice Palace (Hidden Chest / Bombable Floor Room) (...............q)
%writeroom($09E, $0003) ; Room $009E: Ice Palace (Big Chest Room) (...............q)
...end
;-------------------------------------------------------------------------------
..kholdstare
%write8($7EF36E, $80) ; Magic Power
%writeroom($0BE, $0001) ; Room $00BE: Ice Palace (Block Puzzle Room) (................)
%writeroom($0CE, $0004) ; Room $00CE: Ice Palace (Hole to Kholdstare Room) (..............q.)
...end
;-------------------------------------------------------------------------------
.swamp
;-------------------------------------------------------------------------------
..outside_ice
%write8($7EF36F, $FF) ; Keys
%write8($7EF36C, $50) ; Health (goal)
%write8($7EF36D, $50) ; Health (actual)
%write8($7EF385, $00) ; Key for dungeon $09
%write8($7EF3F5, $00) ; Deaths
%write8($7EF37A, $66) ; Crystals
%writeroom($0DE, $0804) ; Room $00DE: Ice Palace (Kholdstare[Boss]) (.....k........q.)
...end
;-------------------------------------------------------------------------------
..links_house
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..swamp_overworld
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..antifairy_room
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF2BB, $20) ; Overworld $3B: Unknown (...?....)
%write8($7EF2FB, $20) ; Overworld $7B: Unknown (...?....)
%write8($7EF3CA, $40) ; LW/DW
%writeroom($10B, $008F) ; Room $010B: Unknown (.........c...qqq)
%writeroom($028, $0001) ; Room $0028: Swamp Palace (Entrance Room) (................)
...end
;-------------------------------------------------------------------------------
..first_key_pot
%write8($7EF36F, $00) ; Keys
%writeroom($028, $811F) ; Room $0028: Swamp Palace (Entrance Room) (.d......c...qqqq)
...end
;-------------------------------------------------------------------------------
..hallway_key_1
%write8($7EF343, $01) ; Bombs
%writeroom($038, $440A) ; Room $0038: Swamp Palace (Key Pot Room) (..d...K......q.q)
%writeroom($037, $1003) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (....b..........q)
...end
;-------------------------------------------------------------------------------
..water_lever_1
%writeroom($037, $340F) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (...db.K......qqq)
...end
;-------------------------------------------------------------------------------
..main_hub
%writeroom($037, $348F) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (...db.K..c...qqq)
...end
;-------------------------------------------------------------------------------
..water_lever_2
%writeroom($036, $200F) ; Room $0036: Swamp Palace (Big Chest Room) (...d.........qqq)
%writeroom($035, $040F) ; Room $0035: Swamp Palace (Big Key / BS Room) (......K......qqq)
...end
;-------------------------------------------------------------------------------
..sociable_firebar
%writeroom($034, $000F) ; Room $0034: Swamp Palace (Push Block Puzzle / Pre-Big Key Room) (.............qqq)
%writeroom($035, $848F) ; Room $0035: Swamp Palace (Big Key / BS Room) (.d....K..c...qqq)
...end
;-------------------------------------------------------------------------------
..backtracking
%write8($7EF366, $76B0) ; BigKey1
%writeroom($054, $000F) ; Room $0054: Swamp Palace (Upstairs Pits Room) (.............qqq)
%writeroom($035, $849F) ; Room $0035: Swamp Palace (Big Key / BS Room) (.d....K..c..qqqq)
...end
;-------------------------------------------------------------------------------
..hook_shot
...end
;-------------------------------------------------------------------------------
..hookdash
%write8($7EF342, $01) ; Hookshot
%writeroom($036, $641F) ; Room $0036: Swamp Palace (Big Chest Room) (..dd..K.....qqqq)
...end
;-------------------------------------------------------------------------------
..water_lever_3
%write8($7EF377, $15) ; Arrows
%writeroom($026, $8007) ; Room $0026: Swamp Palace (Statue Room) (.d............qq)
...end
;-------------------------------------------------------------------------------
..restock
%writeroom($066, $0003) ; Room $0066: Swamp Palace (Hidden Chest / Hidden Door Room) (...............q)
%writeroom($076, $008E) ; Room $0076: Swamp Palace (Water Drain Room) (.........c...qqq)
...end
;-------------------------------------------------------------------------------
..phelps_way
%write8($7EF343, $02) ; Bombs
%writeroom($016, $000C) ; Room $0016: Swamp Palace (Swimming Treadmill) (.............qq.)
%writeroom($066, $000F) ; Room $0066: Swamp Palace (Hidden Chest / Hidden Door Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..arrghus
%write8($7EF36D, $48) ; Health (actual)
%writeroom($016, $440F) ; Room $0016: Swamp Palace (Swimming Treadmill) (..d...K......qqq)
...end
;-------------------------------------------------------------------------------
.mire
;-------------------------------------------------------------------------------
..outside_swamp
%write8($7EF36F, $FF) ; Keys
%write8($7EF36C, $58) ; Health (goal)
%write8($7EF36D, $58) ; Health (actual)
%write8($7EF381, $00) ; Key for dungeon $05
%write8($7EF3ED, $00) ; Deaths
%write8($7EF37A, $76) ; Crystals
%writeroom($006, $0802) ; Room $0006: Swamp Palace (Arrghus[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..dm
%write8($7EF2BB, $00) ; Overworld $3B: Unknown (........)
%write8($7EF2FB, $00) ; Overworld $7B: Unknown (........)
%write8($7EF3CA, $00) ; LW/DW
%writeroom($10B, $000F) ; Room $010B: Unknown (.............qqq)
%writeroom($028, $0080) ; Room $0028: Swamp Palace (Entrance Room) (.........c......)
...end
;-------------------------------------------------------------------------------
..free_flutedash
%write8($7EF348, $01) ; Ether Medallion
...end
;-------------------------------------------------------------------------------
..darkworld_warp
%write8($7EF346, $01) ; Ice Rod
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF2F0, $20) ; Overworld $70: Unknown (...?....)
%write8($7EF36E, $60) ; Magic Power
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..mire2
%write8($7EF36F, $00) ; Keys
%writeroom($098, $0003) ; Room $0098: Misery Mire (Entrance Room) (...............q)
...end
;-------------------------------------------------------------------------------
..main_hub
%write8($7EF36E, $50) ; Magic Power
%writeroom($0D2, $000F) ; Room $00D2: Misery Mire (Mire02 / Wizzrobes Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..beat_the_fireball
%write8($7EF36F, $01) ; Keys
%writeroom($0B2, $0001) ; Room $00B2: Misery Mire (Slug Room) (................)
%writeroom($0C2, $000F) ; Room $00C2: Misery Mire (Big Hub Room) (.............qqq)
%writeroom($0B3, $0402) ; Room $00B3: Misery Mire (Spike Key Chest Room) (......K........q)
...end
;-------------------------------------------------------------------------------
..bari_key
%write8($7EF36F, $00) ; Keys
%writeroom($0C2, $400F) ; Room $00C2: Misery Mire (Big Hub Room) (..d..........qqq)
...end
;-------------------------------------------------------------------------------
..sluggulas
%writeroom($0C1, $C403) ; Room $00C1: Misery Mire (Compass Chest / Tile Room) (.dd...K........q)
...end
;-------------------------------------------------------------------------------
..torches
%write8($7EF373, $6F) ; Magic filler
%write8($7EF36E, $51) ; Magic Power
%writeroom($0D1, $0008) ; Room $00D1: Misery Mire (Conveyor Slug / Big Key Room) (.............q..)
...end
;-------------------------------------------------------------------------------
..spark_gamble
%write8($7EF373, $00) ; Magic filler
%write8($7EF366, $77B0) ; BigKey1
%write8($7EF36E, $40) ; Magic Power
%writeroom($097, $010F) ; Room $0097: Misery Mire (Torch Puzzle / Moving Wall Room) (........c....qqq)
%writeroom($0B1, $0007) ; Room $00B1: Misery Mire (Hourglass Room) (..............qq)
%writeroom($0C1, $C407) ; Room $00C1: Misery Mire (Compass Chest / Tile Room) (.dd...K.......qq)
%writeroom($0D1, $001B) ; Room $00D1: Misery Mire (Conveyor Slug / Big Key Room) (............qq.q)
...end
;-------------------------------------------------------------------------------
..big_chest_room
%write8($7EF36D, $50) ; Health (actual)
%writeroom($0C3, $000A) ; Room $00C3: Misery Mire (Big Chest Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..spike_key
%write8($7EF350, $01) ; Cane of Somaria
%writeroom($0C3, $001F) ; Room $00C3: Misery Mire (Big Chest Room) (............qqqq)
...end
;-------------------------------------------------------------------------------
..wizzrobe
%write8($7EF36D, $38) ; Health (actual)
%writeroom($0B3, $841A) ; Room $00B3: Misery Mire (Spike Key Chest Room) (.d....K.....qq.q)
...end
;-------------------------------------------------------------------------------
..basement
%write8($7EF362, $65) ; Rupees (actual)
%writeroom($0A2, $800F) ; Room $00A2: Misery Mire (Bridge Key Chest Room) (.d...........qqq)
%writeroom($0B2, $800D) ; Room $00B2: Misery Mire (Slug Room) (.d...........qq.)
...end
;-------------------------------------------------------------------------------
..spooky_action_1
%write8($7EF36E, $38) ; Magic Power
%writeroom($093, $000E) ; Room $0093: Misery Mire (Dark Cane Floor Switch Puzzle Room) (.............qqq)
...end
;-------------------------------------------------------------------------------
..spooky_action_2
%write8($7EF36E, $30) ; Magic Power
%writeroom($092, $0005) ; Room $0092: Misery Mire (Dark Bomb Wall / Switches Room) (..............q.)
...end
;-------------------------------------------------------------------------------
..vitty
%write8($7EF343, $01) ; Bombs
%write8($7EF377, $14) ; Arrows
%write8($7EF36E, $40) ; Magic Power
%writeroom($092, $400F) ; Room $0092: Misery Mire (Dark Bomb Wall / Switches Room) (..d..........qqq)
%writeroom($0A0, $800F) ; Room $00A0: Misery Mire (Pre-Vitreous Room) (.d...........qqq)
%writeroom($091, $0005) ; Room $0091: Misery Mire (Final Switch Room) (..............q.)
...end
;-------------------------------------------------------------------------------
.trock
;-------------------------------------------------------------------------------
..outside_mire
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $0C) ; Arrows
%write8($7EF383, $00) ; Key for dungeon $07
%write8($7EF36C, $60) ; Health (goal)
%write8($7EF36D, $60) ; Health (actual)
%write8($7EF3F1, $00) ; Deaths
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $77) ; Crystals
%writeroom($090, $0802) ; Room $0090: Misery Mire (Vitreous[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..icerod_overworld
%write8($7EF3CA, $00) ; LW/DW
...end
;-------------------------------------------------------------------------------
..dm
%write8($7EF2B7, $02) ; Overworld $37: Unknown (.......?)
%write8($7EF343, $00) ; Bombs
%write8($7EF346, $01) ; Ice Rod
%writeroom($120, $001A) ; Room $0120: Unknown (............qq.q)
...end
;-------------------------------------------------------------------------------
..squirrels
%writeroom($0DF, $0003) ; Room $00DF: Cave (...............q)
%writeroom($0EF, $0003) ; Room $00EF: Cave (Crystal Switch / 5 Chests Room) (...............q)
...end
;-------------------------------------------------------------------------------
..peg_puzzle
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF287, $20) ; Overworld $07: Unknown (...?....)
%write8($7EF2C7, $20) ; Overworld $47: Unknown (...?....)
%write8($7EF36E, $60) ; Magic Power
%write8($7EF3CA, $40) ; LW/DW
...end
;-------------------------------------------------------------------------------
..torches
%write8($7EF343, $01) ; Bombs
%write8($7EF36F, $00) ; Keys
%write8($7EF36E, $70) ; Magic Power
%writeroom($0C6, $000F) ; Room $00C6: Turtle Rock (.............qqq)
%writeroom($0D6, $8005) ; Room $00D6: Turtle Rock (Entrance Room) (.d............q.)
...end
;-------------------------------------------------------------------------------
..roller_room
%write8($7EF36D, $58) ; Health (actual)
%write8($7EF36E, $38) ; Magic Power
%writeroom($0C7, $000F) ; Room $00C7: Turtle Rock (Torch Puzzle) (.............qqq)
...end
;-------------------------------------------------------------------------------
..pokey_0
%write8($7EF36D, $40) ; Health (actual)
%write8($7EF36E, $30) ; Magic Power
%writeroom($0C6, $800F) ; Room $00C6: Turtle Rock (.d...........qqq)
%writeroom($0B7, $002A) ; Room $00B7: Turtle Rock (Map Chest / Key Chest / Roller Room) (...........c.q.q)
...end
;-------------------------------------------------------------------------------
..chomps
%write8($7EF36D, $48) ; Health (actual)
%write8($7EF372, $30) ; Hearts filler
%writeroom($0B6, $3402) ; Room $00B6: Turtle Rock (Chain Chomps Room) (...db.K........q)
...end
;-------------------------------------------------------------------------------
..pokey_1
%write8($7EF377, $11) ; Arrows
%write8($7EF36D, $60) ; Health (actual)
%write8($7EF36E, $28) ; Magic Power
%write8($7EF372, $00) ; Hearts filler
%writeroom($014, $000F) ; Room $0014: Turtle Rock (Big Key Room) (.............qqq)
%writeroom($0B6, $B41A) ; Room $00B6: Turtle Rock (Chain Chomps Room) (.d.db.K.....qq.q)
%writeroom($015, $000F) ; Room $0015: Turtle Rock (.............qqq)
...end
;-------------------------------------------------------------------------------
..pokeys_2
%write8($7EF362, $79) ; Rupees (actual)
%write8($7EF366, $77B8) ; BigKey1
%write8($7EF36E, $78) ; Magic Power
%writeroom($014, $401F) ; Room $0014: Turtle Rock (Big Key Room) (..d.........qqqq)
%writeroom($013, $8405) ; Room $0013: Turtle Rock (Hokku-Bokku Key Room 2) (.d....K.......q.)
...end
;-------------------------------------------------------------------------------
..crystal_roller
%writeroom($014, $C01F) ; Room $0014: Turtle Rock (Big Key Room) (.dd.........qqqq)
%writeroom($024, $800C) ; Room $0024: Turtle Rock (Double Hokku-Bokku / Big chest Room) (.d...........qq.)
...end
;-------------------------------------------------------------------------------
..dark_room
%writeroom($004, $C01A) ; Room $0004: Turtle Rock (Crysta-roller Room) (.dd.........qq.q)
...end
;-------------------------------------------------------------------------------
..laser_skip
%write8($7EF36D, $58) ; Health (actual)
%write8($7EF36E, $70) ; Magic Power
%writeroom($0B5, $000F) ; Room $00B5: Turtle Rock (Dark Maze) (.............qqq)
%writeroom($0C5, $000A) ; Room $00C5: Turtle Rock (Laser Bridge) (.............q.q)
...end
;-------------------------------------------------------------------------------
..switch_room
%writeroom($0C5, $800A) ; Room $00C5: Turtle Rock (Laser Bridge) (.d...........q.q)
%writeroom($0D5, $008A) ; Room $00D5: Turtle Rock (Laser Key Room) (.........c...q.q)
...end
;-------------------------------------------------------------------------------
..trinexx
%write8($7EF36E, $60) ; Magic Power
%writeroom($0B4, $800F) ; Room $00B4: Turtle Rock (Pre-Trinexx Room) (.d...........qqq)
%writeroom($0C4, $800F) ; Room $00C4: Turtle Rock (Final Crystal Switch Puzzle Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
.gtower
;-------------------------------------------------------------------------------
..outside_trock
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $08) ; Map Phase
%write8($7EF3FB, $00) ; Deaths
%write8($7EF36C, $68) ; Health (goal)
%write8($7EF36D, $68) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $7F) ; Crystals
%writeroom($0A4, $0802) ; Room $00A4: Turtle Rock (Trinexx[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..entrance
%write8($7EF2C3, $20) ; Overworld $43: Unknown (...?....)
...end
;-------------------------------------------------------------------------------
..spike_skip
%write8($7EF36F, $01) ; Keys
%writeroom($00C, $000F) ; Room $000C: Ganon's Tower (Entrance Room) (.............qqq)
%writeroom($08C, $0008) ; Room $008C: Ganon's Tower (East and West Downstairs / Big Chest Room) (.............q..)
%writeroom($08B, $0404) ; Room $008B: Ganon's Tower (Block Puzzle / Spike Skip / Map Chest Room) (......K.......q.)
...end
;-------------------------------------------------------------------------------
..pre_firesnakes_room
%writeroom($08B, $040E) ; Room $008B: Ganon's Tower (Block Puzzle / Spike Skip / Map Chest Room) (......K......qqq)
%writeroom($09B, $8408) ; Room $009B: Ganon's Tower (Many Spikes / Warp Maze Room) (.d....K......q..)
...end
;-------------------------------------------------------------------------------
..bombable_floor
%write8($7EF377, $16) ; Arrows
%write8($7EF36D, $60) ; Health (actual)
%writeroom($09C, $000F) ; Room $009C: Ganon's Tower (Invisible Floor Maze Room) (.............qqq)
%writeroom($07D, $201E) ; Room $007D: Ganon's Tower (Winder / Warp Maze Room) (...d........qqqq)
%writeroom($09B, $840F) ; Room $009B: Ganon's Tower (Many Spikes / Warp Maze Room) (.d....K......qqq)
...end
;-------------------------------------------------------------------------------
..ice_armos
%writeroom($01C, $0001) ; Room $001C: Ganon's Tower (Ice Armos) (................)
%writeroom($08C, $0009) ; Room $008C: Ganon's Tower (East and West Downstairs / Big Chest Room) (.............q..)
...end
;-------------------------------------------------------------------------------
..floor_2
%write8($7EF377, $0E) ; Arrows
%write8($7EF389, $01) ; Key for dungeon $0D
%write8($7EF366, $77BC) ; BigKey1
%writeroom($01C, $0035) ; Room $001C: Ganon's Tower (Ice Armos) (...........cq.q.)
...end
;-------------------------------------------------------------------------------
..mimics1
%write8($7EF377, $0D) ; Arrows
%write8($7EF36D, $48) ; Health (actual)
%writeroom($06B, $000C) ; Room $006B: Ganon's Tower (Mimics Rooms) (.............qq.)
...end
;-------------------------------------------------------------------------------
..mimics2
%write8($7EF377, $0E) ; Arrows
%writeroom($06B, $000E) ; Room $006B: Ganon's Tower (Mimics Rooms) (.............qqq)
...end
;-------------------------------------------------------------------------------
..spike_room
%write8($7EF377, $0A) ; Arrows
%writeroom($06B, $800F) ; Room $006B: Ganon's Tower (Mimics Rooms) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
..gauntlet
%writeroom($05C, $000C) ; Room $005C: Ganon's Tower (Ganon-Ball Z) (.............qq.)
%writeroom($05B, $8005) ; Room $005B: Ganon's Tower (Spike Pit Room) (.d............q.)
...end
;-------------------------------------------------------------------------------
..gauntlet_3
%write8($7EF377, $08) ; Arrows
%writeroom($05D, $000C) ; Room $005D: Ganon's Tower (Gauntlet 1/2/3) (.............qq.)
...end
;-------------------------------------------------------------------------------
..lanmola2
%write8($7EF36D, $40) ; Health (actual)
%write8($7EF36E, $70) ; Magic Power
%writeroom($06C, $0001) ; Room $006C: Ganon's Tower (Lanmolas Room) (................)
%writeroom($05D, $000E) ; Room $005D: Ganon's Tower (Gauntlet 1/2/3) (.............qqq)
%writeroom($06D, $000A) ; Room $006D: Ganon's Tower (Gauntlet 4/5) (.............q.q)
...end
;-------------------------------------------------------------------------------
..wizz1
%write8($7EF36E, $20) ; Magic Power
%writeroom($06C, $000B) ; Room $006C: Ganon's Tower (Lanmolas Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..wizz2
%write8($7EF36D, $48) ; Health (actual)
%write8($7EF36E, $18) ; Magic Power
%writeroom($0A5, $000B) ; Room $00A5: Ganon's Tower (Wizzrobes Rooms) (.............q.q)
...end
;-------------------------------------------------------------------------------
..torches1
%write8($7EF36E, $10) ; Magic Power
%writeroom($095, $0005) ; Room $0095: Ganon's Tower (Final Collapsing Bridge Room) (..............q.)
%writeroom($0A5, $000F) ; Room $00A5: Ganon's Tower (Wizzrobes Rooms) (.............qqq)
...end
;-------------------------------------------------------------------------------
..torches2
%write8($7EF373, $25) ; Magic filler
%write8($7EF36E, $5F) ; Magic Power
%writeroom($096, $000B) ; Room $0096: Ganon's Tower (Torches 1 Room) (.............q.q)
...end
;-------------------------------------------------------------------------------
..helma_key
%write8($7EF373, $00) ; Magic filler
%write8($7EF36E, $40) ; Magic Power
%writeroom($03D, $0001) ; Room $003D: Ganon's Tower (Torch Room 2) (................)
...end
;-------------------------------------------------------------------------------
..bombable_wall
%write8($7EF36D, $40) ; Health (actual)
%writeroom($03D, $4405) ; Room $003D: Ganon's Tower (Torch Room 2) (..d...K.......q.)
...end
;-------------------------------------------------------------------------------
..moldorm_2
%write8($7EF343, $00) ; Bombs
%write8($7EF36F, $00) ; Keys
%write8($7EF36D, $38) ; Health (actual)
%writeroom($03D, $740F) ; Room $003D: Ganon's Tower (Torch Room 2) (..ddb.K......qqq)
...end
;-------------------------------------------------------------------------------
..agahnim_2
%writeroom($04C, $0005) ; Room $004C: Ganon's Tower (Mini-Helmasaur Conveyor Room) (..............q.)
%writeroom($01D, $800C) ; Room $001D: Ganon's Tower (Final Hallway) (.d...........qq.)
%writeroom($04D, $800F) ; Room $004D: Ganon's Tower (Moldorm Room) (.d...........qqq)
...end
;-------------------------------------------------------------------------------
.ganon
;-------------------------------------------------------------------------------
..pyramid
%write8($7EF2DB, $20) ; Overworld $5B: Unknown (...?....)
%write8($7EF36F, $FF) ; Keys
%write8($7EF389, $00) ; Key for dungeon $0D
%write8($7EF3FD, $00) ; Deaths
%writeroom($00D, $0802) ; Room $000D: Ganon's Tower (Agahnim2[Boss]) (.....k.........q)
...end
;-------------------------------------------------------------------------------
..pyramid_magic
%write8($7EF36E, $80) ; Magic Power
...end
;-------------------------------------------------------------------------------
.boss