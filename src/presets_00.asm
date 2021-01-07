;===============================================================================

global_preset_bed:
%preset_uw("Link's bed")
dw $0104 ; Room Index
dw $2110 ; BG1 Vertical Scroll
dw $2110 ; BG2 Vertical Scroll
dw $0900 ; BG1 Horizontal Scroll
dw $0900 ; BG2 Horizontal Scroll
dw $0940 ; Link X
dw $215A ; Link Y
dw $017F ; Camera X
dw $017F ; Camera Y
dw $0816 ; Door Settings
dw $2100 ; Relative Coords HU
dw $2000 ; Relative Coords FU
dw $2110 ; Relative Coords HD
dw $2110 ; Relative Coords FD
dw $0900 ; Relative Coords HL
dw $0900 ; Relative Coords FL
dw $0900 ; Relative Coords HR
dw $0A00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $03 ; Main Graphics
db $FF ; Music Track
db $00 ; Starting Floor
db $FF ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw 

%write8($7E002F, $02) ; Link's direction
%write8($7EC167, $7D) ; Underworld exit cache
%write8($7EF36F, $FF) ; Keys

%write16_enable()
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $15CA) ; Object tilemap state
%write16($7E0542, $16CA) ; Object tilemap state
%write16($7E0544, $17CA) ; Object tilemap state
%write16($7EC142, $0015) ; Underworld exit cache
%write16($7EC165, $5123) ; Underworld exit cache
%write16($7EF208, $0002) ; Room $0104: Unknown (...............q)
%write16($7EF20C, $F000) ; Room $0106: Unknown (.dddb...........)
%write16($7EF20E, $F000) ; Room $0107: Unknown (.dddb...........)
%write16($7EF36C, $1818) ; Health (goal)
%write16($7EF378, $F800) ; ????
%write16($7EF3D8, $4B00) ;
%write16($7EF3DA, $8C01) ; Player name
%write16($7EF3DC, $8C01) ; Player name
%write16($7EF3DE, $8C01) ; Player name
%write16($7EF3E0, $AA01) ; Player name
%write16($7EF3E2, $0055) ; Player name
%write16($7EF400, $FF00) ; Deaths
%write16($7EF402, $00FF) ; Deaths
%write16($7EF4FE, $D0EA) ; Inverse checksum
%write_end()

;===============================================================================

global_preset_courtyard:
%preset_uw("Courtyard")
dw $0055 ; Room Index
dw $0B10 ; BG1 Vertical Scroll
dw $0B10 ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A78 ; Link X
dw $0BC6 ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0B00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0B10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $01 ; Main Graphics
db $03 ; Music Track
db $FF ; Starting Floor
db $FF ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dl .here

.here
%write8($7E010E, $7D) ; Dungeon entrance index
%write8($7E010F, $00) ;
%write8($7E0202, $00) ; Selected menu item
%write8($7E0303, $00) ; Selected menu item
%write8($7E0CBB, $00) ; Sprite drop
%write8($7E0CC7, $00) ; Sprite drop
%write8($7E0CC9, $00) ; Sprite drop
%write8($7EF051, $00) ; Room $0028: Swamp Palace (Entrance Room) (................)
%write8($7EF2BB, $00) ; Overworld $3B: Unknown (........)
%write8($7EF2FB, $00) ; Overworld $7B: Unknown (........)
%write8($7EF359, $01) ; Sword
%write8($7EF35A, $01) ; Shield
%write8($7EF3C8, $03) ; Entrances Phase
%write8($7FE0EF, $41) ; Room $B7 persistent: Turtle Rock

%write16_enable()
%write16($7E0540, $18E6) ; Object tilemap state
%write16($7E0542, $19E6) ; Object tilemap state
%write16($7E0544, $1850) ; Object tilemap state
%write16($7EF3C5, $1101) ; Game Phase 1
%write16($7EF0AA, $000F) ; Room $0055 (.............qqq)
%write16($7EF360, $0001) ; Rupees (goal)
%write16($7EF362, $0001) ; Rupees (actual)
%write_end()


;===============================================================================
global_preset_esc_entrance:
%preset_ow("Entrance")
%preset("nmg_esc_entrance")
dw $001B ; Screen Index
dw $07F9 ; Link X
dw $0709 ; Link Y
dw $06C0 ; BG1 Vertical Scroll
dw $06AB ; BG2 Vertical Scroll
dw $39EC ; BG1 Horizontal Scroll
dw $0785 ; BG2 Horizontal Scroll
dw $0804 ; Scroll X
dw $0718 ; Scroll Y
dw $05B2 ; Unknown 1
dw $0005 ; Unknown 2
dw $0009 ; Unknown 3
%write8($7E0CC1, $00) ; Sprite drop
%write8($7E0CC3, $00) ; Sprite drop
%write8($7E0CC5, $00) ; Sprite drop
%write8($7E002F, $00) ; Link's direction
%write_end()

;===============================================================================
global_preset_esc_1st_keyguard:
%preset_uw("Key guard 1")
db $02 ; Dungeon
dw $0001 ; Room Index
dw $0000 ; BG1 Vertical Scroll
dw $0000 ; BG2 Vertical Scroll
dw $0280 ; BG1 Horizontal Scroll
dw $0280 ; BG2 Horizontal Scroll
dw $02F8 ; Link X
dw $0062 ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0000 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0010 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $00 ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background

%write8($7EF36F, $00) ; Keys
%write8($7FE0EF, $00) ; Room $B7 persistent: Turtle Rock (Map Chest / Key Chest / Roller Room)
%write8($7E010E, $04) ; Dungeon entrance index

%write16_enable()
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7EF002, $000C) ; Room $0001: Hyrule Castle (North Corridor) (.............qq.)
%write16($7EF0A0, $0005) ; Room $0050: Hyrule Castle (West Corridor) (..............q.)
%write16($7EF0C0, $0005) ; Room $0060: Hyrule Castle (West Entrance Room) (..............q.)
%write16($7EF0C2, $000F) ; Room $0061: Hyrule Castle (Main Entrance Room) (.............qqq)
%write_end()

;===============================================================================
global_preset_esc_stealth_room:
%preset("Stealth room")

;===============================================================================
global_preset_esc_2nd_keyguard:
%preset("Key guard 2")
