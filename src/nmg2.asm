; Preset locations

preset_nmg_esc_bed:
db $02 ; Dungeon
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
dw sram_nmg_esc_bed_after

preset_nmg_esc_courtyard:
db $02 ; Dungeon
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
dw sram_nmg_esc_courtyard_after

preset_nmg_esc_entrance:
db $01 ; Overworld
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
dw sram_nmg_esc_entrance_after

preset_nmg_esc_1st_keyguard:
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
dw sram_nmg_esc_1st_keyguard_after

preset_nmg_esc_stealth_room:
db $02 ; Dungeon
dw $0082 ; Room Index
dw $110B ; BG1 Vertical Scroll
dw $110B ; BG2 Vertical Scroll
dw $0400 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $040B ; Link X
dw $1178 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1100 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1110 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0200 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_esc_stealth_room_after

preset_nmg_esc_2nd_keyguard:
db $02 ; Dungeon
dw $0071 ; Room Index
dw $0F0B ; BG1 Vertical Scroll
dw $0F0B ; BG2 Vertical Scroll
dw $0200 ; BG1 Horizontal Scroll
dw $0200 ; BG2 Horizontal Scroll
dw $02AD ; Link X
dw $0F78 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0F00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0F10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_esc_2nd_keyguard_after

preset_nmg_esc_ball_n_chains:
db $02 ; Dungeon
dw $0070 ; Room Index
dw $0E00 ; BG1 Vertical Scroll
dw $0E00 ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $0050 ; Link X
dw $0E2D ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0E00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0E10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FE ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_ball_n_chains_after

preset_nmg_esc_backtracking:
db $02 ; Dungeon
dw $0080 ; Room Index
dw $1000 ; BG1 Vertical Scroll
dw $1000 ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $0050 ; Link X
dw $1026 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1000 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1010 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FD ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_backtracking_after

preset_nmg_esc_keyguard_revisited:
db $02 ; Dungeon
dw $0072 ; Room Index
dw $0F00 ; BG1 Vertical Scroll
dw $0F00 ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0480 ; BG2 Horizontal Scroll
dw $04F8 ; Link X
dw $0F2D ; Link Y
dw $00FF ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0F00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0F10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $02 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_keyguard_revisited_after

preset_nmg_esc_throne_room:
db $02 ; Dungeon
dw $0051 ; Room Index
dw $0A21 ; BG1 Vertical Scroll
dw $0A21 ; BG2 Vertical Scroll
dw $0280 ; BG1 Horizontal Scroll
dw $0280 ; BG2 Horizontal Scroll
dw $02F8 ; Link X
dw $0A8E ; Link Y
dw $00FF ; Camera X
dw $0099 ; Camera Y
dw $0000 ; Door Settings
dw $0A00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0A10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $01 ; Starting Floor
db $02 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_throne_room_after

preset_nmg_esc_snake_avoidance_room:
db $02 ; Dungeon
dw $0041 ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $FFCF ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $03A8 ; Link X
dw $082D ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0300 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0300 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $01 ; Starting Floor
db $00 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_snake_avoidance_room_after

preset_nmg_esc_water_rooms:
db $02 ; Dungeon
dw $0032 ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $FFFF ; BG1 Horizontal Scroll
dw $0480 ; BG2 Horizontal Scroll
dw $04F8 ; Link X
dw $061F ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $00 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_water_rooms_after

preset_nmg_esc_keyrat:
db $02 ; Dungeon
dw $0021 ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $0500 ; BG2 Vertical Scroll
dw $FFFF ; BG1 Horizontal Scroll
dw $0280 ; BG2 Horizontal Scroll
dw $02F8 ; Link X
dw $052D ; Link Y
dw $00FF ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0500 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0510 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $00 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_keyrat_after

preset_nmg_esc_last_two_screens:
db $02 ; Dungeon
dw $0011 ; Room Index
dw $0200 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $0300 ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $0378 ; Link X
dw $022D ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0300 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0300 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $FF ; Starting Floor
db $00 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_esc_last_two_screens_after

preset_nmg_east_before_cutscene:
db $02 ; Dungeon
dw $0002 ; Room Index
dw $0110 ; BG1 Vertical Scroll
dw $0110 ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0480 ; BG2 Horizontal Scroll
dw $04F8 ; Link X
dw $01AC ; Link Y
dw $00FF ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0100 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0110 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $00 ; Starting Floor
db $00 ; Palace No
db $01 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_east_before_cutscene_after

preset_nmg_east_after_cutscene:
db $02 ; Dungeon
dw $0012 ; Room Index
dw $020D ; BG1 Vertical Scroll
dw $020D ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0480 ; BG2 Horizontal Scroll
dw $04F8 ; Link X
dw $027A ; Link Y
dw $00FF ; Camera X
dw $0085 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $00 ; Starting Floor
db $00 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_after_cutscene_after

preset_nmg_east_octoroc:
db $01 ; Overworld
dw $001D ; Screen Index
dw $0B10 ; Link X
dw $07DC ; Link Y
dw $068F ; BG1 Vertical Scroll
dw $071E ; BG2 Vertical Scroll
dw $0A4F ; BG1 Horizontal Scroll
dw $0A9E ; BG2 Horizontal Scroll
dw $0B1B ; Scroll X
dw $078B ; Scroll Y
dw $0894 ; Unknown 1
dw $0000 ; Unknown 2
dw $0002 ; Unknown 3
dw sram_nmg_east_octoroc_after

preset_nmg_east_outside_palace:
db $01 ; Overworld
dw $002E ; Screen Index
dw $0C70 ; Link X
dw $0A08 ; Link Y
dw $0A00 ; BG1 Vertical Scroll
dw $0A00 ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C7D ; Scroll X
dw $0A6D ; Scroll Y
dw $0000 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_east_outside_palace_after

preset_nmg_east_entrance:
db $01 ; Overworld
dw $001E ; Screen Index
dw $0F50 ; Link X
dw $0637 ; Link Y
dw $0791 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0D6F ; BG1 Horizontal Scroll
dw $0EDE ; BG2 Horizontal Scroll
dw $0F5B ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_east_entrance_after

preset_nmg_east_stalfos_room:
db $02 ; Dungeon
dw $00A8 ; Room Index
dw $150A ; BG1 Vertical Scroll
dw $150A ; BG2 Vertical Scroll
dw $1100 ; BG1 Horizontal Scroll
dw $1100 ; BG2 Horizontal Scroll
dw $1128 ; Link X
dw $1577 ; Link Y
dw $017F ; Camera X
dw $0182 ; Camera Y
dw $0000 ; Door Settings
dw $1500 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1510 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $1100 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1100 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0201 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_stalfos_room_after

preset_nmg_east_big_chest_room_1:
db $02 ; Dungeon
dw $00A8 ; Room Index
dw $140B ; BG1 Vertical Scroll
dw $140B ; BG2 Vertical Scroll
dw $1100 ; BG1 Horizontal Scroll
dw $1100 ; BG2 Horizontal Scroll
dw $11C6 ; Link X
dw $1478 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1400 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1410 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $1100 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1100 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $02 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_east_big_chest_room_1_after

preset_nmg_east_dark_key_room:
db $02 ; Dungeon
dw $00BA ; Room Index
dw $0105 ; BG1 Vertical Scroll
dw $160B ; BG2 Vertical Scroll
dw $00B0 ; BG1 Horizontal Scroll
dw $1400 ; BG2 Horizontal Scroll
dw $14CA ; Link X
dw $1678 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1400 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1400 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_dark_key_room_after

preset_nmg_east_big_key_dmg_boost:
db $02 ; Dungeon
dw $00B9 ; Room Index
dw $160B ; BG1 Vertical Scroll
dw $160B ; BG2 Vertical Scroll
dw $1200 ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $1225 ; Link X
dw $1678 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_big_key_dmg_boost_after

preset_nmg_east_big_chest_room_2:
db $02 ; Dungeon
dw $00A8 ; Room Index
dw $140B ; BG1 Vertical Scroll
dw $140B ; BG2 Vertical Scroll
dw $1100 ; BG1 Horizontal Scroll
dw $1100 ; BG2 Horizontal Scroll
dw $11B2 ; Link X
dw $1478 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1400 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1410 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $1100 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1100 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $02 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_east_big_chest_room_2_after

preset_nmg_east_gwg:
db $02 ; Dungeon
dw $00A9 ; Room Index
dw $1400 ; BG1 Vertical Scroll
dw $1400 ; BG2 Vertical Scroll
dw $1280 ; BG1 Horizontal Scroll
dw $1280 ; BG2 Horizontal Scroll
dw $12F8 ; Link X
dw $142B ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1400 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1410 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_gwg_after

preset_nmg_east_pot_room:
db $02 ; Dungeon
dw $0099 ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $1300 ; BG2 Vertical Scroll
dw $FFFF ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $1278 ; Link X
dw $132D ; Link Y
dw $007F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $04 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_pot_room_after

preset_nmg_east_zeldagamer_room:
db $02 ; Dungeon
dw $00D9 ; Room Index
dw $1B0B ; BG1 Vertical Scroll
dw $1B0B ; BG2 Vertical Scroll
dw $1200 ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $1225 ; Link X
dw $1B78 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1B00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1B10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $04 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_zeldagamer_room_after

preset_nmg_east_armos:
db $02 ; Dungeon
dw $00D8 ; Room Index
dw $1A00 ; BG1 Vertical Scroll
dw $1A00 ; BG2 Vertical Scroll
dw $1100 ; BG1 Horizontal Scroll
dw $1100 ; BG2 Horizontal Scroll
dw $1178 ; Link X
dw $1A30 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1A00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1A10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $1100 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1100 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $04 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_east_armos_after

preset_nmg_desert_outside_eastern_palace:
db $01 ; Overworld
dw $001E ; Screen Index
dw $0F50 ; Link X
dw $0638 ; Link Y
dw $0600 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0ED6 ; BG1 Horizontal Scroll
dw $0ED6 ; BG2 Horizontal Scroll
dw $0F5B ; Scroll X
dw $066D ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_desert_outside_eastern_palace_after

preset_nmg_desert_ep_spinspeed:
db $02 ; Dungeon
dw $0105 ; Room Index
dw $2110 ; BG1 Vertical Scroll
dw $2110 ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A78 ; Link X
dw $21C2 ; Link Y
dw $007F ; Camera X
dw $0187 ; Camera Y
dw $0000 ; Door Settings
dw $2100 ; Relative Coords HU
dw $2000 ; Relative Coords FU
dw $2110 ; Relative Coords HD
dw $2110 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0F ; Main Graphics
db $18 ; Music Track
db $00 ; Starting Floor
db $FF ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_ep_spinspeed_after

preset_nmg_desert_bridge_screen:
db $01 ; Overworld
dw $002E ; Screen Index
dw $0C13 ; Link X
dw $0A69 ; Link Y
dw $0A06 ; BG1 Vertical Scroll
dw $0A0B ; BG2 Vertical Scroll
dw $0C3B ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C85 ; Scroll X
dw $0A78 ; Scroll Y
dw $0000 ; Unknown 1
dw $FFF5 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_desert_bridge_screen_after

preset_nmg_desert_unholy_spinspeed:
db $01 ; Overworld
dw $002A ; Screen Index
dw $0407 ; Link X
dw $0B9A ; Link Y
dw $0B20 ; BG1 Vertical Scroll
dw $0B1E ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $0485 ; Scroll X
dw $0B8D ; Scroll Y
dw $0900 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_desert_unholy_spinspeed_after

preset_nmg_desert_water_dash:
db $01 ; Overworld
dw $002C ; Screen Index
dw $08D2 ; Link X
dw $0BE2 ; Link Y
dw $0B20 ; BG1 Vertical Scroll
dw $0B1E ; BG2 Vertical Scroll
dw $0830 ; BG1 Horizontal Scroll
dw $0860 ; BG2 Horizontal Scroll
dw $08DD ; Scroll X
dw $0B8D ; Scroll Y
dw $090C ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_desert_water_dash_after

preset_nmg_desert_outside_desert_palace:
db $01 ; Overworld
dw $003A ; Screen Index
dw $040E ; Link X
dw $0F88 ; Link Y
dw $0E8F ; BG1 Vertical Scroll
dw $0F1E ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $0485 ; Scroll X
dw $0F8B ; Scroll Y
dw $0880 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_desert_outside_desert_palace_after

preset_nmg_desert_desert_entrance:
db $01 ; Overworld
dw $0030 ; Screen Index
dw $0128 ; Link X
dw $0CB8 ; Link Y
dw $0D2B ; BG1 Vertical Scroll
dw $0C56 ; BG2 Vertical Scroll
dw $01D5 ; BG1 Horizontal Scroll
dw $00AA ; BG2 Horizontal Scroll
dw $012F ; Scroll X
dw $0CC3 ; Scroll Y
dw $0294 ; Unknown 1
dw $0008 ; Unknown 2
dw $FFF6 ; Unknown 3
dw sram_nmg_desert_desert_entrance_after

preset_nmg_desert_keybonk:
db $02 ; Dungeon
dw $0073 ; Room Index
dw $0F00 ; BG1 Vertical Scroll
dw $0F00 ; BG2 Vertical Scroll
dw $0700 ; BG1 Horizontal Scroll
dw $0700 ; BG2 Horizontal Scroll
dw $0778 ; Link X
dw $0F22 ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0F00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0F10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0700 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0700 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $FF ; Starting Floor
db $06 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_keybonk_after

preset_nmg_desert_pre_cannonball_room:
db $02 ; Dungeon
dw $0085 ; Room Index
dw $100B ; BG1 Vertical Scroll
dw $100B ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0ACB ; Link X
dw $1078 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1000 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1010 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0000 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $FF ; Starting Floor
db $06 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_pre_cannonball_room_after

preset_nmg_desert_pot_room:
db $02 ; Dungeon
dw $0073 ; Room Index
dw $0F0B ; BG1 Vertical Scroll
dw $0F0B ; BG2 Vertical Scroll
dw $0700 ; BG1 Horizontal Scroll
dw $0700 ; BG2 Horizontal Scroll
dw $0725 ; Link X
dw $0F78 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0F00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0F10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0700 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0700 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $FF ; Starting Floor
db $06 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_pot_room_after

preset_nmg_desert_desert2_spinspeed:
db $02 ; Dungeon
dw $0083 ; Room Index
dw $1110 ; BG1 Vertical Scroll
dw $1110 ; BG2 Vertical Scroll
dw $0600 ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0678 ; Link X
dw $11C3 ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $1100 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1110 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $FF ; Starting Floor
db $06 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_desert2_spinspeed_after

preset_nmg_desert_popo_genocide_room:
db $02 ; Dungeon
dw $0053 ; Room Index
dw $0A10 ; BG1 Vertical Scroll
dw $0A10 ; BG2 Vertical Scroll
dw $0600 ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0678 ; Link X
dw $0AC6 ; Link Y
dw $007F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $0A00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0A10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $06 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_popo_genocide_room_after

preset_nmg_desert_torches:
db $02 ; Dungeon
dw $0043 ; Room Index
dw $0900 ; BG1 Vertical Scroll
dw $0900 ; BG2 Vertical Scroll
dw $0700 ; BG1 Horizontal Scroll
dw $0700 ; BG2 Horizontal Scroll
dw $0778 ; Link X
dw $092E ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0700 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0700 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $06 ; Palace No
db $01 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_desert_torches_after

preset_nmg_desert_lanmolas:
db $02 ; Dungeon
dw $0043 ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $064A ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0678 ; Link X
dw $082E ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $12 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $06 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_desert_lanmolas_after

preset_nmg_hera_outside_desert_palace:
db $01 ; Overworld
dw $0030 ; Screen Index
dw $0128 ; Link X
dw $0C41 ; Link Y
dw $0C00 ; BG1 Vertical Scroll
dw $0C00 ; BG2 Vertical Scroll
dw $00A2 ; BG1 Horizontal Scroll
dw $00A2 ; BG2 Horizontal Scroll
dw $012F ; Scroll X
dw $0C6D ; Scroll Y
dw $0016 ; Unknown 1
dw $0000 ; Unknown 2
dw $000E ; Unknown 3
dw sram_nmg_hera_outside_desert_palace_after

preset_nmg_hera_fake_flippers:
db $01 ; Overworld
dw $003C ; Screen Index
dw $09E0 ; Link X
dw $0F7C ; Link Y
dw $0D8F ; BG1 Vertical Scroll
dw $0F1E ; BG2 Vertical Scroll
dw $0880 ; BG1 Horizontal Scroll
dw $0900 ; BG2 Horizontal Scroll
dw $097D ; Scroll X
dw $0F8B ; Scroll Y
dw $0820 ; Unknown 1
dw $FFF2 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_hera_fake_flippers_after

preset_nmg_hera_dm:
db $02 ; Dungeon
dw $00F1 ; Room Index
dw $FFC0 ; BG1 Vertical Scroll
dw $1F10 ; BG2 Vertical Scroll
dw $00FF ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $0378 ; Link X
dw $1FC1 ; Link Y
dw $017F ; Camera X
dw $0187 ; Camera Y
dw $0000 ; Door Settings
dw $1F00 ; Relative Coords HU
dw $1E00 ; Relative Coords FU
dw $1F10 ; Relative Coords HD
dw $1F10 ; Relative Coords FD
dw $0300 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0300 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0201 ; Quadrant 2
db $06 ; Main Graphics
db $12 ; Music Track
db $00 ; Starting Floor
db $FF ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_hera_dm_after

preset_nmg_hera_after_mirror:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $071E ; Link X
dw $03C0 ; Link Y
dw $02D9 ; BG1 Vertical Scroll
dw $031E ; BG2 Vertical Scroll
dw $062D ; BG1 Horizontal Scroll
dw $06AA ; BG2 Horizontal Scroll
dw $0729 ; Scroll X
dw $038D ; Scroll Y
dw $1816 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF6 ; Unknown 3
dw sram_nmg_hera_after_mirror_after

preset_nmg_hera_quickhop:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $081B ; Link X
dw $0138 ; Link Y
dw $00D4 ; BG1 Vertical Scroll
dw $00D4 ; BG2 Vertical Scroll
dw $07A5 ; BG1 Horizontal Scroll
dw $07A5 ; BG2 Horizontal Scroll
dw $0824 ; Scroll X
dw $0143 ; Scroll Y
dw $0638 ; Unknown 1
dw $000A ; Unknown 2
dw $000B ; Unknown 3
dw sram_nmg_hera_quickhop_after

preset_nmg_hera_entrance:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $08F0 ; Link X
dw $0085 ; Link Y
dw $007A ; BG1 Vertical Scroll
dw $0021 ; BG2 Vertical Scroll
dw $07DB ; BG1 Horizontal Scroll
dw $087C ; BG2 Horizontal Scroll
dw $08FB ; Scroll X
dw $0090 ; Scroll Y
dw $00D0 ; Unknown 1
dw $000D ; Unknown 2
dw $FFF4 ; Unknown 3
dw sram_nmg_hera_entrance_after

preset_nmg_hera_tile_room:
db $02 ; Dungeon
dw $0077 ; Room Index
dw $0E00 ; BG1 Vertical Scroll
dw $0E00 ; BG2 Vertical Scroll
dw $0E00 ; BG1 Horizontal Scroll
dw $0E00 ; BG2 Horizontal Scroll
dw $0E78 ; Link X
dw $0E45 ; Link Y
dw $007F ; Camera X
dw $0077 ; Camera Y
dw $0000 ; Door Settings
dw $0E00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0E10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0E00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0E00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $14 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_hera_tile_room_after

preset_nmg_hera_torches:
db $02 ; Dungeon
dw $0087 ; Room Index
dw $1010 ; BG1 Vertical Scroll
dw $1010 ; BG2 Vertical Scroll
dw $0F00 ; BG1 Horizontal Scroll
dw $0F00 ; BG2 Horizontal Scroll
dw $0F78 ; Link X
dw $10BC ; Link Y
dw $017F ; Camera X
dw $0087 ; Camera Y
dw $0000 ; Door Settings
dw $1000 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1010 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $0F00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0F00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $00 ; Starting Floor
db $14 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_hera_torches_after

preset_nmg_hera_beetles:
db $02 ; Dungeon
dw $0077 ; Room Index
dw $0EE2 ; BG1 Vertical Scroll
dw $0EE2 ; BG2 Vertical Scroll
dw $0EF0 ; BG1 Horizontal Scroll
dw $0EF0 ; BG2 Horizontal Scroll
dw $0F68 ; Link X
dw $0F4E ; Link Y
dw $016F ; Camera X
dw $0159 ; Camera Y
dw $0000 ; Door Settings
dw $0F00 ; Relative Coords HU
dw $0E00 ; Relative Coords FU
dw $0F10 ; Relative Coords HD
dw $0F10 ; Relative Coords FD
dw $0F00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0F00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0201 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $01 ; Starting Floor
db $14 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_hera_beetles_after

preset_nmg_hera_petting_zoo:
db $02 ; Dungeon
dw $0031 ; Room Index
dw $060F ; BG1 Vertical Scroll
dw $060F ; BG2 Vertical Scroll
dw $0280 ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $03B8 ; Link X
dw $067C ; Link Y
dw $017F ; Camera X
dw $0087 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0300 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0300 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $02 ; Starting Floor
db $14 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_hera_petting_zoo_after

preset_nmg_hera_moldorm:
db $02 ; Dungeon
dw $0017 ; Room Index
dw $0206 ; BG1 Vertical Scroll
dw $020D ; BG2 Vertical Scroll
dw $0E80 ; BG1 Horizontal Scroll
dw $0F00 ; BG2 Horizontal Scroll
dw $0FA8 ; Link X
dw $027A ; Link Y
dw $017F ; Camera X
dw $0085 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0F00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0F00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $05 ; Main Graphics
db $11 ; Music Track
db $04 ; Starting Floor
db $14 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_hera_moldorm_after

preset_nmg_aga_outside_hera:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $08F0 ; Link X
dw $007C ; Link Y
dw $0016 ; BG1 Vertical Scroll
dw $0018 ; BG2 Vertical Scroll
dw $087C ; BG1 Horizontal Scroll
dw $087C ; BG2 Horizontal Scroll
dw $08FB ; Scroll X
dw $0087 ; Scroll Y
dw $0050 ; Unknown 1
dw $0006 ; Unknown 2
dw $FFF4 ; Unknown 3
dw sram_nmg_aga_outside_hera_after

preset_nmg_aga_first_rupee_tree:
db $02 ; Dungeon
dw $00E6 ; Room Index
dw $FFC0 ; BG1 Vertical Scroll
dw $1D10 ; BG2 Vertical Scroll
dw $00FF ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C78 ; Link X
dw $1DB8 ; Link Y
dw $007F ; Camera X
dw $0187 ; Camera Y
dw $0000 ; Door Settings
dw $1D00 ; Relative Coords HU
dw $1C00 ; Relative Coords FU
dw $1D10 ; Relative Coords HD
dw $1D10 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0200 ; Quadrant 2
db $06 ; Main Graphics
db $12 ; Music Track
db $00 ; Starting Floor
db $FF ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_first_rupee_tree_after

preset_nmg_aga_lost_woods:
db $01 ; Overworld
dw $0002 ; Screen Index
dw $0406 ; Link X
dw $007A ; Link Y
dw $009C ; BG1 Vertical Scroll
dw $0016 ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $048D ; Scroll X
dw $0085 ; Scroll Y
dw $0100 ; Unknown 1
dw $0008 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_aga_lost_woods_after

preset_nmg_aga_after_grove:
db $01 ; Overworld
dw $0000 ; Screen Index
dw $00A0 ; Link X
dw $00CB ; Link Y
dw $0057 ; BG1 Vertical Scroll
dw $006B ; BG2 Vertical Scroll
dw $0022 ; BG1 Horizontal Scroll
dw $0022 ; BG2 Horizontal Scroll
dw $00A7 ; Scroll X
dw $00DA ; Scroll Y
dw $0306 ; Unknown 1
dw $FFF3 ; Unknown 2
dw $000E ; Unknown 3
dw sram_nmg_aga_after_grove_after

preset_nmg_aga_after_lost_woods:
db $01 ; Overworld
dw $0000 ; Screen Index
dw $0388 ; Link X
dw $03D0 ; Link Y
dw $01AF ; BG1 Vertical Scroll
dw $031E ; BG2 Vertical Scroll
dw $00D9 ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $0385 ; Scroll X
dw $038D ; Scroll Y
dw $1860 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_aga_after_lost_woods_after

preset_nmg_aga_castle_screen:
db $01 ; Overworld
dw $001A ; Screen Index
dw $05E5 ; Link X
dw $0728 ; Link Y
dw $0665 ; BG1 Vertical Scroll
dw $06CA ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0500 ; BG2 Horizontal Scroll
dw $057D ; Scroll X
dw $0737 ; Scroll Y
dw $0620 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_aga_castle_screen_after

preset_nmg_aga_entrance:
db $01 ; Overworld
dw $001B ; Screen Index
dw $07F8 ; Link X
dw $065C ; Link Y
dw $0600 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0716 ; BG1 Horizontal Scroll
dw $077E ; BG2 Horizontal Scroll
dw $0803 ; Scroll X
dw $066D ; Scroll Y
dw $002E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_aga_entrance_after

preset_nmg_aga_fairy_skip:
db $02 ; Dungeon
dw $00E0 ; Room Index
dw $1C0B ; BG1 Vertical Scroll
dw $1C0B ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $00DA ; Link X
dw $1C78 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1C00 ; Relative Coords HU
dw $1C00 ; Relative Coords FU
dw $1C10 ; Relative Coords HD
dw $1D10 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $01 ; Starting Floor
db $08 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_fairy_skip_after

preset_nmg_aga_dark_room_of_despair:
db $02 ; Dungeon
dw $00D0 ; Room Index
dw $0105 ; BG1 Vertical Scroll
dw $1A0B ; BG2 Vertical Scroll
dw $004E ; BG1 Horizontal Scroll
dw $0100 ; BG2 Horizontal Scroll
dw $0125 ; Link X
dw $1A78 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1A00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1A10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $0100 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0100 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $02 ; Starting Floor
db $08 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_dark_room_of_despair_after

preset_nmg_aga_dark_room_of_melancholy:
db $02 ; Dungeon
dw $00C0 ; Room Index
dw $0105 ; BG1 Vertical Scroll
dw $190B ; BG2 Vertical Scroll
dw $004E ; BG1 Horizontal Scroll
dw $0100 ; BG2 Horizontal Scroll
dw $0125 ; Link X
dw $1978 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0100 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0100 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $03 ; Starting Floor
db $08 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_dark_room_of_melancholy_after

preset_nmg_aga_spear_guards:
db $02 ; Dungeon
dw $00C0 ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $1800 ; BG2 Vertical Scroll
dw $FFFF ; BG1 Horizontal Scroll
dw $0100 ; BG2 Horizontal Scroll
dw $0178 ; Link X
dw $182C ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0100 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0100 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $03 ; Starting Floor
db $08 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_spear_guards_after

preset_nmg_aga_circle_of_pots:
db $02 ; Dungeon
dw $00B0 ; Room Index
dw $1610 ; BG1 Vertical Scroll
dw $1610 ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $0078 ; Link X
dw $16C4 ; Link Y
dw $007F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $04 ; Starting Floor
db $08 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_circle_of_pots_after

preset_nmg_aga_pit_room:
db $02 ; Dungeon
dw $0040 ; Room Index
dw $090B ; BG1 Vertical Scroll
dw $090B ; BG2 Vertical Scroll
dw $0100 ; BG1 Horizontal Scroll
dw $0100 ; BG2 Horizontal Scroll
dw $012C ; Link X
dw $0978 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0100 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0100 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $05 ; Starting Floor
db $08 ; Palace No
db $02 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_aga_pit_room_after

preset_nmg_aga_agahnim:
db $02 ; Dungeon
dw $0030 ; Room Index
dw $0600 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $0078 ; Link X
dw $062D ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $04 ; Main Graphics
db $10 ; Music Track
db $06 ; Starting Floor
db $08 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_aga_agahnim_after

preset_nmg_pod_pyramid:
db $01 ; Overworld
dw $005B ; Screen Index
dw $07F0 ; Link X
dw $0660 ; Link Y
dw $0601 ; BG1 Vertical Scroll
dw $0602 ; BG2 Vertical Scroll
dw $0778 ; BG1 Horizontal Scroll
dw $0778 ; BG2 Horizontal Scroll
dw $07F7 ; Scroll X
dw $066F ; Scroll Y
dw $002E ; Unknown 1
dw $FFFE ; Unknown 2
dw $FFF8 ; Unknown 3
dw sram_nmg_pod_pyramid_after

preset_nmg_pod_pod_overworld:
db $01 ; Overworld
dw $006E ; Screen Index
dw $0C70 ; Link X
dw $0A0C ; Link Y
dw $0A00 ; BG1 Vertical Scroll
dw $0A00 ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C7D ; Scroll X
dw $0A6D ; Scroll Y
dw $0000 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_pod_pod_overworld_after

preset_nmg_pod_entrance:
db $01 ; Overworld
dw $005E ; Screen Index
dw $0F50 ; Link X
dw $064C ; Link Y
dw $0791 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0D6F ; BG1 Horizontal Scroll
dw $0EDE ; BG2 Horizontal Scroll
dw $0F5B ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_pod_entrance_after

preset_nmg_pod_main_hub_small_key:
db $02 ; Dungeon
dw $004A ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $1480 ; BG1 Horizontal Scroll
dw $1480 ; BG2 Horizontal Scroll
dw $14F8 ; Link X
dw $081B ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1400 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1400 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_main_hub_small_key_after

preset_nmg_pod_main_hub_bk:
db $02 ; Dungeon
dw $004A ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $1480 ; BG1 Horizontal Scroll
dw $1480 ; BG2 Horizontal Scroll
dw $14F8 ; Link X
dw $081A ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1400 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1400 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_main_hub_bk_after

preset_nmg_pod_main_hub_hammeryump:
db $02 ; Dungeon
dw $004A ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $1480 ; BG1 Horizontal Scroll
dw $1480 ; BG2 Horizontal Scroll
dw $14F8 ; Link X
dw $0818 ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1400 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1400 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_main_hub_hammeryump_after

preset_nmg_pod_hammeryump:
db $02 ; Dungeon
dw $002A ; Room Index
dw $0400 ; BG1 Vertical Scroll
dw $0400 ; BG2 Vertical Scroll
dw $1400 ; BG1 Horizontal Scroll
dw $1400 ; BG2 Horizontal Scroll
dw $1478 ; Link X
dw $0424 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0400 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0410 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $1400 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1400 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_hammeryump_after

preset_nmg_pod_before_sexy_statue:
db $02 ; Dungeon
dw $003A ; Room Index
dw $0688 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $14C0 ; BG1 Horizontal Scroll
dw $1500 ; BG2 Horizontal Scroll
dw $1578 ; Link X
dw $062C ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1500 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1500 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_before_sexy_statue_after

preset_nmg_pod_sexy_statue_room:
db $02 ; Dungeon
dw $002A ; Room Index
dw $048B ; BG1 Vertical Scroll
dw $048B ; BG2 Vertical Scroll
dw $1500 ; BG1 Horizontal Scroll
dw $1500 ; BG2 Horizontal Scroll
dw $15B4 ; Link X
dw $04F8 ; Link Y
dw $017F ; Camera X
dw $0103 ; Camera Y
dw $0000 ; Door Settings
dw $0400 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0410 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $1500 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1500 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_sexy_statue_room_after

preset_nmg_pod_mimics:
db $02 ; Dungeon
dw $002B ; Room Index
dw $0400 ; BG1 Vertical Scroll
dw $0400 ; BG2 Vertical Scroll
dw $1600 ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $1678 ; Link X
dw $0413 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0400 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0410 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_mimics_after

preset_nmg_pod_statue:
db $02 ; Dungeon
dw $001B ; Room Index
dw $0300 ; BG1 Vertical Scroll
dw $0300 ; BG2 Vertical Scroll
dw $1600 ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $1678 ; Link X
dw $0320 ; Link Y
dw $007F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0300 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0310 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_pod_statue_after

preset_nmg_pod_basement:
db $02 ; Dungeon
dw $001B ; Room Index
dw $0200 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $1678 ; BG1 Horizontal Scroll
dw $1700 ; BG2 Horizontal Scroll
dw $1790 ; Link X
dw $0251 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1700 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1700 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0001 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0C ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_basement_after

preset_nmg_pod_turtle_room:
db $02 ; Dungeon
dw $000B ; Room Index
dw $FFC0 ; BG1 Vertical Scroll
dw $0010 ; BG2 Vertical Scroll
dw $00FF ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $1678 ; Link X
dw $00C8 ; Link Y
dw $007F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $0000 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0010 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_turtle_room_after

preset_nmg_pod_helma:
db $02 ; Dungeon
dw $006A ; Room Index
dw $0040 ; BG1 Vertical Scroll
dw $0C00 ; BG2 Vertical Scroll
dw $FFFF ; BG1 Horizontal Scroll
dw $1500 ; BG2 Horizontal Scroll
dw $1578 ; Link X
dw $0C24 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0C00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0C10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1500 ; Relative Coords HL
dw $1400 ; Relative Coords FL
dw $1500 ; Relative Coords HR
dw $1500 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $07 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0C ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_pod_helma_after

preset_nmg_thieves_outside_pod:
db $01 ; Overworld
dw $005E ; Screen Index
dw $0F50 ; Link X
dw $063E ; Link Y
dw $0600 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0ED6 ; BG1 Horizontal Scroll
dw $0ED6 ; BG2 Horizontal Scroll
dw $0F5B ; Scroll X
dw $066D ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_thieves_outside_pod_after

preset_nmg_thieves_ow_hammerdash:
db $01 ; Overworld
dw $006E ; Screen Index
dw $0C06 ; Link X
dw $0A6A ; Link Y
dw $0A06 ; BG1 Vertical Scroll
dw $0A0C ; BG2 Vertical Scroll
dw $0D6B ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C85 ; Scroll X
dw $0A79 ; Scroll Y
dw $0000 ; Unknown 1
dw $FFF4 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_thieves_ow_hammerdash_after

preset_nmg_thieves_grove:
db $01 ; Overworld
dw $0072 ; Screen Index
dw $04DA ; Link X
dw $0C0C ; Link Y
dw $0C00 ; BG1 Vertical Scroll
dw $0C00 ; BG2 Vertical Scroll
dw $04AE ; BG1 Horizontal Scroll
dw $045C ; BG2 Horizontal Scroll
dw $04E1 ; Scroll X
dw $0C6D ; Scroll Y
dw $000C ; Unknown 1
dw $0000 ; Unknown 2
dw $0004 ; Unknown 3
dw sram_nmg_thieves_grove_after

preset_nmg_thieves_usain_bolt:
db $01 ; Overworld
dw $002A ; Screen Index
dw $0407 ; Link X
dw $0B99 ; Link Y
dw $0B20 ; BG1 Vertical Scroll
dw $0B1E ; BG2 Vertical Scroll
dw $040F ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $0485 ; Scroll X
dw $0B8D ; Scroll Y
dw $0900 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_thieves_usain_bolt_after

preset_nmg_thieves_after_activating_flute:
db $01 ; Overworld
dw $0018 ; Screen Index
dw $01CA ; Link X
dw $0798 ; Link Y
dw $082B ; BG1 Vertical Scroll
dw $0734 ; BG2 Vertical Scroll
dw $0226 ; BG1 Horizontal Scroll
dw $014C ; BG2 Horizontal Scroll
dw $01D1 ; Scroll X
dw $07A3 ; Scroll Y
dw $092A ; Unknown 1
dw $000A ; Unknown 2
dw $0004 ; Unknown 3
dw sram_nmg_thieves_after_activating_flute_after

preset_nmg_thieves_darkworld:
db $01 ; Overworld
dw $0050 ; Screen Index
dw $0161 ; Link X
dw $0553 ; Link Y
dw $04F5 ; BG1 Vertical Scroll
dw $04F5 ; BG2 Vertical Scroll
dw $00E8 ; BG1 Horizontal Scroll
dw $00E3 ; BG2 Horizontal Scroll
dw $0168 ; Scroll X
dw $0562 ; Scroll Y
dw $079E ; Unknown 1
dw $FFFB ; Unknown 2
dw $000D ; Unknown 3
dw sram_nmg_thieves_darkworld_after

preset_nmg_thieves_entrance:
db $01 ; Overworld
dw $0058 ; Screen Index
dw $01F8 ; Link X
dw $07C2 ; Link Y
dw $06B2 ; BG1 Vertical Scroll
dw $0764 ; BG2 Vertical Scroll
dw $0136 ; BG1 Horizontal Scroll
dw $017E ; BG2 Horizontal Scroll
dw $0203 ; Scroll X
dw $07D1 ; Scroll Y
dw $0BAE ; Unknown 1
dw $000C ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_thieves_entrance_after

preset_nmg_thieves_after_big_key:
db $02 ; Dungeon
dw $00DB ; Room Index
dw $1AFB ; BG1 Vertical Scroll
dw $1AFB ; BG2 Vertical Scroll
dw $1700 ; BG1 Horizontal Scroll
dw $1700 ; BG2 Horizontal Scroll
dw $17BA ; Link X
dw $1B68 ; Link Y
dw $017F ; Camera X
dw $0173 ; Camera Y
dw $0000 ; Door Settings
dw $1B00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1B10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $1700 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1700 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_thieves_after_big_key_after

preset_nmg_thieves_blind_hallway:
db $02 ; Dungeon
dw $00CC ; Room Index
dw $1800 ; BG1 Vertical Scroll
dw $1800 ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $1978 ; Link X
dw $181D ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_blind_hallway_after

preset_nmg_thieves_conveyor_gibos:
db $02 ; Dungeon
dw $00BC ; Room Index
dw $170B ; BG1 Vertical Scroll
dw $170B ; BG2 Vertical Scroll
dw $1800 ; BG1 Horizontal Scroll
dw $1800 ; BG2 Horizontal Scroll
dw $181D ; Link X
dw $1778 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1700 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1710 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1800 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1800 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_conveyor_gibos_after

preset_nmg_thieves_hellway:
db $02 ; Dungeon
dw $00BB ; Room Index
dw $170B ; BG1 Vertical Scroll
dw $170B ; BG2 Vertical Scroll
dw $1700 ; BG1 Horizontal Scroll
dw $1700 ; BG2 Horizontal Scroll
dw $1716 ; Link X
dw $1778 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1700 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1710 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1700 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1700 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_hellway_after

preset_nmg_thieves_bombable_floor:
db $02 ; Dungeon
dw $0065 ; Room Index
dw $0D0B ; BG1 Vertical Scroll
dw $0D0B ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0AE7 ; Link X
dw $0D78 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0D00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0D10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_bombable_floor_after

preset_nmg_thieves_backtracking_1:
db $02 ; Dungeon
dw $0064 ; Room Index
dw $0D00 ; BG1 Vertical Scroll
dw $0D00 ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $0D28 ; Link Y
dw $007F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0D00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0D10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $16 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_backtracking_1_after

preset_nmg_thieves_basement:
db $02 ; Dungeon
dw $00BC ; Room Index
dw $1600 ; BG1 Vertical Scroll
dw $1600 ; BG2 Vertical Scroll
dw $1800 ; BG1 Horizontal Scroll
dw $1800 ; BG2 Horizontal Scroll
dw $1878 ; Link X
dw $162A ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1800 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1800 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_basement_after

preset_nmg_thieves_prison:
db $02 ; Dungeon
dw $0045 ; Room Index
dw $090B ; BG1 Vertical Scroll
dw $090B ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0AE4 ; Link X
dw $0978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_prison_after

preset_nmg_thieves_after_gloves:
db $02 ; Dungeon
dw $0044 ; Room Index
dw $090B ; BG1 Vertical Scroll
dw $090B ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $08DC ; Link X
dw $0978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_after_gloves_after

preset_nmg_thieves_backtracking_2:
db $02 ; Dungeon
dw $0044 ; Room Index
dw $090B ; BG1 Vertical Scroll
dw $090B ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $08E4 ; Link X
dw $0978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $16 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_backtracking_2_after

preset_nmg_thieves_pot_hammerdash:
db $02 ; Dungeon
dw $0045 ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A78 ; Link X
dw $082C ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $16 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_pot_hammerdash_after

preset_nmg_thieves_blind:
db $02 ; Dungeon
dw $00BC ; Room Index
dw $1600 ; BG1 Vertical Scroll
dw $1600 ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $1978 ; Link X
dw $1619 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0A ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $16 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_thieves_blind_after

preset_nmg_sw_outside_thieves:
db $01 ; Overworld
dw $0058 ; Screen Index
dw $01F8 ; Link X
dw $07C8 ; Link Y
dw $0762 ; BG1 Vertical Scroll
dw $076A ; BG2 Vertical Scroll
dw $0176 ; BG1 Horizontal Scroll
dw $0176 ; BG2 Horizontal Scroll
dw $0203 ; Scroll X
dw $07D7 ; Scroll Y
dw $0B2E ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_sw_outside_thieves_after

preset_nmg_sw_cursed_dwarf:
db $01 ; Overworld
dw $0058 ; Screen Index
dw $0280 ; Link X
dw $09C0 ; Link Y
dw $0904 ; BG1 Vertical Scroll
dw $091E ; BG2 Vertical Scroll
dw $019A ; BG1 Horizontal Scroll
dw $01FE ; BG2 Horizontal Scroll
dw $028B ; Scroll X
dw $098B ; Scroll Y
dw $183E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_sw_cursed_dwarf_after

preset_nmg_sw_getting_tempered:
db $01 ; Overworld
dw $0058 ; Screen Index
dw $03E1 ; Link X
dw $091A ; Link Y
dw $08EC ; BG1 Vertical Scroll
dw $08B6 ; BG2 Vertical Scroll
dw $021B ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $038D ; Scroll X
dw $0925 ; Scroll Y
dw $1560 ; Unknown 1
dw $0008 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_sw_getting_tempered_after

preset_nmg_sw_fence_dash:
db $01 ; Overworld
dw $0062 ; Screen Index
dw $0408 ; Link X
dw $0909 ; Link Y
dw $085E ; BG1 Vertical Scroll
dw $08A6 ; BG2 Vertical Scroll
dw $0433 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $047D ; Scroll X
dw $0915 ; Scroll Y
dw $0400 ; Unknown 1
dw $FFF8 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_sw_fence_dash_after

preset_nmg_sw_dash_to_sw:
db $01 ; Overworld
dw $0058 ; Screen Index
dw $0348 ; Link X
dw $0608 ; Link Y
dw $06A2 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $02CA ; BG1 Horizontal Scroll
dw $02CA ; BG2 Horizontal Scroll
dw $034F ; Scroll X
dw $066F ; Scroll Y
dw $005A ; Unknown 1
dw $0000 ; Unknown 2
dw $0006 ; Unknown 3
dw sram_nmg_sw_dash_to_sw_after

preset_nmg_sw_mummy_room:
db $01 ; Overworld
dw $0040 ; Screen Index
dw $0248 ; Link X
dw $0250 ; Link Y
dw $0367 ; BG1 Vertical Scroll
dw $01F0 ; BG2 Vertical Scroll
dw $032C ; BG1 Horizontal Scroll
dw $01CA ; BG2 Horizontal Scroll
dw $024F ; Scroll X
dw $025F ; Scroll Y
dw $0EBA ; Unknown 1
dw $FFFE ; Unknown 2
dw $0006 ; Unknown 3
dw sram_nmg_sw_mummy_room_after

preset_nmg_sw_bomb_jump:
db $01 ; Overworld
dw $0040 ; Screen Index
dw $02E8 ; Link X
dw $025B ; Link Y
dw $021A ; BG1 Vertical Scroll
dw $01FD ; BG2 Vertical Scroll
dw $01F6 ; BG1 Horizontal Scroll
dw $0266 ; BG2 Horizontal Scroll
dw $02F3 ; Scroll X
dw $026A ; Scroll Y
dw $0F4E ; Unknown 1
dw $0003 ; Unknown 2
dw $000A ; Unknown 3
dw sram_nmg_sw_bomb_jump_after

preset_nmg_sw_key_pot:
db $02 ; Dungeon
dw $0056 ; Room Index
dw $0B0C ; BG1 Vertical Scroll
dw $0B0C ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0D1A ; Link X
dw $0B78 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0B00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0B10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0201 ; Quadrant 2
db $09 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $10 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_sw_key_pot_after

preset_nmg_sw_skull_entrance:
db $01 ; Overworld
dw $0040 ; Screen Index
dw $0098 ; Link X
dw $00C7 ; Link Y
dw $01CA ; BG1 Vertical Scroll
dw $0066 ; BG2 Vertical Scroll
dw $0086 ; BG1 Horizontal Scroll
dw $0012 ; BG2 Horizontal Scroll
dw $009F ; Scroll X
dw $00D3 ; Scroll Y
dw $0282 ; Unknown 1
dw $000A ; Unknown 2
dw $FFFE ; Unknown 3
dw sram_nmg_sw_skull_entrance_after

preset_nmg_sw_mummy_hellway:
db $02 ; Dungeon
dw $0049 ; Room Index
dw $090B ; BG1 Vertical Scroll
dw $090B ; BG2 Vertical Scroll
dw $1200 ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $12DC ; Link X
dw $0978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0900 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0910 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $09 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $10 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_sw_mummy_hellway_after

preset_nmg_sw_mummy_key:
db $02 ; Dungeon
dw $0049 ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $1200 ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $1278 ; Link X
dw $0815 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $09 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $10 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_sw_mummy_key_after

preset_nmg_sw_mothula:
db $02 ; Dungeon
dw $0039 ; Room Index
dw $070D ; BG1 Vertical Scroll
dw $070B ; BG2 Vertical Scroll
dw $1200 ; BG1 Horizontal Scroll
dw $1200 ; BG2 Horizontal Scroll
dw $12D0 ; Link X
dw $0778 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1200 ; Relative Coords HL
dw $1200 ; Relative Coords FL
dw $1200 ; Relative Coords HR
dw $1300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $09 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $10 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_sw_mothula_after

preset_nmg_ice_outside_skull:
db $01 ; Overworld
dw $0040 ; Screen Index
dw $0098 ; Link X
dw $00CB ; Link Y
dw $0066 ; BG1 Vertical Scroll
dw $0069 ; BG2 Vertical Scroll
dw $0016 ; BG1 Horizontal Scroll
dw $0016 ; BG2 Horizontal Scroll
dw $00A3 ; Scroll X
dw $00D6 ; Scroll Y
dw $0282 ; Unknown 1
dw $0007 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_ice_outside_skull_after

preset_nmg_ice_bridge_warp:
db $01 ; Overworld
dw $002C ; Screen Index
dw $0898 ; Link X
dw $0A0C ; Link Y
dw $0A5C ; BG1 Vertical Scroll
dw $0A00 ; BG2 Vertical Scroll
dw $0830 ; BG1 Horizontal Scroll
dw $0820 ; BG2 Horizontal Scroll
dw $089F ; Scroll X
dw $0A6D ; Scroll Y
dw $0004 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_ice_bridge_warp_after

preset_nmg_ice_lottery:
db $01 ; Overworld
dw $0055 ; Screen Index
dw $0BE1 ; Link X
dw $0587 ; Link Y
dw $0520 ; BG1 Vertical Scroll
dw $051E ; BG2 Vertical Scroll
dw $0A80 ; BG1 Horizontal Scroll
dw $0B00 ; BG2 Horizontal Scroll
dw $0B7D ; Scroll X
dw $058D ; Scroll Y
dw $0920 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_ice_lottery_after

preset_nmg_ice_medallion:
db $01 ; Overworld
dw $0057 ; Screen Index
dw $0F70 ; Link X
dw $040C ; Link Y
dw $0491 ; BG1 Vertical Scroll
dw $0400 ; BG2 Vertical Scroll
dw $0E7F ; BG1 Horizontal Scroll
dw $0EFE ; BG2 Horizontal Scroll
dw $0F7B ; Scroll X
dw $046F ; Scroll Y
dw $009E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_ice_medallion_after

preset_nmg_ice_zoras_domain:
db $01 ; Overworld
dw $000F ; Screen Index
dw $0F40 ; Link X
dw $0215 ; Link Y
dw $0221 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $0E7A ; BG1 Horizontal Scroll
dw $0ECD ; BG2 Horizontal Scroll
dw $0F4A ; Scroll X
dw $026F ; Scroll Y
dw $0098 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF3 ; Unknown 3
dw sram_nmg_ice_zoras_domain_after

preset_nmg_ice_tiny_warp:
db $01 ; Overworld
dw $000F ; Screen Index
dw $0F40 ; Link X
dw $0221 ; Link Y
dw $0200 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $0ECD ; BG1 Horizontal Scroll
dw $0ECD ; BG2 Horizontal Scroll
dw $0F4A ; Scroll X
dw $026F ; Scroll Y
dw $0098 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF3 ; Unknown 3
dw sram_nmg_ice_tiny_warp_after

preset_nmg_ice_ice_entrance:
db $01 ; Overworld
dw $0075 ; Screen Index
dw $0CB8 ; Link X
dw $0DCB ; Link Y
dw $0D70 ; BG1 Vertical Scroll
dw $0D69 ; BG2 Vertical Scroll
dw $0C2C ; BG1 Horizontal Scroll
dw $0C32 ; BG2 Horizontal Scroll
dw $0CBF ; Scroll X
dw $0DD6 ; Scroll Y
dw $0BC6 ; Unknown 1
dw $0007 ; Unknown 2
dw $FFFE ; Unknown 3
dw sram_nmg_ice_ice_entrance_after

preset_nmg_ice_ice2:
db $02 ; Dungeon
dw $000E ; Room Index
dw $010C ; BG1 Vertical Scroll
dw $010C ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D1E ; Link X
dw $0178 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0100 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0110 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $12 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_ice2_after

preset_nmg_ice_penguin_switch_room:
db $02 ; Dungeon
dw $001E ; Room Index
dw $030D ; BG1 Vertical Scroll
dw $030B ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1DD8 ; Link X
dw $0378 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0300 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0310 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $12 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_penguin_switch_room_after

preset_nmg_ice_bombable_floor:
db $02 ; Dungeon
dw $001E ; Room Index
dw $0306 ; BG1 Vertical Scroll
dw $0300 ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D78 ; Link X
dw $0314 ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0300 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0310 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $12 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_bombable_floor_after

preset_nmg_ice_conveyor_room:
db $02 ; Dungeon
dw $003E ; Room Index
dw $0610 ; BG1 Vertical Scroll
dw $0610 ; BG2 Vertical Scroll
dw $1D60 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D78 ; Link X
dw $06D0 ; Link Y
dw $017F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $12 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_conveyor_room_after

preset_nmg_ice_ipbj:
db $02 ; Dungeon
dw $003E ; Room Index
dw $0710 ; BG1 Vertical Scroll
dw $0710 ; BG2 Vertical Scroll
dw $1BD7 ; BG1 Horizontal Scroll
dw $1C00 ; BG2 Horizontal Scroll
dw $1C78 ; Link X
dw $07D3 ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1C00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1C00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $12 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_ipbj_after

preset_nmg_ice_penguin_room:
db $02 ; Dungeon
dw $004E ; Room Index
dw $0800 ; BG1 Vertical Scroll
dw $0800 ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1DB8 ; Link X
dw $0862 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0800 ; Relative Coords HU
dw $0800 ; Relative Coords FU
dw $0810 ; Relative Coords HD
dw $0910 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $12 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_penguin_room_after

preset_nmg_ice_lonely_firebar:
db $02 ; Dungeon
dw $005E ; Room Index
dw $0B0D ; BG1 Vertical Scroll
dw $0B0B ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D10 ; Link X
dw $0B78 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0B00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0B10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FD ; Starting Floor
db $12 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_lonely_firebar_after

preset_nmg_ice_last_two_screens:
db $02 ; Dungeon
dw $009E ; Room Index
dw $130D ; BG1 Vertical Scroll
dw $130B ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D50 ; Link X
dw $1378 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FB ; Starting Floor
db $12 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_last_two_screens_after

preset_nmg_ice_kholdstare:
db $02 ; Dungeon
dw $00CE ; Room Index
dw $1808 ; BG1 Vertical Scroll
dw $1810 ; BG2 Vertical Scroll
dw $1D00 ; BG1 Horizontal Scroll
dw $1D00 ; BG2 Horizontal Scroll
dw $1D40 ; Link X
dw $18AA ; Link Y
dw $017F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $1D00 ; Relative Coords HL
dw $1C00 ; Relative Coords FL
dw $1D00 ; Relative Coords HR
dw $1D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0B ; Main Graphics
db $16 ; Music Track
db $FA ; Starting Floor
db $12 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_ice_kholdstare_after

preset_nmg_swamp_outside_ice:
db $01 ; Overworld
dw $0075 ; Screen Index
dw $0CB8 ; Link X
dw $0DCB ; Link Y
dw $0D6B ; BG1 Vertical Scroll
dw $0D6D ; BG2 Vertical Scroll
dw $0C3E ; BG1 Horizontal Scroll
dw $0C3E ; BG2 Horizontal Scroll
dw $0CC3 ; Scroll X
dw $0DDA ; Scroll Y
dw $0BC6 ; Unknown 1
dw $0003 ; Unknown 2
dw $FFF2 ; Unknown 3
dw sram_nmg_swamp_outside_ice_after

preset_nmg_swamp_links_house:
db $01 ; Overworld
dw $002C ; Screen Index
dw $08B8 ; Link X
dw $0B23 ; Link Y
dw $0ABF ; BG1 Vertical Scroll
dw $0AC5 ; BG2 Vertical Scroll
dw $0840 ; BG1 Horizontal Scroll
dw $0840 ; BG2 Horizontal Scroll
dw $08BF ; Scroll X
dw $0B32 ; Scroll Y
dw $0608 ; Unknown 1
dw $FFFB ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_swamp_links_house_after

preset_nmg_swamp_swamp_overworld:
db $01 ; Overworld
dw $0073 ; Screen Index
dw $07AF ; Link X
dw $0DD9 ; Link Y
dw $0C8F ; BG1 Vertical Scroll
dw $0D1E ; BG2 Vertical Scroll
dw $06DF ; BG1 Horizontal Scroll
dw $0700 ; BG2 Horizontal Scroll
dw $0785 ; Scroll X
dw $0D93 ; Scroll Y
dw $08A0 ; Unknown 1
dw $0000 ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_swamp_swamp_overworld_after

preset_nmg_swamp_antifairy_room:
db $01 ; Overworld
dw $003B ; Screen Index
dw $0778 ; Link X
dw $0EF0 ; Link Y
dw $0E9C ; BG1 Vertical Scroll
dw $0E91 ; BG2 Vertical Scroll
dw $06FC ; BG1 Horizontal Scroll
dw $06FA ; BG2 Horizontal Scroll
dw $077F ; Scroll X
dw $0EFE ; Scroll Y
dw $0520 ; Unknown 1
dw $000F ; Unknown 2
dw $0006 ; Unknown 3
dw sram_nmg_swamp_antifairy_room_after

preset_nmg_swamp_entrance:
db $01 ; Overworld
dw $007B ; Screen Index
dw $0778 ; Link X
dw $0EEF ; Link Y
dw $0E99 ; BG1 Vertical Scroll
dw $0E91 ; BG2 Vertical Scroll
dw $06FC ; BG1 Horizontal Scroll
dw $06FA ; BG2 Horizontal Scroll
dw $077F ; Scroll X
dw $0EFE ; Scroll Y
dw $0520 ; Unknown 1
dw $000F ; Unknown 2
dw $0006 ; Unknown 3
dw sram_nmg_swamp_entrance_after

preset_nmg_swamp_first_key_pot:
db $02 ; Dungeon
dw $0028 ; Room Index
dw $0400 ; BG1 Vertical Scroll
dw $0400 ; BG2 Vertical Scroll
dw $1000 ; BG1 Horizontal Scroll
dw $1000 ; BG2 Horizontal Scroll
dw $1078 ; Link X
dw $0426 ; Link Y
dw $007F ; Camera X
dw $0077 ; Camera Y
dw $0000 ; Door Settings
dw $0400 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0410 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $1000 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1000 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_first_key_pot_after

preset_nmg_swamp_hallway_key_1:
db $02 ; Dungeon
dw $0037 ; Room Index
dw $0700 ; BG1 Vertical Scroll
dw $0700 ; BG2 Vertical Scroll
dw $0E80 ; BG1 Horizontal Scroll
dw $0E80 ; BG2 Horizontal Scroll
dw $0EF8 ; Link X
dw $0728 ; Link Y
dw $00FF ; Camera X
dw $0177 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0E00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0E00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_hallway_key_1_after

preset_nmg_swamp_water_lever_1:
db $02 ; Dungeon
dw $0037 ; Room Index
dw $0700 ; BG1 Vertical Scroll
dw $0700 ; BG2 Vertical Scroll
dw $0E00 ; BG1 Horizontal Scroll
dw $0E00 ; BG2 Horizontal Scroll
dw $0E78 ; Link X
dw $071D ; Link Y
dw $007F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0E00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0E00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_water_lever_1_after

preset_nmg_swamp_main_hub:
db $02 ; Dungeon
dw $0037 ; Room Index
dw $070B ; BG1 Vertical Scroll
dw $070B ; BG2 Vertical Scroll
dw $0E00 ; BG1 Horizontal Scroll
dw $0E00 ; BG2 Horizontal Scroll
dw $0E18 ; Link X
dw $0778 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0E00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0E00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_main_hub_after

preset_nmg_swamp_water_lever_2:
db $02 ; Dungeon
dw $0036 ; Room Index
dw $060B ; BG1 Vertical Scroll
dw $060B ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C17 ; Link X
dw $0678 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_water_lever_2_after

preset_nmg_swamp_sociable_firebar:
db $02 ; Dungeon
dw $0034 ; Room Index
dw $06BF ; BG1 Vertical Scroll
dw $06BF ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $072C ; Link Y
dw $007F ; Camera X
dw $0137 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0200 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_sociable_firebar_after

preset_nmg_swamp_backtracking:
db $02 ; Dungeon
dw $0035 ; Room Index
dw $060B ; BG1 Vertical Scroll
dw $060B ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A19 ; Link X
dw $0678 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_backtracking_after

preset_nmg_swamp_hook_shot:
db $02 ; Dungeon
dw $0035 ; Room Index
dw $070B ; BG1 Vertical Scroll
dw $070B ; BG2 Vertical Scroll
dw $0B00 ; BG1 Horizontal Scroll
dw $0B00 ; BG2 Horizontal Scroll
dw $0BDA ; Link X
dw $0778 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0B00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0B00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0201 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_hook_shot_after

preset_nmg_swamp_hookdash:
db $02 ; Dungeon
dw $0036 ; Room Index
dw $0600 ; BG1 Vertical Scroll
dw $0600 ; BG2 Vertical Scroll
dw $0C80 ; BG1 Horizontal Scroll
dw $0C80 ; BG2 Horizontal Scroll
dw $0CF8 ; Link X
dw $062C ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_hookdash_after

preset_nmg_swamp_water_lever_3:
db $02 ; Dungeon
dw $0026 ; Room Index
dw $0400 ; BG1 Vertical Scroll
dw $0400 ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0DA8 ; Link X
dw $0426 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0400 ; Relative Coords HU
dw $0400 ; Relative Coords FU
dw $0410 ; Relative Coords HD
dw $0510 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_water_lever_3_after

preset_nmg_swamp_restock:
db $02 ; Dungeon
dw $0066 ; Room Index
dw $0D00 ; BG1 Vertical Scroll
dw $0D00 ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0D78 ; Link X
dw $0D2A ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0D00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0D10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0201 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_swamp_restock_after

preset_nmg_swamp_phelps_way:
db $02 ; Dungeon
dw $0016 ; Room Index
dw $0210 ; BG1 Vertical Scroll
dw $0210 ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0D78 ; Link X
dw $02D8 ; Link Y
dw $017F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0001 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_phelps_way_after

preset_nmg_swamp_arrghus:
db $02 ; Dungeon
dw $0016 ; Room Index
dw $0200 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C78 ; Link X
dw $0212 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $08 ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_swamp_arrghus_after

preset_nmg_mire_outside_swamp:
db $01 ; Overworld
dw $007B ; Screen Index
dw $077A ; Link X
dw $0EFA ; Link Y
dw $0E94 ; BG1 Vertical Scroll
dw $0E9C ; BG2 Vertical Scroll
dw $06F3 ; BG1 Horizontal Scroll
dw $06F4 ; BG2 Horizontal Scroll
dw $0781 ; Scroll X
dw $0F09 ; Scroll Y
dw $049E ; Unknown 1
dw $FFF4 ; Unknown 2
dw $FFFC ; Unknown 3
dw sram_nmg_mire_outside_swamp_after

preset_nmg_mire_dm:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $067B ; Link X
dw $0328 ; Link Y
dw $02CA ; BG1 Vertical Scroll
dw $02CA ; BG2 Vertical Scroll
dw $060D ; BG1 Horizontal Scroll
dw $060D ; BG2 Horizontal Scroll
dw $0682 ; Scroll X
dw $0337 ; Scroll Y
dw $1600 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF3 ; Unknown 3
dw sram_nmg_mire_dm_after

preset_nmg_mire_free_flutedash:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $06C1 ; Link X
dw $004B ; Link Y
dw $006C ; BG1 Vertical Scroll
dw $0000 ; BG2 Vertical Scroll
dw $0757 ; BG1 Horizontal Scroll
dw $0653 ; BG2 Horizontal Scroll
dw $06C8 ; Scroll X
dw $006D ; Scroll Y
dw $000A ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFD ; Unknown 3
dw sram_nmg_mire_free_flutedash_after

preset_nmg_mire_darkworld_warp:
db $01 ; Overworld
dw $0030 ; Screen Index
dw $008E ; Link X
dw $0FA8 ; Link Y
dw $0F1E ; BG1 Vertical Scroll
dw $0F1E ; BG2 Vertical Scroll
dw $0006 ; BG1 Horizontal Scroll
dw $000C ; BG2 Horizontal Scroll
dw $0099 ; Scroll X
dw $0F8D ; Scroll Y
dw $1880 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFF4 ; Unknown 3
dw sram_nmg_mire_darkworld_warp_after

preset_nmg_mire_entrance:
db $01 ; Overworld
dw $0070 ; Screen Index
dw $0128 ; Link X
dw $0CE6 ; Link Y
dw $F3D0 ; BG1 Vertical Scroll
dw $0C82 ; BG2 Vertical Scroll
dw $8562 ; BG1 Horizontal Scroll
dw $00A6 ; BG2 Horizontal Scroll
dw $0133 ; Scroll X
dw $0CF1 ; Scroll Y
dw $0414 ; Unknown 1
dw $000C ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_mire_entrance_after

preset_nmg_mire_mire2:
db $02 ; Dungeon
dw $0098 ; Room Index
dw $1300 ; BG1 Vertical Scroll
dw $1300 ; BG2 Vertical Scroll
dw $1100 ; BG1 Horizontal Scroll
dw $1100 ; BG2 Horizontal Scroll
dw $1188 ; Link X
dw $132A ; Link Y
dw $017F ; Camera X
dw $0177 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $1100 ; Relative Coords HL
dw $1000 ; Relative Coords FL
dw $1100 ; Relative Coords HR
dw $1100 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $0E ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_mire2_after

preset_nmg_mire_main_hub:
db $02 ; Dungeon
dw $00D2 ; Room Index
dw $1A00 ; BG1 Vertical Scroll
dw $1A00 ; BG2 Vertical Scroll
dw $0500 ; BG1 Horizontal Scroll
dw $0500 ; BG2 Horizontal Scroll
dw $0578 ; Link X
dw $1A1C ; Link Y
dw $017F ; Camera X
dw $0077 ; Camera Y
dw $0000 ; Door Settings
dw $1A00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1A10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $0500 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0500 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_main_hub_after

preset_nmg_mire_beat_the_fireball:
db $02 ; Dungeon
dw $00B2 ; Room Index
dw $1710 ; BG1 Vertical Scroll
dw $1710 ; BG2 Vertical Scroll
dw $0500 ; BG1 Horizontal Scroll
dw $0500 ; BG2 Horizontal Scroll
dw $0578 ; Link X
dw $17E2 ; Link Y
dw $017F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $1700 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1710 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $0500 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0500 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_beat_the_fireball_after

preset_nmg_mire_bari_key:
db $02 ; Dungeon
dw $00C2 ; Room Index
dw $190B ; BG1 Vertical Scroll
dw $190B ; BG2 Vertical Scroll
dw $0400 ; BG1 Horizontal Scroll
dw $0400 ; BG2 Horizontal Scroll
dw $0415 ; Link X
dw $1978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_bari_key_after

preset_nmg_mire_sluggulas:
db $02 ; Dungeon
dw $00C1 ; Room Index
dw $1910 ; BG1 Vertical Scroll
dw $1910 ; BG2 Vertical Scroll
dw $0200 ; BG1 Horizontal Scroll
dw $0200 ; BG2 Horizontal Scroll
dw $0278 ; Link X
dw $19CF ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_sluggulas_after

preset_nmg_mire_torches:
db $02 ; Dungeon
dw $00D1 ; Room Index
dw $1A00 ; BG1 Vertical Scroll
dw $1A00 ; BG2 Vertical Scroll
dw $0200 ; BG1 Horizontal Scroll
dw $0200 ; BG2 Horizontal Scroll
dw $02A8 ; Link X
dw $1A28 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1A00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1A10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $0200 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0200 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_torches_after

preset_nmg_mire_spark_gamble:
db $02 ; Dungeon
dw $00C1 ; Room Index
dw $180B ; BG1 Vertical Scroll
dw $180B ; BG2 Vertical Scroll
dw $0300 ; BG1 Horizontal Scroll
dw $0300 ; BG2 Horizontal Scroll
dw $03D6 ; Link X
dw $1878 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0300 ; Relative Coords HL
dw $0200 ; Relative Coords FL
dw $0300 ; Relative Coords HR
dw $0300 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_spark_gamble_after

preset_nmg_mire_big_chest_room:
db $02 ; Dungeon
dw $00C3 ; Room Index
dw $190B ; BG1 Vertical Scroll
dw $190B ; BG2 Vertical Scroll
dw $0600 ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $06D8 ; Link X
dw $1978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_big_chest_room_after

preset_nmg_mire_spike_key:
db $02 ; Dungeon
dw $00C3 ; Room Index
dw $1800 ; BG1 Vertical Scroll
dw $1800 ; BG2 Vertical Scroll
dw $0600 ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0678 ; Link X
dw $1814 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_spike_key_after

preset_nmg_mire_wizzrobe:
db $02 ; Dungeon
dw $00B3 ; Room Index
dw $160B ; BG1 Vertical Scroll
dw $160B ; BG2 Vertical Scroll
dw $0600 ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0624 ; Link X
dw $1678 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_mire_wizzrobe_after

preset_nmg_mire_basement:
db $02 ; Dungeon
dw $00A2 ; Room Index
dw $1400 ; BG1 Vertical Scroll
dw $1400 ; BG2 Vertical Scroll
dw $0480 ; BG1 Horizontal Scroll
dw $0480 ; BG2 Horizontal Scroll
dw $04F8 ; Link X
dw $1444 ; Link Y
dw $00FF ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1400 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1410 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $0400 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0400 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $00 ; Door Orientation
db $01 ; Starting Background
dw sram_nmg_mire_basement_after

preset_nmg_mire_spooky_action_1:
db $02 ; Dungeon
dw $0093 ; Room Index
dw $0105 ; BG1 Vertical Scroll
dw $130B ; BG2 Vertical Scroll
dw $004E ; BG1 Horizontal Scroll
dw $0600 ; BG2 Horizontal Scroll
dw $0612 ; Link X
dw $1378 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $0600 ; Relative Coords HL
dw $0600 ; Relative Coords FL
dw $0600 ; Relative Coords HR
dw $0700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_spooky_action_1_after

preset_nmg_mire_spooky_action_2:
db $02 ; Dungeon
dw $0092 ; Room Index
dw $0105 ; BG1 Vertical Scroll
dw $130B ; BG2 Vertical Scroll
dw $004E ; BG1 Horizontal Scroll
dw $0500 ; BG2 Horizontal Scroll
dw $0515 ; Link X
dw $1378 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $0500 ; Relative Coords HL
dw $0400 ; Relative Coords FL
dw $0500 ; Relative Coords HR
dw $0500 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $0E ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_spooky_action_2_after

preset_nmg_mire_vitty:
db $02 ; Dungeon
dw $00A0 ; Room Index
dw $1400 ; BG1 Vertical Scroll
dw $1400 ; BG2 Vertical Scroll
dw $0000 ; BG1 Horizontal Scroll
dw $0000 ; BG2 Horizontal Scroll
dw $0078 ; Link X
dw $1428 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1400 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1410 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $0000 ; Relative Coords HL
dw $0000 ; Relative Coords FL
dw $0000 ; Relative Coords HR
dw $0100 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0C ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $0E ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_mire_vitty_after

preset_nmg_trock_outside_mire:
db $01 ; Overworld
dw $0070 ; Screen Index
dw $0128 ; Link X
dw $0CDA ; Link Y
dw $0C7D ; BG1 Vertical Scroll
dw $0C7C ; BG2 Vertical Scroll
dw $00A6 ; BG1 Horizontal Scroll
dw $00A6 ; BG2 Horizontal Scroll
dw $0133 ; Scroll X
dw $0CE9 ; Scroll Y
dw $0414 ; Unknown 1
dw $0004 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_trock_outside_mire_after

preset_nmg_trock_icerod_overworld:
db $01 ; Overworld
dw $003F ; Screen Index
dw $0F70 ; Link X
dw $0E07 ; Link Y
dw $0E82 ; BG1 Vertical Scroll
dw $0E00 ; BG2 Vertical Scroll
dw $0EB5 ; BG1 Horizontal Scroll
dw $0EF6 ; BG2 Horizontal Scroll
dw $0F7B ; Scroll X
dw $0E6D ; Scroll Y
dw $001E ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_trock_icerod_overworld_after

preset_nmg_trock_dm:
db $01 ; Overworld
dw $0003 ; Screen Index
dw $067B ; Link X
dw $0328 ; Link Y
dw $02CA ; BG1 Vertical Scroll
dw $02CA ; BG2 Vertical Scroll
dw $060D ; BG1 Horizontal Scroll
dw $060D ; BG2 Horizontal Scroll
dw $0682 ; Scroll X
dw $0337 ; Scroll Y
dw $1600 ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF3 ; Unknown 3
dw sram_nmg_trock_dm_after

preset_nmg_trock_squirrels:
db $02 ; Dungeon
dw $00DF ; Room Index
dw $1B10 ; BG1 Vertical Scroll
dw $1B10 ; BG2 Vertical Scroll
dw $1E80 ; BG1 Horizontal Scroll
dw $1E80 ; BG2 Horizontal Scroll
dw $1EF8 ; Link X
dw $1BD9 ; Link Y
dw $00FF ; Camera X
dw $0187 ; Camera Y
dw $0000 ; Door Settings
dw $1B00 ; Relative Coords HU
dw $1A00 ; Relative Coords FU
dw $1B10 ; Relative Coords HD
dw $1B10 ; Relative Coords FD
dw $1E00 ; Relative Coords HL
dw $1E00 ; Relative Coords FL
dw $1E00 ; Relative Coords HR
dw $1F00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0200 ; Quadrant 2
db $06 ; Main Graphics
db $12 ; Music Track
db $01 ; Starting Floor
db $FF ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_squirrels_after

preset_nmg_trock_peg_puzzle:
db $01 ; Overworld
dw $0005 ; Screen Index
dw $0DE1 ; Link X
dw $0077 ; Link Y
dw $0053 ; BG1 Vertical Scroll
dw $0013 ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0D7D ; Scroll X
dw $0082 ; Scroll Y
dw $0060 ; Unknown 1
dw $000B ; Unknown 2
dw $0000 ; Unknown 3
dw sram_nmg_trock_peg_puzzle_after

preset_nmg_trock_entrance:
db $01 ; Overworld
dw $0047 ; Screen Index
dw $0F08 ; Link X
dw $013D ; Link Y
dw $00B3 ; BG1 Vertical Scroll
dw $00DB ; BG2 Vertical Scroll
dw $0E96 ; BG1 Horizontal Scroll
dw $0E96 ; BG2 Horizontal Scroll
dw $0F13 ; Scroll X
dw $014A ; Scroll Y
dw $0614 ; Unknown 1
dw $0003 ; Unknown 2
dw $000A ; Unknown 3
dw sram_nmg_trock_entrance_after

preset_nmg_trock_torches:
db $02 ; Dungeon
dw $00C6 ; Room Index
dw $180B ; BG1 Vertical Scroll
dw $180B ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0DCD ; Link X
dw $1878 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $18 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_torches_after

preset_nmg_trock_roller_room:
db $02 ; Dungeon
dw $00C7 ; Room Index
dw $1800 ; BG1 Vertical Scroll
dw $1800 ; BG2 Vertical Scroll
dw $0E00 ; BG1 Horizontal Scroll
dw $0E00 ; BG2 Horizontal Scroll
dw $0E78 ; Link X
dw $1820 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0E00 ; Relative Coords HL
dw $0E00 ; Relative Coords FL
dw $0E00 ; Relative Coords HR
dw $0F00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_roller_room_after

preset_nmg_trock_pokey_0:
db $02 ; Dungeon
dw $00C6 ; Room Index
dw $1800 ; BG1 Vertical Scroll
dw $1800 ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C78 ; Link X
dw $182B ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1800 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1810 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_pokey_0_after

preset_nmg_trock_chomps:
db $02 ; Dungeon
dw $00B6 ; Room Index
dw $1700 ; BG1 Vertical Scroll
dw $1700 ; BG2 Vertical Scroll
dw $0C00 ; BG1 Horizontal Scroll
dw $0C00 ; BG2 Horizontal Scroll
dw $0C78 ; Link X
dw $1718 ; Link Y
dw $007F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $1700 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1710 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $0C00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0C00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_chomps_after

preset_nmg_trock_pokey_1:
db $02 ; Dungeon
dw $0014 ; Room Index
dw $020B ; BG1 Vertical Scroll
dw $020B ; BG2 Vertical Scroll
dw $0880 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0819 ; Link X
dw $0278 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $18 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_pokey_1_after

preset_nmg_trock_pokeys_2:
db $02 ; Dungeon
dw $0014 ; Room Index
dw $028E ; BG1 Vertical Scroll
dw $0310 ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $03C4 ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0300 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0310 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_pokeys_2_after

preset_nmg_trock_crystal_roller:
db $02 ; Dungeon
dw $0014 ; Room Index
dw $0288 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $0880 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $022B ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_crystal_roller_after

preset_nmg_trock_dark_room:
db $02 ; Dungeon
dw $0004 ; Room Index
dw $0000 ; BG1 Vertical Scroll
dw $0000 ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $0025 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0000 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0010 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $18 ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_dark_room_after

preset_nmg_trock_laser_skip:
db $02 ; Dungeon
dw $00C5 ; Room Index
dw $1910 ; BG1 Vertical Scroll
dw $1910 ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A78 ; Link X
dw $19DE ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_laser_skip_after

preset_nmg_trock_switch_room:
db $02 ; Dungeon
dw $00C5 ; Room Index
dw $190B ; BG1 Vertical Scroll
dw $190B ; BG2 Vertical Scroll
dw $0A00 ; BG1 Horizontal Scroll
dw $0A00 ; BG2 Horizontal Scroll
dw $0A18 ; Link X
dw $1978 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $1900 ; Relative Coords HU
dw $1800 ; Relative Coords FU
dw $1910 ; Relative Coords HD
dw $1910 ; Relative Coords FD
dw $0A00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0A00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FE ; Starting Floor
db $18 ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_switch_room_after

preset_nmg_trock_trinexx:
db $02 ; Dungeon
dw $00B4 ; Room Index
dw $1600 ; BG1 Vertical Scroll
dw $1600 ; BG2 Vertical Scroll
dw $0800 ; BG1 Horizontal Scroll
dw $0800 ; BG2 Horizontal Scroll
dw $0878 ; Link X
dw $161D ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1600 ; Relative Coords HU
dw $1600 ; Relative Coords FU
dw $1610 ; Relative Coords HD
dw $1710 ; Relative Coords FD
dw $0800 ; Relative Coords HL
dw $0800 ; Relative Coords FL
dw $0800 ; Relative Coords HR
dw $0900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0D ; Main Graphics
db $16 ; Music Track
db $FD ; Starting Floor
db $18 ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_trock_trinexx_after

preset_nmg_gtower_outside_trock:
db $01 ; Overworld
dw $0047 ; Screen Index
dw $0F08 ; Link X
dw $013E ; Link Y
dw $00DD ; BG1 Vertical Scroll
dw $00E0 ; BG2 Vertical Scroll
dw $0E96 ; BG1 Horizontal Scroll
dw $0E96 ; BG2 Horizontal Scroll
dw $0F13 ; Scroll X
dw $014D ; Scroll Y
dw $0712 ; Unknown 1
dw $0000 ; Unknown 2
dw $FFFA ; Unknown 3
dw sram_nmg_gtower_outside_trock_after

preset_nmg_gtower_entrance:
db $01 ; Overworld
dw $0043 ; Screen Index
dw $08F8 ; Link X
dw $0037 ; Link Y
dw $9180 ; BG1 Vertical Scroll
dw $0000 ; BG2 Vertical Scroll
dw $087A ; BG1 Horizontal Scroll
dw $087A ; BG2 Horizontal Scroll
dw $08FF ; Scroll X
dw $006D ; Scroll Y
dw $0050 ; Unknown 1
dw $0000 ; Unknown 2
dw $0006 ; Unknown 3
dw sram_nmg_gtower_entrance_after

preset_nmg_gtower_spike_skip:
db $02 ; Dungeon
dw $008B ; Room Index
dw $100C ; BG1 Vertical Scroll
dw $100C ; BG2 Vertical Scroll
dw $1700 ; BG1 Horizontal Scroll
dw $1700 ; BG2 Horizontal Scroll
dw $1715 ; Link X
dw $1078 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1000 ; Relative Coords HU
dw $1000 ; Relative Coords FU
dw $1010 ; Relative Coords HD
dw $1110 ; Relative Coords FD
dw $1700 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1700 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_spike_skip_after

preset_nmg_gtower_pre_firesnakes_room:
db $02 ; Dungeon
dw $009B ; Room Index
dw $120B ; BG1 Vertical Scroll
dw $120B ; BG2 Vertical Scroll
dw $1600 ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $16D4 ; Link X
dw $1278 ; Link Y
dw $007F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1200 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1210 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_pre_firesnakes_room_after

preset_nmg_gtower_bombable_floor:
db $02 ; Dungeon
dw $009C ; Room Index
dw $1200 ; BG1 Vertical Scroll
dw $1200 ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $1978 ; Link X
dw $1224 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $1200 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1210 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $00 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_bombable_floor_after

preset_nmg_gtower_ice_armos:
db $02 ; Dungeon
dw $001C ; Room Index
dw $0310 ; BG1 Vertical Scroll
dw $0310 ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $199F ; Link X
dw $03A8 ; Link Y
dw $017F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0300 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0310 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $FF ; Starting Floor
db $1A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_ice_armos_after

preset_nmg_gtower_floor_2:
db $02 ; Dungeon
dw $000C ; Room Index
dw $0000 ; BG1 Vertical Scroll
dw $0000 ; BG2 Vertical Scroll
dw $1880 ; BG1 Horizontal Scroll
dw $1880 ; BG2 Horizontal Scroll
dw $18F8 ; Link X
dw $0026 ; Link Y
dw $00FF ; Camera X
dw $0077 ; Camera Y
dw $0000 ; Door Settings
dw $0000 ; Relative Coords HU
dw $0000 ; Relative Coords FU
dw $0010 ; Relative Coords HD
dw $0110 ; Relative Coords FD
dw $1800 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1800 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0202 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $01 ; Starting Floor
db $1A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_floor_2_after

preset_nmg_gtower_mimics1:
db $02 ; Dungeon
dw $006B ; Room Index
dw $0C10 ; BG1 Vertical Scroll
dw $0C10 ; BG2 Vertical Scroll
dw $1600 ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $1678 ; Link X
dw $0CCC ; Link Y
dw $007F ; Camera X
dw $0087 ; Camera Y
dw $0000 ; Door Settings
dw $0C00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0C10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $02 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_mimics1_after

preset_nmg_gtower_mimics2:
db $02 ; Dungeon
dw $006B ; Room Index
dw $0D0B ; BG1 Vertical Scroll
dw $0D0B ; BG2 Vertical Scroll
dw $1600 ; BG1 Horizontal Scroll
dw $1600 ; BG2 Horizontal Scroll
dw $16D8 ; Link X
dw $0D78 ; Link Y
dw $007F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0D00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0D10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1600 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1600 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $02 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_mimics2_after

preset_nmg_gtower_spike_room:
db $02 ; Dungeon
dw $006B ; Room Index
dw $0C00 ; BG1 Vertical Scroll
dw $0C00 ; BG2 Vertical Scroll
dw $1700 ; BG1 Horizontal Scroll
dw $1700 ; BG2 Horizontal Scroll
dw $1778 ; Link X
dw $0C1C ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0C00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0C10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1700 ; Relative Coords HL
dw $1600 ; Relative Coords FL
dw $1700 ; Relative Coords HR
dw $1700 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $02 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_spike_room_after

preset_nmg_gtower_gauntlet:
db $02 ; Dungeon
dw $005C ; Room Index
dw $0A00 ; BG1 Vertical Scroll
dw $0A00 ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $1978 ; Link X
dw $0A23 ; Link Y
dw $017F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0A00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0A10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $02 ; Starting Floor
db $1A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_gauntlet_after

preset_nmg_gtower_gauntlet_3:
db $02 ; Dungeon
dw $005D ; Room Index
dw $0A10 ; BG1 Vertical Scroll
dw $0A10 ; BG2 Vertical Scroll
dw $1A00 ; BG1 Horizontal Scroll
dw $1A00 ; BG2 Horizontal Scroll
dw $1A78 ; Link X
dw $0AE0 ; Link Y
dw $007F ; Camera X
dw $0088 ; Camera Y
dw $0000 ; Door Settings
dw $0A00 ; Relative Coords HU
dw $0A00 ; Relative Coords FU
dw $0A10 ; Relative Coords HD
dw $0B10 ; Relative Coords FD
dw $1A00 ; Relative Coords HL
dw $1A00 ; Relative Coords FL
dw $1A00 ; Relative Coords HR
dw $1B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $03 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_gauntlet_3_after

preset_nmg_gtower_lanmola2:
db $02 ; Dungeon
dw $006C ; Room Index
dw $0D0B ; BG1 Vertical Scroll
dw $0D0B ; BG2 Vertical Scroll
dw $1900 ; BG1 Horizontal Scroll
dw $1900 ; BG2 Horizontal Scroll
dw $19D5 ; Link X
dw $0D78 ; Link Y
dw $017F ; Camera X
dw $0183 ; Camera Y
dw $0000 ; Door Settings
dw $0D00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0D10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1900 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1900 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $03 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_lanmola2_after

preset_nmg_gtower_wizz1:
db $02 ; Dungeon
dw $006C ; Room Index
dw $0C00 ; BG1 Vertical Scroll
dw $0C00 ; BG2 Vertical Scroll
dw $1800 ; BG1 Horizontal Scroll
dw $1800 ; BG2 Horizontal Scroll
dw $1878 ; Link X
dw $0C26 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0C00 ; Relative Coords HU
dw $0C00 ; Relative Coords FU
dw $0C10 ; Relative Coords HD
dw $0D10 ; Relative Coords FD
dw $1800 ; Relative Coords HL
dw $1800 ; Relative Coords FL
dw $1800 ; Relative Coords HR
dw $1900 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $03 ; Starting Floor
db $1A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_wizz1_after

preset_nmg_gtower_wizz2:
db $02 ; Dungeon
dw $00A5 ; Room Index
dw $1500 ; BG1 Vertical Scroll
dw $1500 ; BG2 Vertical Scroll
dw $0B00 ; BG1 Horizontal Scroll
dw $0B00 ; BG2 Horizontal Scroll
dw $0B78 ; Link X
dw $1524 ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $1500 ; Relative Coords HU
dw $1400 ; Relative Coords FU
dw $1510 ; Relative Coords HD
dw $1510 ; Relative Coords FD
dw $0B00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0B00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $04 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_wizz2_after

preset_nmg_gtower_torches1:
db $02 ; Dungeon
dw $0095 ; Room Index
dw $120B ; BG1 Vertical Scroll
dw $120B ; BG2 Vertical Scroll
dw $0B00 ; BG1 Horizontal Scroll
dw $0B00 ; BG2 Horizontal Scroll
dw $0BD3 ; Link X
dw $1278 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $1200 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1210 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $0B00 ; Relative Coords HL
dw $0A00 ; Relative Coords FL
dw $0B00 ; Relative Coords HR
dw $0B00 ; Relative Coords FR
dw $0200 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $04 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_torches1_after

preset_nmg_gtower_torches2:
db $02 ; Dungeon
dw $0096 ; Room Index
dw $1310 ; BG1 Vertical Scroll
dw $1310 ; BG2 Vertical Scroll
dw $0D00 ; BG1 Horizontal Scroll
dw $0D00 ; BG2 Horizontal Scroll
dw $0D78 ; Link X
dw $13A2 ; Link Y
dw $017F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $1300 ; Relative Coords HU
dw $1200 ; Relative Coords FU
dw $1310 ; Relative Coords HD
dw $1310 ; Relative Coords FD
dw $0D00 ; Relative Coords HL
dw $0C00 ; Relative Coords FL
dw $0D00 ; Relative Coords HR
dw $0D00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $04 ; Starting Floor
db $1A ; Palace No
db $00 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_torches2_after

preset_nmg_gtower_helma_key:
db $02 ; Dungeon
dw $003D ; Room Index
dw $0708 ; BG1 Vertical Scroll
dw $0700 ; BG2 Vertical Scroll
dw $1B00 ; BG1 Horizontal Scroll
dw $1B00 ; BG2 Horizontal Scroll
dw $1B78 ; Link X
dw $0724 ; Link Y
dw $017F ; Camera X
dw $0178 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1B00 ; Relative Coords HL
dw $1A00 ; Relative Coords FL
dw $1B00 ; Relative Coords HR
dw $1B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0201 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $05 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_helma_key_after

preset_nmg_gtower_bombable_wall:
db $02 ; Dungeon
dw $003D ; Room Index
dw $060E ; BG1 Vertical Scroll
dw $060B ; BG2 Vertical Scroll
dw $1B00 ; BG1 Horizontal Scroll
dw $1B00 ; BG2 Horizontal Scroll
dw $1B16 ; Link X
dw $0678 ; Link Y
dw $017F ; Camera X
dw $0083 ; Camera Y
dw $0000 ; Door Settings
dw $0600 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0610 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1B00 ; Relative Coords HL
dw $1A00 ; Relative Coords FL
dw $1B00 ; Relative Coords HR
dw $1B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0001 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $05 ; Starting Floor
db $1A ; Palace No
db $02 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_bombable_wall_after

preset_nmg_gtower_moldorm_2:
db $02 ; Dungeon
dw $003D ; Room Index
dw $0708 ; BG1 Vertical Scroll
dw $0710 ; BG2 Vertical Scroll
dw $1A00 ; BG1 Horizontal Scroll
dw $1A00 ; BG2 Horizontal Scroll
dw $1A78 ; Link X
dw $07D0 ; Link Y
dw $007F ; Camera X
dw $0188 ; Camera Y
dw $0000 ; Door Settings
dw $0700 ; Relative Coords HU
dw $0600 ; Relative Coords FU
dw $0710 ; Relative Coords HD
dw $0710 ; Relative Coords FD
dw $1A00 ; Relative Coords HL
dw $1A00 ; Relative Coords FL
dw $1A00 ; Relative Coords HR
dw $1B00 ; Relative Coords FR
dw $0000 ; Quadrant 1
dw $0200 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $05 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_moldorm_2_after

preset_nmg_gtower_agahnim_2:
db $02 ; Dungeon
dw $001D ; Room Index
dw $0200 ; BG1 Vertical Scroll
dw $0200 ; BG2 Vertical Scroll
dw $1A00 ; BG1 Horizontal Scroll
dw $1A00 ; BG2 Horizontal Scroll
dw $1A78 ; Link X
dw $0226 ; Link Y
dw $007F ; Camera X
dw $0078 ; Camera Y
dw $0000 ; Door Settings
dw $0200 ; Relative Coords HU
dw $0200 ; Relative Coords FU
dw $0210 ; Relative Coords HD
dw $0310 ; Relative Coords FD
dw $1A00 ; Relative Coords HL
dw $1A00 ; Relative Coords FL
dw $1A00 ; Relative Coords HR
dw $1B00 ; Relative Coords FR
dw $0002 ; Quadrant 1
dw $0000 ; Quadrant 2
db $0E ; Main Graphics
db $16 ; Music Track
db $06 ; Starting Floor
db $1A ; Palace No
db $01 ; Door Orientation
db $00 ; Starting Background
dw sram_nmg_gtower_agahnim_2_after

preset_nmg_ganon_pyramid:
db $01 ; Overworld
dw $005B ; Screen Index
dw $07F0 ; Link X
dw $0668 ; Link Y
dw $0605 ; BG1 Vertical Scroll
dw $060A ; BG2 Vertical Scroll
dw $0778 ; BG1 Horizontal Scroll
dw $0778 ; BG2 Horizontal Scroll
dw $07F7 ; Scroll X
dw $0677 ; Scroll Y
dw $002E ; Unknown 1
dw $FFF6 ; Unknown 2
dw $FFF8 ; Unknown 3
dw sram_nmg_ganon_pyramid_after

preset_nmg_ganon_pyramid_magic:
db $01 ; Overworld
dw $005B ; Screen Index
dw $07F0 ; Link X
dw $0669 ; Link Y
dw $0605 ; BG1 Vertical Scroll
dw $060B ; BG2 Vertical Scroll
dw $0778 ; BG1 Horizontal Scroll
dw $0778 ; BG2 Horizontal Scroll
dw $07F7 ; Scroll X
dw $0678 ; Scroll Y
dw $002E ; Unknown 1
dw $FFF5 ; Unknown 2
dw $FFF8 ; Unknown 3
dw sram_nmg_ganon_pyramid_magic_after


; Preset SRAM changes

sram_nmg_esc_bed:



.after

sram_nmg_esc_courtyard:

.after

sram_nmg_esc_entrance:
%write8($7E0CC1, $00) ; Sprite drop
%write8($7E0CC3, $00) ; Sprite drop
%write8($7E0CC5, $00) ; Sprite drop
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_esc_1st_keyguard:
%write16($7E0542, $0000) ; Object tilemap state
%write8($7EF36F, $00) ; Keys
%write16($7EF0A0, $0005) ; Room $0050: Hyrule Castle (West Corridor) (..............q.)
%write16($7EF0C0, $0005) ; Room $0060: Hyrule Castle (West Entrance Room) (..............q.)
%write16($7EF002, $000C) ; Room $0001: Hyrule Castle (North Corridor) (.............qq.)
%write16($7EF0C2, $000F) ; Room $0061: Hyrule Castle (Main Entrance Room) (.............qqq)
%write8($7FE0EF, $00) ; Room $B7 persistent: Turtle Rock (Map Chest / Key Chest / Roller Room)
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E010E, $04) ; Dungeon entrance index
.after

sram_nmg_esc_stealth_room:
%write16($7E0542, $2532) ; Object tilemap state
%write16($7EF0E4, $840F) ; Room $0072: Hyrule Castle (Map Chest Room) (.d....K......qqq)
%write16($7EF104, $000F) ; Room $0082: Hyrule Castle (Basement Chasm Room) (.............qqq)
%write16($7FE064, $0001) ; Room $72 persistent: Hyrule Castle (Map Chest Room)
%write16($7E0540, $324C) ; Object tilemap state
%write16($7E0544, $2A32) ; Object tilemap state
%write8($7E0CBD, $00) ; Sprite drop
%write8($7E0CBF, $00) ; Sprite drop
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_esc_2nd_keyguard:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7EF0E2, $0002) ; Room $0071: Hyrule Castle (Boomerang Chest Room) (...............q)
%write16($7EF102, $000F) ; Room $0081: Hyrule Castle (.............qqq)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0CBB, $01) ; Sprite drop
%write16($7FE062, $0001) ; Room $71 persistent: Hyrule Castle (Boomerang Chest Room)
%write8($7E002F, $06) ; Link's direction
%write8($7E0FC7, $01) ; Prize pack index
.after

sram_nmg_esc_ball_n_chains:
%write16($7EF0E0, $0008) ; Room $0070: Hyrule Castle (Small Corridor to Jail Cells) (.............q..)
%write8($7EF341, $01) ; Boomerang
%write16($7EF0E2, $841B) ; Room $0071: Hyrule Castle (Boomerang Chest Room) (.d....K.....qq.q)
%write8($7E0303, $02) ; Selected menu item
%write16($7FE064, $0000) ; Room $72 persistent: Hyrule Castle (Map Chest Room)
%write16($7E0468, $0001) ; Trap door state
%write8($7E0202, $02) ; Selected menu item
%write8($7E0CBB, $00) ; Sprite drop
%write16($7FE062, $0003) ; Room $71 persistent: Hyrule Castle (Boomerang Chest Room)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_esc_backtracking:
%write16($7E0542, $0434) ; Object tilemap state
%write8($7EF3D3, $00) ; Super Bomb Boom
%write16($7EF3FF, $0000) ; Deaths
%write16($7EF100, $043C) ; Room $0080: Hyrule Castle (Jail Cell Room) (......K....cqqq.)
%write8($7EF3C8, $02) ; Entrances Phase
%write8($7EF3CC, $01) ; Tagalong
%write16($7EF3E5, $0000) ; Validity (checksum)
%write8($7EF34A, $01) ; Torch
%write16($7EF366, $4000) ; BigKey1
%write16($7FE080, $0004) ; Room $80 persistent: Hyrule Castle (Jail Cell Room)
%write16($7E0540, $0430) ; Object tilemap state
%write16($7E0544, $0438) ; Object tilemap state
.after

sram_nmg_esc_keyguard_revisited:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7FE062, $0000) ; Room $71 persistent: Hyrule Castle (Boomerang Chest Room)
%write8($7E0CBA, $01) ; Sprite drop
.after

sram_nmg_esc_throne_room:
%write16($7EF0A2, $000F) ; Room $0051: Hyrule Castle (Throne Room) (.............qqq)
%write16($7FE080, $0000) ; Room $80 persistent: Hyrule Castle (Jail Cell Room)
%write8($7E0CBA, $00) ; Sprite drop
.after

sram_nmg_esc_snake_avoidance_room:
%write16($7E0542, $0F34) ; Object tilemap state
%write16($7E0546, $1694) ; Object tilemap state
%write16($7E054A, $0E70) ; Object tilemap state
%write8($7EF3C8, $04) ; Entrances Phase
%write16($7EF082, $000F) ; Room $0041: Hyrule Castle (First Dark Room) (.............qqq)
%write16($7E0540, $0A64) ; Object tilemap state
%write16($7E0544, $1034) ; Object tilemap state
%write16($7E0548, $053E) ; Object tilemap state
%write16($7E054C, $1590) ; Object tilemap state
.after

sram_nmg_esc_water_rooms:
%write16($7E0542, $0B8A) ; Object tilemap state
%write16($7E0546, $0FF2) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7EF064, $801F) ; Room $0032: Hyrule Castle (Sewer Key Chest Room) (.d..........qqqq)
%write16($7EF084, $000C) ; Room $0042: Hyrule Castle (6 Ropes Room) (.............qq.)
%write16($7E0540, $0D1C) ; Object tilemap state
%write16($7E0544, $0BF2) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
.after

sram_nmg_esc_keyrat:
%write16($7E0542, $1C64) ; Object tilemap state
%write16($7E0546, $18A8) ; Object tilemap state
%write16($7E054A, $1C30) ; Object tilemap state
%write16($7E054E, $0CEA) ; Object tilemap state
%write16($7E0552, $1C8A) ; Object tilemap state
%write16($7EF044, $8003) ; Room $0022: Hyrule Castle (Sewer Text Trigger Room) (.d.............q)
%write16($7EF042, $0003) ; Room $0021: Hyrule Castle (Key-rat Room) (...............q)
%write16($7E0540, $14A0) ; Object tilemap state
%write16($7E0544, $1C68) ; Object tilemap state
%write16($7E0548, $1C52) ; Object tilemap state
%write16($7E054C, $0C92) ; Object tilemap state
%write16($7E0550, $138A) ; Object tilemap state
%write8($7E0CBA, $01) ; Sprite drop
.after

sram_nmg_esc_last_two_screens:
%write16($7E0542, $0F98) ; Object tilemap state
%write16($7E0546, $1390) ; Object tilemap state
%write16($7E054A, $13A0) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7EF022, $2005) ; Room $0011: Hyrule Castle (Bombable Stock Room) (...d..........q.)
%write16($7EF042, $840F) ; Room $0021: Hyrule Castle (Key-rat Room) (.d....K......qqq)
%write16($7E0540, $0F90) ; Object tilemap state
%write16($7E0544, $0FA0) ; Object tilemap state
%write16($7E0548, $1398) ; Object tilemap state
%write16($7E054C, $455E) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7FDFC2, $0001) ; Room $21 persistent: Hyrule Castle (Key-rat Room)
%write8($7E0CBA, $00) ; Sprite drop
.after

sram_nmg_east_before_cutscene:
%write16($7E0542, $2850) ; Object tilemap state
%write16($7E0546, $2A2C) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write8($7E0642, $01) ; Room puzzle state (?)
%write8($7E0B09, $B0) ; Arc variable
%write8($7E0B31, $00) ; Arc variable
%write8($7E0B35, $00) ; Arc variable
%write8($7E0B39, $00) ; Arc variable
%write8($7E0B3D, $00) ; Arc variable
%write8($7E0FC8, $02) ; Prize pack index
%write16($7EF004, $000F) ; Room $0002: Hyrule Castle (Switch Room) (.............qqq)
%write16($7FDF84, $000A) ; Room $2 persistent: Hyrule Castle (Switch Room)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $2650) ; Object tilemap state
%write16($7E0544, $282C) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write8($7E0B3B, $00) ; Arc variable
%write8($7E0B3F, $00) ; Arc variable
%write8($7E0B0C, $A0) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_east_after_cutscene:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7E0642, $00) ; Room puzzle state (?)
%write8($7EF29B, $20) ; Overworld $1B: Unknown (...?....)
%write8($7EF3C7, $01) ; Map Phase
%write16($7EF3E3, $0000) ; Player name
%write16($7EF024, $000F) ; Room $0012: Sanctuary (.............qqq)
%write8($7EF3C8, $01) ; Entrances Phase
%write8($7EF3CC, $00) ; Tagalong
%write8($7EF3C5, $02) ; Game Phase 1
%write8($7EF3C6, $15) ; Game Phase 2
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
.after

sram_nmg_east_octoroc:
%write8($7EF36F, $FF) ; Keys
%write8($7FE14B, $47) ; Overworld $E5 persistent: UNKNOWN
%write8($7FE17B, $47) ; Overworld $FD persistent: UNKNOWN
%write8($7FDF84, $00) ; Overworld $2 persistent: Northeast House
%write8($7FDFC2, $00) ; Overworld $21 persistent: UNKNOWN
%write16($7EC172, $0006) ; Crystal switch state
%write8($7FDFEB, $AD) ; Overworld $35 persistent: Lake Hylia
%write8($7FE057, $42) ; Overworld $6B persistent: Outside Haunted Grove
.after

sram_nmg_east_outside_palace:
%write8($7FE14B, $00) ; Overworld $E5 persistent: UNKNOWN
%write8($7FE167, $42) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE17B, $00) ; Overworld $FD persistent: UNKNOWN
%write8($7FE04E, $42) ; Overworld $67 persistent: UNKNOWN
%write16($7EC172, $0000) ; Crystal switch state
%write8($7FDFEB, $00) ; Overworld $35 persistent: Lake Hylia
%write8($7FE057, $00) ; Overworld $6B persistent: Outside Haunted Grove
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_east_entrance:
%write8($7E0FC8, $03) ; Prize pack index
%write8($7FE103, $52) ; Overworld $C1 persistent: UNKNOWN
%write8($7FE167, $00) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE04E, $00) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $52) ; Overworld $77 persistent: Black Ice Cave
.after

sram_nmg_east_stalfos_room:
%write16($7E0542, $13B2) ; Object tilemap state
%write16($7E0546, $1CB2) ; Object tilemap state
%write16($7E054A, $36E0) ; Object tilemap state
%write8($7EF36F, $00) ; Keys
%write16($7EF150, $0005) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (..............q.)
%write16($7EF152, $000F) ; Room $00A9: Eastern Palace (Big Chest Room) (.............qqq)
%write16($7EF172, $000F) ; Room $00B9: Eastern Palace (Lobby Cannonballs Room) (.............qqq)
%write16($7EF192, $000F) ; Room $00C9: Eastern Palace (Entrance Room) (.............qqq)
%write8($7FE103, $00) ; Room $C1 persistent: Misery Mire (Compass Chest / Tile Room)
%write16($7E0540, $138A) ; Object tilemap state
%write16($7E0544, $1C8A) ; Object tilemap state
%write16($7E0548, $181E) ; Object tilemap state
%write8($7FE06E, $00) ; Room $77 persistent: Tower of Hera (Entrance Room)
%write8($7E0B0C, $20) ; Arc variable
%write8($7E002F, $04) ; Link's direction
%write8($7E010E, $08) ; Dungeon entrance index
.after

sram_nmg_east_big_chest_room_1:
%write8($7EF373, $00) ; Magic filler
%write8($7E0FCC, $01) ; Prize pack index
%write16($7EF150, $000F) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (.............qqq)
%write8($7EF36E, $10) ; Magic Power
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_east_dark_key_room:
%write16($7E0542, $0A4C) ; Object tilemap state
%write16($7E0546, $045E) ; Object tilemap state
%write16($7E054A, $0864) ; Object tilemap state
%write16($7E054E, $0A70) ; Object tilemap state
%write16($7EF154, $000A) ; Room $00AA: Eastern Palace (Map Chest Room) (.............q.q)
%write16($7EF174, $0008) ; Room $00BA: Eastern Palace (Dark Antifairy / Key Pot Room) (.............q..)
%write8($7E0468, $00) ; Trap door state
%write16($7E0540, $064C) ; Object tilemap state
%write16($7E0544, $0858) ; Object tilemap state
%write16($7E0548, $0C5E) ; Object tilemap state
%write16($7E054C, $0670) ; Object tilemap state
.after

sram_nmg_east_big_key_dmg_boost:
%write16($7E0542, $1260) ; Object tilemap state
%write16($7E0546, $126C) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0FC8, $05) ; Prize pack index
%write16($7EF174, $840C) ; Room $00BA: Eastern Palace (Dark Antifairy / Key Pot Room) (.d....K......qq.)
%write16($7EF360, $0015) ; Rupees (goal)
%write16($7EF172, $800F) ; Room $00B9: Eastern Palace (Lobby Cannonballs Room) (.d...........qqq)
%write16($7EF362, $0015) ; Rupees (actual)
%write16($7FE0F4, $0050) ; Room $BA persistent: Eastern Palace (Dark Antifairy / Key Pot Room)
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $125C) ; Object tilemap state
%write16($7E0544, $1268) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0B37, $FF) ; Arc variable
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_east_big_chest_room_2:
%write16($7E0542, $13B2) ; Object tilemap state
%write16($7E0546, $1CB2) ; Object tilemap state
%write16($7E054A, $35E0) ; Object tilemap state
%write16($7EF150, $200F) ; Room $00A8: Eastern Palace (Stalfos Spawn Room) (...d.........qqq)
%write16($7EF170, $8015) ; Room $00B8: Eastern Palace (Big Key Room) (.d..........q.q.)
%write8($7EF36D, $0C) ; Health (actual)
%write16($7EF366, $6000) ; BigKey1
%write16($7E0540, $138A) ; Object tilemap state
%write16($7E0544, $1C8A) ; Object tilemap state
%write16($7E0548, $181E) ; Object tilemap state
%write8($7E0B37, $00) ; Arc variable
%write16($7E0641, $0001) ; Room puzzle state (?)
%write8($7E002F, $06) ; Link's direction
; Manual changes:
%write16($7E0CFB, $041D) ; Rupee pull kill and damage counters
.after

sram_nmg_east_gwg:
%write16($7E0542, $1370) ; Object tilemap state
%write16($7E0546, $1410) ; Object tilemap state
%write16($7E054A, $2C90) ; Object tilemap state
%write16($7E054E, $2CEC) ; Object tilemap state
%write8($7EF377, $0A) ; Arrows
%write8($7EF340, $02) ; Bow
%write16($7EF152, $201F) ; Room $00A9: Eastern Palace (Big Chest Room) (...d........qqqq)
%write16($7FE0F4, $0000) ; Room $BA persistent: Eastern Palace (Dark Antifairy / Key Pot Room)
%write16($7E0540, $146C) ; Object tilemap state
%write16($7E0544, $130C) ; Object tilemap state
%write16($7E0548, $2B90) ; Object tilemap state
%write16($7E054C, $2BEC) ; Object tilemap state
%write8($7E0641, $00) ; Room puzzle state (?)
%write8($7E002F, $00) ; Link's direction
; Manual changes:
%write8($7E0303, $03) ; Selected menu item
%write8($7E0202, $01) ; Selected menu item
.after

sram_nmg_east_pot_room:
%write16($7E0542, $1454) ; Object tilemap state
%write16($7E0546, $1CAA) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0FC8, $00) ; Prize pack index
%write16($7EF360, $001B) ; Rupees (goal)
%write16($7EF132, $C403) ; Room $0099: Eastern Palace (Eyegore Key Room) (.dd...K........q)
%write16($7EF362, $001B) ; Rupees (actual)
%write8($7EF36E, $20) ; Magic Power
%write16($7E0540, $1428) ; Object tilemap state
%write16($7E0544, $13BE) ; Object tilemap state
%write16($7E0548, $1CD2) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7FE0B2, $00D8) ; Room $99 persistent: Eastern Palace (Eyegore Key Room)
.after

sram_nmg_east_zeldagamer_room:
%write16($7E0542, $1C5C) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF377, $14) ; Arrows
%write16($7EF1B4, $0002) ; Room $00DA: Eastern Palace (...............q)
%write16($7EF1B2, $0003) ; Room $00D9: Eastern Palace (Canonball Room) (...............q)
%write8($7E0468, $00) ; Trap door state
%write16($7E0540, $145C) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_east_armos:
%write16($7E0542, $0ACA) ; Object tilemap state
%write16($7E0546, $0AF2) ; Object tilemap state
%write16($7E054A, $08F2) ; Object tilemap state
%write16($7E054E, $1860) ; Object tilemap state
%write8($7EF34F, $00) ; Bottles
%write8($7EF377, $12) ; Arrows
%write8($7E0FC8, $02) ; Prize pack index
%write16($7EF1B0, $0005) ; Room $00D8: Eastern Palace (Zeldagamer Room / Pre-Armos Knights Room) (..............q.)
%write16($7EF360, $001C) ; Rupees (goal)
%write16($7EF362, $001C) ; Rupees (actual)
%write8($7E0303, $03) ; Selected menu item
%write16($7E0540, $08CA) ; Object tilemap state
%write16($7E0544, $0CCA) ; Object tilemap state
%write16($7E0548, $0CF2) ; Object tilemap state
%write16($7E054C, $185C) ; Object tilemap state
%write8($7E0202, $01) ; Selected menu item
%write8($7E002F, $00) ; Link's direction
%write16($7FE130, $07FF) ; Room $D8 persistent: Eastern Palace (Zeldagamer Room / Pre-Armos Knights Room)
.after

sram_nmg_desert_outside_eastern_palace:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0B09, $00) ; Arc variable
%write8($7E0B31, $30) ; Arc variable
%write8($7E0B35, $30) ; Arc variable
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $00) ; Arrows
%write16($7EF3E7, $0000) ; Deaths
%write16($7EF190, $0801) ; Room $00C8: Eastern Palace (Armos Knights[Boss]) (.....k..........)
%write8($7E0B32, $30) ; Arc variable
%write8($7EF340, $01) ; Bow
%write8($7EF36C, $20) ; Health (goal)
%write8($7EF374, $04) ; Pendants
%write8($7EF36D, $20) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%write8($7FE103, $52) ; Overworld $C1 persistent: UNKNOWN
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E02A1, $17) ; Arc variable
%write8($7E0B33, $30) ; Arc variable
%write8($7E0B37, $BF) ; Arc variable
%write8($7FE06E, $52) ; Overworld $77 persistent: Black Ice Cave
%write8($7FE0B2, $00) ; Overworld $99 persistent: UNKNOWN
%write8($7E0B08, $40) ; Arc variable
%write8($7E0B30, $30) ; Arc variable
%write8($7E0B34, $30) ; Arc variable
%write8($7E002F, $02) ; Link's direction
%write8($7FE130, $00) ; Overworld $D8 persistent: UNKNOWN
.after

sram_nmg_desert_ep_spinspeed:
%write16($7E0542, $1520) ; Object tilemap state
%write8($7EF3C7, $03) ; Map Phase
%write8($7EF355, $01) ; Boots
%write8($7EF379, $FC) ; Ability Flags
%write16($7EF20A, $0002) ; Room $0105: Unknown (...............q)
%write8($7FE103, $00) ; Room $C1 persistent: Misery Mire (Compass Chest / Tile Room)
%write8($7EC167, $05) ; Underworld exit cache
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
%write8($7EC165, $20) ; Underworld exit cache
%write8($7FE06E, $00) ; Room $77 persistent: Tower of Hera (Entrance Room)
%write16($7EC142, $0016) ; Underworld exit cache
%write16($7EC146, $0C76) ; Underworld exit cache
%write16($7EC14A, $0CF0) ; Underworld exit cache
%write16($7EC14E, $0710) ; Underworld exit cache
%write16($7EC152, $0CFB) ; Underworld exit cache
%write16($7EC156, $091E) ; Underworld exit cache
%write16($7EC15A, $0F00) ; Underworld exit cache
%write16($7EC15E, $0A00) ; Underworld exit cache
%write16($7EC162, $1000) ; Underworld exit cache
%write8($7EC166, $25) ; Underworld exit cache
%write16($7EC16A, $0009) ; Underworld exit cache
%write16($7EC16E, $000A) ; Underworld exit cache
%write8($7E010E, $45) ; Dungeon entrance index
.after

sram_nmg_desert_bridge_screen:
%write8($7FE167, $42) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE04E, $42) ; Overworld $67 persistent: UNKNOWN
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_desert_unholy_spinspeed:
%write8($7FE167, $00) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE07C, $A0) ; Overworld $7E persistent: UNKNOWN
%write8($7FE019, $1E) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $A1) ; Overworld $76 persistent: UNKNOWN
%write8($7FE161, $A1) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE04E, $9F) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $2F) ; Overworld $77 persistent: Black Ice Cave
%write16($7EC172, $0900) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_desert_water_dash:
%write16($7E0542, $17DE) ; Object tilemap state
%write16($7E0546, $19D6) ; Object tilemap state
%write16($7E054A, $19E6) ; Object tilemap state
%write16($7E054E, $1BE6) ; Object tilemap state
%write16($7EF20E, $F002) ; Room $0107: Unknown (.dddb..........q)
%write8($7EF34E, $01) ; Book of Mudora
%write8($7FE07C, $00) ; Overworld $7E persistent: UNKNOWN
%write8($7FE019, $00) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $00) ; Overworld $76 persistent: UNKNOWN
%write16($7E0540, $17D6) ; Object tilemap state
%write16($7E0544, $17E6) ; Object tilemap state
%write16($7E0548, $19DE) ; Object tilemap state
%write16($7E054C, $1BD6) ; Object tilemap state
%write8($7FE161, $00) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE04E, $00) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $00) ; Overworld $77 persistent: Black Ice Cave
%write8($7E002F, $02) ; Link's direction
%write8($7E010E, $49) ; Dungeon entrance index
.after

sram_nmg_desert_outside_desert_palace:
%write8($7FE168, $3F) ; Overworld $F4 persistent: UNKNOWN
%write8($7FE01E, $01) ; Overworld $4F persistent: Mysterious Pond
%write16($7EC172, $05A0) ; Crystal switch state
%write8($7FE02B, $3F) ; Overworld $55 persistent: Dark Waterway
%write8($7FE0D7, $3A) ; Overworld $AB persistent: UNKNOWN
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_desert_desert_entrance:
%write8($7E0303, $0C) ; Selected menu item
%write8($7FE168, $00) ; Overworld $F4 persistent: UNKNOWN
%write8($7E0202, $0F) ; Selected menu item
%write8($7FE01E, $00) ; Overworld $4F persistent: Mysterious Pond
%write8($7FE02B, $00) ; Overworld $55 persistent: Dark Waterway
%write8($7FE0D7, $00) ; Overworld $AB persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $09) ; Dungeon entrance index
.after

sram_nmg_desert_keybonk:
%write16($7E0542, $159E) ; Object tilemap state
%write16($7E0546, $1890) ; Object tilemap state
%write16($7E054A, $1B9A) ; Object tilemap state
%write16($7E054E, $1A24) ; Object tilemap state
%write16($7E0552, $1724) ; Object tilemap state
%write16($7E0556, $0CB2) ; Object tilemap state
%write8($7EF36F, $00) ; Keys
%write8($7EF377, $05) ; Arrows
%write16($7EF0E8, $0003) ; Room $0074: Desert Palace (Map Chest Room) (...............q)
%write16($7EF108, $000F) ; Room $0084: Desert Palace (Main Entrance Room) (.............qqq)
%write8($7EF340, $02) ; Bow
%write16($7EF0E6, $0001) ; Room $0073: Desert Palace (Big Chest Room) (................)
%write16($7FE068, $0001) ; Room $74 persistent: Desert Palace (Map Chest Room)
%write16($7E0540, $159A) ; Object tilemap state
%write16($7E0544, $1714) ; Object tilemap state
%write16($7E0548, $1A14) ; Object tilemap state
%write16($7E054C, $1B9E) ; Object tilemap state
%write16($7E0550, $18A8) ; Object tilemap state
%write16($7E0554, $0C8A) ; Object tilemap state
%write16($7EC172, $0000) ; Crystal switch state
.after

sram_nmg_desert_pre_cannonball_room:
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7EF0E6, $0405) ; Room $0073: Desert Palace (Big Chest Room) (......K.......q.)
%write16($7EF0EA, $0002) ; Room $0075: Desert Palace (Big Key Chest Room) (...............q)
%write16($7EF10A, $400A) ; Room $0085: Desert Palace (East Entrance Room) (..d..........q.q)
%write16($7E0540, $1C2C) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_desert_pot_room:
%write16($7E0542, $159E) ; Object tilemap state
%write16($7E0546, $1890) ; Object tilemap state
%write16($7E054A, $1B9A) ; Object tilemap state
%write16($7E054E, $1A24) ; Object tilemap state
%write16($7E0552, $1724) ; Object tilemap state
%write16($7E0556, $0CB2) ; Object tilemap state
%write8($7EF377, $0A) ; Arrows
%write8($7E0FC8, $03) ; Prize pack index
%write16($7EF0EA, $0017) ; Room $0075: Desert Palace (Big Key Chest Room) (............q.qq)
%write16($7EF10A, $400E) ; Room $0085: Desert Palace (East Entrance Room) (..d..........qqq)
%write16($7EF366, $7000) ; BigKey1
%write16($7E0540, $159A) ; Object tilemap state
%write16($7E0544, $1714) ; Object tilemap state
%write16($7E0548, $1A14) ; Object tilemap state
%write16($7E054C, $1B9E) ; Object tilemap state
%write16($7E0550, $18A8) ; Object tilemap state
%write16($7E0554, $0C8A) ; Object tilemap state
%write16($7FE08A, $001C) ; Room $85 persistent: Desert Palace (East Entrance Room)
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_desert_desert2_spinspeed:
%write16($7E0542, $0450) ; Object tilemap state
%write16($7E0546, $1C50) ; Object tilemap state
%write16($7E054A, $1914) ; Object tilemap state
%write16($7E054E, $1928) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7EF377, $14) ; Arrows
%write8($7EF354, $01) ; Gloves
%write16($7EF0E6, $041F) ; Room $0073: Desert Palace (Big Chest Room) (......K.....qqqq)
%write16($7EF106, $0007) ; Room $0083: Desert Palace (West Entrance Room) (..............qq)
%write16($7FE068, $0000) ; Room $74 persistent: Desert Palace (Map Chest Room)
%write16($7E0540, $044C) ; Object tilemap state
%write16($7E0544, $1C4C) ; Object tilemap state
%write16($7E0548, $1514) ; Object tilemap state
%write16($7E054C, $191E) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_desert_popo_genocide_room:
%write16($7E0542, $0B60) ; Object tilemap state
%write16($7E0546, $0B68) ; Object tilemap state
%write16($7E054A, $1368) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7EF37F, $00) ; Key for dungeon $03
%write16($7EF0A6, $0008) ; Room $0053: Desert Palace (Popos 2 / Beamos Hellway Room) (.............q..)
%write16($7EF0C6, $840A) ; Room $0063: Desert Palace (Final Section Entrance Room) (.d....K......q.q)
%write16($7E0540, $0B5C) ; Object tilemap state
%write16($7E0544, $0B64) ; Object tilemap state
%write16($7E0548, $08E2) ; Object tilemap state
%write16($7E054C, $1864) ; Object tilemap state
%write8($7E0B37, $9D) ; Arc variable
%write8($7FE08A, $00) ; Room $85 persistent: Desert Palace (East Entrance Room)
%write8($7E010E, $0C) ; Dungeon entrance index
.after

sram_nmg_desert_torches:
%write16($7E0542, $044E) ; Object tilemap state
%write16($7E0546, $094E) ; Object tilemap state
%write16($7E054A, $1470) ; Object tilemap state
%write16($7E054E, $1C70) ; Object tilemap state
%write16($7E0552, $03B6) ; Object tilemap state
%write16($7E0556, $09B6) ; Object tilemap state
%write8($7E0FC8, $04) ; Prize pack index
%write16($7EF086, $6401) ; Room $0043: Desert Palace (Torch Puzzle / Moving Wall Room) (..dd..K.........)
%write16($7EF0A6, $240F) ; Room $0053: Desert Palace (Popos 2 / Beamos Hellway Room) (...d..K......qqq)
%write8($7E0303, $09) ; Selected menu item
%write16($7E0540, $0442) ; Object tilemap state
%write16($7E0544, $0942) ; Object tilemap state
%write16($7E0548, $144C) ; Object tilemap state
%write16($7E054C, $1C4C) ; Object tilemap state
%write16($7E0550, $03AA) ; Object tilemap state
%write16($7E0554, $09AA) ; Object tilemap state
%write8($7E0202, $0B) ; Selected menu item
%write8($7E0B37, $A8) ; Arc variable
%write16($7FE026, $06E0) ; Room $53 persistent: Desert Palace (Popos 2 / Beamos Hellway Room)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_desert_lanmolas:
%write16($7E0552, $83B6) ; Object tilemap state
%write16($7E0556, $89B6) ; Object tilemap state
%write8($7EF377, $19) ; Arrows
%write16($7EF086, $E48D) ; Room $0043: Desert Palace (Torch Puzzle / Moving Wall Room) (.ddd..K..c...qq.)
%write8($7EF36E, $70) ; Magic Power
%write16($7E0550, $83AA) ; Object tilemap state
%write16($7E0554, $89AA) ; Object tilemap state
%write8($7E0B37, $96) ; Arc variable
.after

sram_nmg_hera_outside_desert_palace:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $0C) ; Arrows
%write8($7EF36C, $28) ; Health (goal)
%write8($7EF374, $06) ; Pendants
%write8($7EF36D, $28) ; Health (actual)
%write16($7EF3E9, $0000) ; Deaths
%write16($7EF066, $0802) ; Room $0033: Desert Palace (Lanmolas[Boss]) (.....k.........q)
%write8($7EF36E, $80) ; Magic Power
%write8($7E0303, $03) ; Selected menu item
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E0202, $01) ; Selected menu item
%write8($7FE026, $00) ; Overworld $53 persistent: Dark Sanctuary
%write8($7E02A2, $17) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_hera_fake_flippers:
%write8($7FE048, $48) ; Overworld $64 persistent: UNKNOWN
%write8($7FE174, $09) ; Overworld $FA persistent: UNKNOWN
%write8($7FE07E, $01) ; Overworld $7F persistent: Dark Waterfall
%write16($7EC172, $0800) ; Crystal switch state
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_hera_dm:
%write8($7EF377, $0B) ; Arrows
%write16($7EF1E0, $000F) ; Room $00F0: Cave (Lost Old Man Starting Cave) (.............qqq)
%write8($7EF3C8, $05) ; Entrances Phase
%write8($7EF3CC, $04) ; Tagalong
%write16($7EF1E2, $000F) ; Room $00F1: Cave (Lost Old Man Starting Cave) (.............qqq)
%write8($7FE048, $00) ; Room $64 persistent: Thieves Town (West Attic Room)
%write8($7FE174, $00) ; Room $FA persistent: Cave
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0540) ; Object tilemap state
%write8($7E0FC9, $01) ; Prize pack index
%write8($7FE07E, $00) ; Room $7F persistent: Ice Palace ( Big Spike Traps Room)
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E002F, $02) ; Link's direction
%write8($7E010E, $06) ; Dungeon entrance index
.after

sram_nmg_hera_after_mirror:
%write8($7EF353, $02) ; Magic Mirror
%write8($7EF3C8, $01) ; Entrances Phase
%write8($7EF3CC, $00) ; Tagalong
%write8($7E0B37, $00) ; Arc variable
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_hera_quickhop:
%write8($7E1ABF, $1C) ; Warp Vortex Coordinate
%write8($7E1ACF, $08) ; Warp Vortex Coordinate
%write8($7E1ADF, $38) ; Warp Vortex Coordinate
%write8($7E1AEF, $01) ; Warp Vortex Coordinate
%write8($7E0303, $14) ; Selected menu item
%write8($7E0202, $14) ; Selected menu item
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_hera_entrance:
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_hera_tile_room:
%write16($7EF36F, $0000) ; Keys
%write16($7EF0EE, $800F) ; Room $0077: Tower of Hera (Entrance Room) (.d...........qqq)
%write16($7EF10E, $0402) ; Room $0087: Tower of Hera (Tile Room) (......K........q)
%write8($7EF386, $01) ; Key for dungeon $0A
%write8($7E0303, $02) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write8($7E0202, $02) ; Selected menu item
%write8($7FDFCB, $00) ; Room $25 persistent: Empty Clone Room
%write8($7E02A2, $00) ; Arc variable
%write8($7E010E, $33) ; Dungeon entrance index
.after

sram_nmg_hera_torches:
%write16($7E0542, $0B10) ; Object tilemap state
%write16($7E0546, $0C18) ; Object tilemap state
%write16($7E054A, $0C28) ; Object tilemap state
%write16($7E054E, $1470) ; Object tilemap state
%write16($7E0552, $186C) ; Object tilemap state
%write16($7E0556, $1B6C) ; Object tilemap state
%write16($7EF10E, $040E) ; Room $0087: Tower of Hera (Tile Room) (......K......qqq)
%write16($7E0540, $0B0C) ; Object tilemap state
%write16($7E0544, $0C10) ; Object tilemap state
%write16($7E0548, $0C20) ; Object tilemap state
%write16($7E054C, $144C) ; Object tilemap state
%write16($7E0550, $1850) ; Object tilemap state
%write16($7E0554, $1B50) ; Object tilemap state
%write8($7E0B37, $80) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_hera_beetles:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7EF10E, $041F) ; Room $0087: Tower of Hera (Tile Room) (......K.....qqqq)
%write16($7EF366, $7020) ; BigKey1
%write8($7EF36E, $70) ; Magic Power
%write8($7EF386, $00) ; Key for dungeon $0A
%write8($7E0303, $14) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E02A1, $00) ; Arc variable
%write8($7E0202, $14) ; Selected menu item
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_hera_petting_zoo:
%write16($7E0542, $1C60) ; Object tilemap state
%write8($7EF343, $01) ; Bombs
%write8($7E0FCC, $02) ; Prize pack index
%write8($7EF375, $00) ; Bomb filler
%write16($7EF062, $800F) ; Room $0031: Tower of Hera (Hardhat Beetles Room) (.d...........qqq)
%write16($7E0540, $1C5C) ; Object tilemap state
%write16($7FDFE2, $0580) ; Room $31 persistent: Tower of Hera (Hardhat Beetles Room)
%write8($7EC172, $01) ; Crystal switch state
.after

sram_nmg_hera_moldorm:
%write16($7E0542, $0E64) ; Object tilemap state
%write16($7E0546, $1064) ; Object tilemap state
%write16($7E054A, $1264) ; Object tilemap state
%write16($7E054E, $0E68) ; Object tilemap state
%write16($7E0552, $1068) ; Object tilemap state
%write16($7E0556, $1268) ; Object tilemap state
%write8($7EF357, $01) ; Moon Pearl
%write8($7E0FC8, $05) ; Prize pack index
%write8($7EF36D, $20) ; Health (actual)
%write16($7EF02E, $000F) ; Room $0017: Tower of Hera (Moldorm Fall Room) (.............qqq)
%write16($7EF04E, $001F) ; Room $0027: Tower of Hera (Big Chest) (............qqqq)
%write8($7E029F, $19) ; Arc variable
%write8($7E0303, $03) ; Selected menu item
%write16($7E0540, $0D64) ; Object tilemap state
%write16($7E0544, $0F64) ; Object tilemap state
%write16($7E0548, $1164) ; Object tilemap state
%write16($7E054C, $0D68) ; Object tilemap state
%write16($7E0550, $0F68) ; Object tilemap state
%write16($7E0554, $1168) ; Object tilemap state
%write8($7E0202, $01) ; Selected menu item
%write16($7FDFCE, $0024) ; Room $27 persistent: Tower of Hera (Big Chest)
.after

sram_nmg_aga_outside_hera:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $04) ; Map Phase
%write16($7EF3F7, $0000) ; Deaths
%write8($7EF36C, $30) ; Health (goal)
%write8($7EF374, $07) ; Pendants
%write8($7EF36D, $30) ; Health (actual)
%write16($7EF00E, $080F) ; Room $0007: Tower of Hera (Moldorm[Boss]) (.....k.......qqq)
%write8($7EF36E, $80) ; Magic Power
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write8($7FDFCE, $00) ; Overworld $27 persistent: UNKNOWN
%write8($7FDFE2, $00) ; Overworld $31 persistent: UNKNOWN
%write8($7E02A2, $17) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_aga_first_rupee_tree:
%write16($7E0542, $1058) ; Object tilemap state
%write16($7E0546, $1838) ; Object tilemap state
%write16($7EF1CC, $000F) ; Room $00E6: Cave (.............qqq)
%write16($7EF1CE, $000F) ; Room $00E7: Cave (.............qqq)
%write16($7E0540, $0C6C) ; Object tilemap state
%write16($7E0544, $1448) ; Object tilemap state
%write8($7FDFCB, $00) ; Room $25 persistent: Empty Clone Room
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E010E, $2F) ; Dungeon entrance index
%write16($7FE14E, $0008) ; Room $E7 persistent: Cave
.after

sram_nmg_aga_lost_woods:
%write8($7EF377, $0A) ; Arrows
%write16($7EF360, $0026) ; Rupees (goal)
%write16($7EF362, $0026) ; Rupees (actual)
%write16($7EC172, $0900) ; Crystal switch state
%write8($7E002F, $04) ; Link's direction
%write8($7FE14E, $00) ; Overworld $E7 persistent: UNKNOWN
; Manual changes:
%write16($7E0CFB, $0001) ; Rupee pull kill and damage counters
.after

sram_nmg_aga_after_grove:
%write8($7EF3C7, $05) ; Map Phase
%write8($7EF300, $40) ; Overworld $80: Unknown (..?.....)
%write8($7EF359, $02) ; Sword
%write8($7FE1E8, $E9) ; Overworld $134 persistent: UNKNOWN
%write8($7E002F, $02) ; Link's direction
%write8($7FE132, $01) ; Overworld $D9 persistent: UNKNOWN
; Manual changes:
%write16($7E0CFB, $0003) ; Rupee pull kill and damage counters
.after

sram_nmg_aga_after_lost_woods:
%write8($7EF3C7, $05) ; Map Phase
%write8($7EF300, $40) ; Overworld $80: Unknown (..?.....)
%write16($7EF360, $0076) ; Rupees (goal)
%write8($7EF359, $02) ; Sword
%write16($7EF362, $0076) ; Rupees (actual)
%write8($7FE1E8, $E9) ; Overworld $134 persistent: UNKNOWN
%write8($7E002F, $02) ; Link's direction
%write8($7FE132, $01) ; Overworld $D9 persistent: UNKNOWN
; Manual changes:
%write16($7E0CFB, $0001) ; Rupee pull kill and damage counters
.after

sram_nmg_aga_castle_screen:
%write8($7FE06C, $43) ; Overworld $76 persistent: UNKNOWN
%write8($7FE1E8, $00) ; Overworld $134 persistent: UNKNOWN
%write16($7EC172, $000A) ; Crystal switch state
%write8($7E002F, $06) ; Link's direction
%write8($7FE132, $00) ; Overworld $D9 persistent: UNKNOWN
%write8($7FE144, $42) ; Overworld $E2 persistent: UNKNOWN
; Manual changes:
%write16($7E0CFB, $0003) ; Rupee pull kill and damage counters
.after

sram_nmg_aga_entrance:
%write16($7E0542, $044C) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF29B, $60) ; Overworld $1B: Unknown (..??....)
%write8($7FE0EF, $41) ; Overworld $B7 persistent: UNKNOWN
%write8($7FE06C, $00) ; Overworld $76 persistent: UNKNOWN
%write16($7E0540, $0470) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $04) ; Dungeon entrance index
%write8($7FE144, $00) ; Overworld $E2 persistent: UNKNOWN
.after

sram_nmg_aga_fairy_skip:
%write16($7E0542, $0000) ; Object tilemap state
%write8($7EF36F, $00) ; Keys
%write8($7EF377, $08) ; Arrows
%write8($7E0FC8, $07) ; Prize pack index
%write16($7EF1C0, $000A) ; Room $00E0: Agahnim's Tower (Entrance Room) (.............q.q)
%write8($7FE0EF, $00) ; Room $B7 persistent: Turtle Rock (Map Chest / Key Chest / Roller Room)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write8($7E002F, $06) ; Link's direction
%write8($7E010E, $24) ; Dungeon entrance index
%write16($7FE140, $0003) ; Room $E0 persistent: Agahnim's Tower (Entrance Room)
.after

sram_nmg_aga_dark_room_of_despair:
%write16($7E0542, $0B8C) ; Object tilemap state
%write16($7E0546, $1030) ; Object tilemap state
%write16($7E054A, $1792) ; Object tilemap state
%write16($7E054E, $1C16) ; Object tilemap state
%write16($7E0552, $0D24) ; Object tilemap state
%write16($7EF1A0, $0004) ; Room $00D0: Agahnim's Tower (Dark Maze) (..............q.)
%write16($7EF1C0, $201E) ; Room $00E0: Agahnim's Tower (Entrance Room) (...d........qqqq)
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $059E) ; Object tilemap state
%write16($7E0544, $0D2A) ; Object tilemap state
%write16($7E0548, $14B0) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $0A1E) ; Object tilemap state
%write16($7E0554, $1012) ; Object tilemap state
%write8($7E002F, $04) ; Link's direction
%write16($7FE140, $000F) ; Room $E0 persistent: Agahnim's Tower (Entrance Room)
.after

sram_nmg_aga_dark_room_of_melancholy:
%write16($7E0542, $0E0C) ; Object tilemap state
%write16($7E0546, $1B1C) ; Object tilemap state
%write16($7E054A, $06D8) ; Object tilemap state
%write16($7E054E, $0D24) ; Object tilemap state
%write16($7E0552, $1A10) ; Object tilemap state
%write16($7EF180, $0001) ; Room $00C0: Agahnim's Tower (Dark Bridge Room) (................)
%write16($7EF1A0, $801F) ; Room $00D0: Agahnim's Tower (Dark Maze) (.d..........qqqq)
%write16($7E0540, $0A30) ; Object tilemap state
%write16($7E0544, $1A0C) ; Object tilemap state
%write16($7E0548, $0710) ; Object tilemap state
%write16($7E054C, $06E4) ; Object tilemap state
%write16($7E0550, $1518) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E0CBD, $01) ; Sprite drop
%write16($7FE120, $0020) ; Room $D0 persistent: Agahnim's Tower (Dark Maze)
.after

sram_nmg_aga_spear_guards:
%write16($7EF180, $240F) ; Room $00C0: Agahnim's Tower (Dark Bridge Room) (...d..K......qqq)
%write16($7FE100, $0018) ; Room $C0 persistent: Agahnim's Tower (Dark Bridge Room)
%write8($7E0CBD, $00) ; Sprite drop
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_aga_circle_of_pots:
%write8($7E0CC4, $01) ; Sprite drop
%write16($7E0542, $151C) ; Object tilemap state
%write16($7E0546, $1528) ; Object tilemap state
%write16($7E054A, $1910) ; Object tilemap state
%write16($7E054E, $1824) ; Object tilemap state
%write16($7E0552, $1B1C) ; Object tilemap state
%write16($7E0556, $1B28) ; Object tilemap state
%write16($7E055A, $172C) ; Object tilemap state
%write8($7EF377, $03) ; Arrows
%write16($7EF160, $000C) ; Room $00B0: Agahnim's Tower (Circle of Pots) (.............qq.)
%write16($7FE0E0, $003F) ; Room $B0 persistent: Agahnim's Tower (Circle of Pots)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $1514) ; Object tilemap state
%write16($7E0544, $1520) ; Object tilemap state
%write16($7E0548, $1710) ; Object tilemap state
%write16($7E054C, $1818) ; Object tilemap state
%write16($7E0550, $1B14) ; Object tilemap state
%write16($7E0554, $1B20) ; Object tilemap state
%write16($7E0558, $192C) ; Object tilemap state
%write8($7E002F, $02) ; Link's direction
%write8($7E0FC7, $02) ; Prize pack index
.after

sram_nmg_aga_pit_room:
%write8($7E0CC4, $00) ; Sprite drop
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write8($7EF377, $07) ; Arrows
%write16($7EF080, $0001) ; Room $0040: Agahnim's Tower (Final Bridge Room) (................)
%write16($7EF160, $240F) ; Room $00B0: Agahnim's Tower (Circle of Pots) (...d..K......qqq)
%write16($7EF360, $0077) ; Rupees (goal)
%write16($7EF362, $0077) ; Rupees (actual)
%write8($7E0303, $02) ; Selected menu item
%write16($7FE0E0, $043F) ; Room $B0 persistent: Agahnim's Tower (Circle of Pots)
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E0202, $02) ; Selected menu item
%write8($7E002F, $04) ; Link's direction
%write16($7FE140, $0000) ; Room $E0 persistent: Agahnim's Tower (Entrance Room)
.after

sram_nmg_aga_agahnim:
%write16($7EF060, $840A) ; Room $0030: Agahnim's Tower (Maiden Sacrifice Chamber) (.d....K......q.q)
%write16($7EF080, $000B) ; Room $0040: Agahnim's Tower (Final Bridge Room) (.............q.q)
%write16($7FDFE0, $0001) ; Room $30 persistent: Agahnim's Tower (Maiden Sacrifice Chamber)
%write8($7E02A2, $00) ; Arc variable
%write8($7E002F, $00) ; Link's direction
%write16($7FE120, $0000) ; Room $D0 persistent: Agahnim's Tower (Dark Maze)
.after

sram_nmg_pod_pyramid:
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $06) ; Map Phase
%write16($7EF3EB, $0000) ; Deaths
%write16($7EF040, $0802) ; Room $0020: Agahnim's Tower (Agahnim[Boss]) (.....k.........q)
%write8($7EF3C5, $03) ; Game Phase 1
%write8($7EF282, $20) ; Overworld $02: Unknown (...?....)
%write8($7EF3CA, $40) ; LW/DW
%write8($7FDFE0, $00) ; Overworld $30 persistent: Desert of Mystery
%write8($7FE0E0, $00) ; Overworld $B0 persistent: UNKNOWN
%write8($7FE100, $00) ; Overworld $C0 persistent: UNKNOWN
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_pod_pod_overworld:
%write8($7FE00C, $DB) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $42) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $7A) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE160, $42) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE124, $AD) ; Overworld $D2 persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_pod_entrance:
%write16($7EF360, $0009) ; Rupees (goal)
%write8($7EF2DE, $20) ; Overworld $5E: Unknown (...?....)
%write16($7EF362, $0009) ; Rupees (actual)
%write8($7FE00C, $00) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $00) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $00) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE160, $00) ; Overworld $F0 persistent: UNKNOWN
%write8($7FDFCD, $23) ; Overworld $26 persistent: UNKNOWN
%write8($7FE124, $00) ; Overworld $D2 persistent: UNKNOWN
.after

sram_nmg_pod_main_hub_small_key:
%write16($7E0542, $0520) ; Object tilemap state
%write16($7E0546, $0B20) ; Object tilemap state
%write16($7E054A, $0844) ; Object tilemap state
%write16($7E054E, $056E) ; Object tilemap state
%write16($7E0552, $0B6E) ; Object tilemap state
%write8($7EF343, $03) ; Bombs
%write16($7EF36F, $0000) ; Keys
%write16($7EF094, $200F) ; Room $004A: Palace of Darkness (Entrance Room) (...d.........qqq)
%write16($7EF012, $0018) ; Room $0009: Palace of Darkness (............qq..)
%write8($7EF382, $01) ; Key for dungeon $06
%write8($7E0303, $14) ; Selected menu item
%write8($7FDFCD, $00) ; Room $26 persistent: Swamp Palace (Statue Room)
%write16($7E0540, $050E) ; Object tilemap state
%write16($7E0544, $0B0E) ; Object tilemap state
%write16($7E0548, $0838) ; Object tilemap state
%write16($7E054C, $055C) ; Object tilemap state
%write16($7E0550, $0B5C) ; Object tilemap state
%write8($7E0202, $14) ; Selected menu item
%write8($7E010E, $26) ; Dungeon entrance index
.after

sram_nmg_pod_main_hub_bk:
%write8($7E0B35, $00) ; Arc variable
%write8($7EF343, $04) ; Bombs
%write8($7EF36F, $01) ; Keys
%write16($7EF014, $001F) ; Room $000A: Palace of Darkness (Stalfos Trap Room) (............qqqq)
%write16($7EF074, $800F) ; Room $003A: Palace of Darkness (Bombable Floor Room) (.d...........qqq)
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write8($7E0B0C, $D0) ; Arc variable
%write8($7E0B34, $00) ; Arc variable
.after

sram_nmg_pod_main_hub_hammeryump:
%write8($7EF36F, $00) ; Keys
%write16($7EF014, $801F) ; Room $000A: Palace of Darkness (Stalfos Trap Room) (.d..........qqqq)
%write16($7EF074, $801F) ; Room $003A: Palace of Darkness (Bombable Floor Room) (.d..........qqqq)
%write16($7EF366, $7220) ; BigKey1
%write8($7EF382, $00) ; Key for dungeon $06
%write8($7E029F, $00) ; Arc variable
.after

sram_nmg_pod_hammeryump:
%write16($7E0542, $1350) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7EF054, $402F) ; Room $002A: Palace of Darkness (Big Hub Room) (..d........c.qqq)
%write16($7E0540, $0C50) ; Object tilemap state
%write16($7E0544, $1328) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
.after

sram_nmg_pod_before_sexy_statue:
%write16($7E0542, $0B20) ; Object tilemap state
%write16($7E0546, $0C20) ; Object tilemap state
%write8($7EF34B, $01) ; Hammer
%write8($7EF36F, $01) ; Keys
%write16($7EF034, $301A) ; Room $001A: Palace of Darkness (Big Chest Room) (...db.......qq.q)
%write8($7EF36D, $28) ; Health (actual)
%write16($7EF032, $802F) ; Room $0019: Palace of Darkness (Dark Maze) (.d.........c.qqq)
%write8($7EF382, $01) ; Key for dungeon $06
%write16($7E0540, $0B1C) ; Object tilemap state
%write16($7E0544, $0C1C) ; Object tilemap state
%write16($7E0548, $4E64) ; Object tilemap state
%write8($7E0FCD, $01) ; Prize pack index
%write8($7E0B37, $01) ; Arc variable
%write8($7E0B3F, $01) ; Arc variable
.after

sram_nmg_pod_sexy_statue_room:
%write16($7E0542, $1350) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF377, $06) ; Arrows
%write8($7E0303, $03) ; Selected menu item
%write16($7E0540, $0C50) ; Object tilemap state
%write16($7E0544, $1328) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E0202, $01) ; Selected menu item
%write8($7EC172, $01) ; Crystal switch state
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_pod_mimics:
%write16($7E0542, $0610) ; Object tilemap state
%write16($7E0546, $052C) ; Object tilemap state
%write16($7E054A, $072C) ; Object tilemap state
%write16($7E054E, $1692) ; Object tilemap state
%write16($7E0552, $16AA) ; Object tilemap state
%write16($7E0556, $151E) ; Object tilemap state
%write8($7E0642, $01) ; Room puzzle state (?)
%write8($7EF343, $06) ; Bombs
%write8($7EF36D, $30) ; Health (actual)
%write16($7EF056, $000A) ; Room $002B: Palace of Darkness (Map Chest / Fairy Room) (.............q.q)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0510) ; Object tilemap state
%write16($7E0544, $0710) ; Object tilemap state
%write16($7E0548, $062C) ; Object tilemap state
%write16($7E054C, $1592) ; Object tilemap state
%write16($7E0550, $15AA) ; Object tilemap state
%write16($7E0554, $151A) ; Object tilemap state
%write16($7E0558, $1522) ; Object tilemap state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_pod_statue:
%write16($7E0542, $1728) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7E0642, $00) ; Room puzzle state (?)
%write8($7EF377, $07) ; Arrows
%write16($7EF036, $0002) ; Room $001B: Palace of Darkness (Mimics / Moving Wall Room) (...............q)
%write16($7E0540, $1714) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write16($7FDFB6, $0038) ; Room $1B persistent: Palace of Darkness (Mimics / Moving Wall Room)
%write8($7E0FCB, $02) ; Prize pack index
.after

sram_nmg_pod_basement:
%write8($7EF377, $06) ; Arrows
%write16($7EF036, $008E) ; Room $001B: Palace of Darkness (Mimics / Moving Wall Room) (.........c...qqq)
%write8($7E0303, $04) ; Selected menu item
%write8($7E0468, $01) ; Trap door state
%write8($7E0202, $0C) ; Selected menu item
%write8($7EC172, $00) ; Crystal switch state
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_pod_turtle_room:
%write16($7E0542, $0966) ; Object tilemap state
%write16($7E0546, $03CA) ; Object tilemap state
%write16($7E054A, $076A) ; Object tilemap state
%write16($7E054E, $095E) ; Object tilemap state
%write16($7E0552, $085E) ; Object tilemap state
%write16($7E0556, $1814) ; Object tilemap state
%write16($7E055A, $1854) ; Object tilemap state
%write16($7EF36F, $0000) ; Keys
%write16($7EF016, $200C) ; Room $000B: Palace of Darkness (Turtle Room) (...d.........qq.)
%write16($7E0540, $0962) ; Object tilemap state
%write16($7E0544, $096A) ; Object tilemap state
%write16($7E0548, $0CCA) ; Object tilemap state
%write16($7E054C, $086A) ; Object tilemap state
%write16($7E0550, $075E) ; Object tilemap state
%write16($7E0554, $5760) ; Object tilemap state
%write16($7E0558, $1828) ; Object tilemap state
%write16($7E055C, $1864) ; Object tilemap state
%write8($7EC172, $01) ; Crystal switch state
.after

sram_nmg_pod_helma:
%write16($7E0542, $03F2) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write8($7E0FC8, $01) ; Prize pack index
%write16($7EF0D4, $8005) ; Room $006A: Palace of Darkness (Rupee Room) (.d............q.)
%write16($7EF016, $200F) ; Room $000B: Palace of Darkness (Turtle Room) (...d.........qqq)
%write16($7FE054, $0010) ; Room $6A persistent: Palace of Darkness (Rupee Room)
%write16($7E0540, $03CA) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write16($7E055C, $0000) ; Object tilemap state
%write16($7FDF96, $03F0) ; Room $B persistent: Palace of Darkness (Turtle Room)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_thieves_outside_pod:
%write16($7E0542, $0000) ; Object tilemap state
%write8($7E0ABD, $00) ; Palette swap
%write8($7E0B31, $38) ; Arc variable
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $07) ; Map Phase
%write16($7EF3EF, $0000) ; Deaths
%write16($7EF0B4, $0801) ; Room $005A: Palace of Darkness (Helmasaur King[Boss]) (.....k..........)
%write8($7E0B32, $00) ; Arc variable
%write8($7EF36C, $38) ; Health (goal)
%write8($7EF36D, $38) ; Health (actual)
%write8($7EF37A, $02) ; Crystals
%write8($7EF382, $00) ; Key for dungeon $06
%write8($7FE054, $00) ; Overworld $6A persistent: Haunted Grove
%write8($7FDFCD, $23) ; Overworld $26 persistent: UNKNOWN
%write16($7E0540, $0000) ; Object tilemap state
%write8($7E02A1, $17) ; Arc variable
%write8($7E0B33, $0F) ; Arc variable
%write8($7FDF96, $00) ; Overworld $B persistent: UNKNOWN
%write8($7FDFB6, $00) ; Overworld $1B persistent: Hyrule Castle
%write8($7E0B08, $08) ; Arc variable
%write8($7E0B0C, $8E) ; Arc variable
%write8($7E0B30, $0E) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_thieves_ow_hammerdash:
%write8($7FE00C, $DB) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $42) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $7A) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE160, $42) ; Overworld $F0 persistent: UNKNOWN
%write8($7FDFCD, $00) ; Overworld $26 persistent: UNKNOWN
%write8($7FE124, $AD) ; Overworld $D2 persistent: UNKNOWN
%write16($7EC172, $0004) ; Crystal switch state
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_thieves_grove:
%write8($7FE13B, $26) ; Overworld $DD persistent: UNKNOWN
%write8($7FE163, $42) ; Overworld $F1 persistent: UNKNOWN
%write8($7FE00C, $00) ; Overworld $46 persistent: UNKNOWN
%write8($7FE038, $00) ; Overworld $5C persistent: UNKNOWN
%write8($7FE110, $00) ; Overworld $C8 persistent: UNKNOWN
%write8($7FE150, $42) ; Overworld $E8 persistent: UNKNOWN
%write8($7FE160, $00) ; Overworld $F0 persistent: UNKNOWN
%write8($7FE124, $00) ; Overworld $D2 persistent: UNKNOWN
%write16($7EC172, $0020) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_thieves_usain_bolt:
%write8($7EF34C, $02) ; Flute
%write8($7E1ABF, $9D) ; Warp Vortex Coordinate
%write8($7E1ACF, $04) ; Warp Vortex Coordinate
%write8($7E1ADF, $9C) ; Warp Vortex Coordinate
%write8($7E1AEF, $0A) ; Warp Vortex Coordinate
%write8($7EF3CA, $00) ; LW/DW
%write8($7FE13B, $00) ; Overworld $DD persistent: UNKNOWN
%write8($7FE163, $00) ; Overworld $F1 persistent: UNKNOWN
%write8($7E0303, $08) ; Selected menu item
%write8($7FE07C, $A0) ; Overworld $7E persistent: UNKNOWN
%write8($7FE150, $00) ; Overworld $E8 persistent: UNKNOWN
%write8($7FE019, $1E) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $A1) ; Overworld $76 persistent: UNKNOWN
%write8($7FE161, $A1) ; Overworld $F0 persistent: UNKNOWN
%write8($7E0202, $0D) ; Selected menu item
%write8($7FE04E, $9F) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $2F) ; Overworld $77 persistent: Black Ice Cave
%write16($7EC172, $0900) ; Crystal switch state
.after

sram_nmg_thieves_after_activating_flute:
%write8($7EF298, $20) ; Overworld $18: Unknown (...?....)
%write8($7EF34C, $03) ; Flute
%write8($7FE07C, $00) ; Overworld $7E persistent: UNKNOWN
%write8($7FE019, $00) ; Overworld $4C persistent: UNKNOWN
%write8($7FE06D, $00) ; Overworld $76 persistent: UNKNOWN
%write8($7FE161, $00) ; Overworld $F0 persistent: UNKNOWN
%write8($7E02A1, $23) ; Arc variable
%write8($7FE04E, $00) ; Overworld $67 persistent: UNKNOWN
%write8($7FE06E, $00) ; Overworld $77 persistent: Black Ice Cave
%write8($7FE102, $42) ; Overworld $C1 persistent: UNKNOWN
%write16($7EC172, $0920) ; Crystal switch state
%write8($7E02A2, $FD) ; Arc variable
%write8($7E002F, $04) ; Link's direction
%write8($7FE128, $DC) ; Overworld $D4 persistent: UNKNOWN
.after

sram_nmg_thieves_darkworld:
%write8($7EF3CA, $40) ; LW/DW
%write8($7E0303, $04) ; Selected menu item
%write8($7FE068, $26) ; Overworld $74 persistent: Dark Swamp North
%write8($7FE045, $13) ; Overworld $62 persistent: Locked Chest House
%write8($7E0202, $0C) ; Selected menu item
%write8($7FE102, $00) ; Overworld $C1 persistent: UNKNOWN
%write16($7EC172, $001E) ; Crystal switch state
%write8($7FE128, $00) ; Overworld $D4 persistent: UNKNOWN
%write8($7FE136, $1A) ; Overworld $DB persistent: UNKNOWN
.after

sram_nmg_thieves_entrance:
%write8($7EF2D8, $20) ; Overworld $58: Unknown (...?....)
%write16($7EF360, $000A) ; Rupees (goal)
%write16($7EF362, $000A) ; Rupees (actual)
%write8($7FE068, $00) ; Overworld $74 persistent: Dark Swamp North
%write8($7FE045, $00) ; Overworld $62 persistent: Locked Chest House
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
%write8($7FE136, $00) ; Overworld $DB persistent: UNKNOWN
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
.after

sram_nmg_thieves_after_big_key:
%write16($7E0542, $0470) ; Object tilemap state
%write16($7E0546, $333E) ; Object tilemap state
%write8($7EF36F, $00) ; Keys
%write16($7EF198, $000F) ; Room $00CC: Thieves Town (North East Entrance Room) (.............qqq)
%write16($7EF1B8, $000F) ; Room $00DC: Thieves Town (South East Entrance Room) (.............qqq)
%write16($7EF196, $000F) ; Room $00CB: Thieves Town (North West Entrance Room) (.............qqq)
%write16($7EF1B6, $002F) ; Room $00DB: Thieves Town (Main (South West) Entrance Room) (...........c.qqq)
%write16($7EF366, $7230) ; BigKey1
%write16($7E0540, $040C) ; Object tilemap state
%write16($7E0544, $1058) ; Object tilemap state
%write16($7EC172, $0000) ; Crystal switch state
%write8($7FE0E3, $00) ; Room $B1 persistent: Misery Mire (Hourglass Room)
%write8($7E002F, $06) ; Link's direction
%write8($7E010E, $34) ; Dungeon entrance index
%write8($7FE148, $00) ; Room $E4 persistent: Cave (Lost Old Man Final Cave)
.after

sram_nmg_thieves_blind_hallway:
%write16($7E0542, $0424) ; Object tilemap state
%write16($7E0546, $1C70) ; Object tilemap state
%write16($7EF198, $800F) ; Room $00CC: Thieves Town (North East Entrance Room) (.d...........qqq)
%write16($7E0540, $0470) ; Object tilemap state
%write16($7E0544, $1C24) ; Object tilemap state
%write8($7E002F, $00) ; Link's direction
%write16($7FE138, $0080) ; Room $DC persistent: Thieves Town (South East Entrance Room)
.after

sram_nmg_thieves_conveyor_gibos:
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7EF178, $C407) ; Room $00BC: Thieves Town (Conveyor Toilet) (.dd...K.......qq)
%write16($7FE0F8, $0340) ; Room $BC persistent: Thieves Town (Conveyor Toilet)
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_thieves_hellway:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write8($7E0ABD, $01) ; Palette swap
%write16($7EF176, $0001) ; Room $00BB: Thieves Town (Hellway) (................)
%write8($7E0303, $01) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
.after

sram_nmg_thieves_bombable_floor:
%write16($7E0542, $1560) ; Object tilemap state
%write16($7E0546, $1660) ; Object tilemap state
%write16($7E054A, $1C68) ; Object tilemap state
%write8($7E0ABD, $00) ; Palette swap
%write16($7EF0C8, $0003) ; Room $0064: Thieves Town (West Attic Room) (...............q)
%write16($7EF0CA, $0002) ; Room $0065: Thieves Town (East Attic Room) (...............q)
%write16($7EF156, $8402) ; Room $00AB: Thieves Town (Moving Spikes / Key Pot Room) (.d....K........q)
%write16($7EF176, $000B) ; Room $00BB: Thieves Town (Hellway) (.............q.q)
%write16($7FE0F8, $0000) ; Room $BC persistent: Thieves Town (Conveyor Toilet)
%write16($7E0540, $155C) ; Object tilemap state
%write16($7E0544, $165C) ; Object tilemap state
%write16($7E0548, $1C64) ; Object tilemap state
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write8($7E0B3F, $00) ; Arc variable
%write8($7EC172, $01) ; Crystal switch state
%write8($7E0B0C, $B0) ; Arc variable
%write8($7E002F, $06) ; Link's direction
%write16($7FE138, $0000) ; Room $DC persistent: Thieves Town (South East Entrance Room)
.after

sram_nmg_thieves_backtracking_1:
%write16($7E0542, $1610) ; Object tilemap state
%write16($7E0546, $1C24) ; Object tilemap state
%write16($7E054A, $1C2C) ; Object tilemap state
%write8($7EF343, $05) ; Bombs
%write16($7EF0CA, $0103) ; Room $0065: Thieves Town (East Attic Room) (........c......q)
%write8($7E029F, $01) ; Arc variable
%write16($7E0540, $160C) ; Object tilemap state
%write16($7E0544, $1614) ; Object tilemap state
%write16($7E0548, $1C28) ; Object tilemap state
%write16($7E054C, $1C30) ; Object tilemap state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_thieves_basement:
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7EF178, $C40F) ; Room $00BC: Thieves Town (Conveyor Toilet) (.dd...K......qqq)
%write16($7EF176, $000F) ; Room $00BB: Thieves Town (Hellway) (.............qqq)
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
.after

sram_nmg_thieves_prison:
%write16($7E0542, $07A0) ; Object tilemap state
%write16($7E0546, $08A0) ; Object tilemap state
%write16($7E054A, $0C30) ; Object tilemap state
%write16($7E054E, $0B6C) ; Object tilemap state
%write16($7E0552, $10EC) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write16($7EF08A, $000A) ; Room $0045: Thieves Town (Jail Cells Room) (.............q.q)
%write8($7E0303, $04) ; Selected menu item
%write16($7E0540, $079C) ; Object tilemap state
%write16($7E0544, $089C) ; Object tilemap state
%write16($7E0548, $040C) ; Object tilemap state
%write16($7E054C, $0B5C) ; Object tilemap state
%write16($7E0550, $10DC) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E0202, $0C) ; Selected menu item
%write16($7FE00A, $0002) ; Room $45 persistent: Thieves Town (Jail Cells Room)
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_thieves_after_gloves:
%write16($7E0542, $07D0) ; Object tilemap state
%write16($7E0546, $08D0) ; Object tilemap state
%write16($7E054A, $1624) ; Object tilemap state
%write16($7E054E, $1828) ; Object tilemap state
%write16($7E0552, $1A18) ; Object tilemap state
%write16($7E0556, $1A20) ; Object tilemap state
%write16($7EF088, $4017) ; Room $0044: Thieves Town (Big Chest Room) (..d.........q.qq)
%write8($7EF354, $02) ; Gloves
%write8($7EF3CC, $06) ; Tagalong
%write16($7EF08A, $00FF) ; Room $0045: Thieves Town (Jail Cells Room) (.........cccqqqq)
%write16($7E0540, $07CC) ; Object tilemap state
%write16($7E0544, $08CC) ; Object tilemap state
%write16($7E0548, $1618) ; Object tilemap state
%write16($7E054C, $1728) ; Object tilemap state
%write16($7E0550, $1928) ; Object tilemap state
%write16($7E0554, $1A1C) ; Object tilemap state
%write16($7E0558, $1A24) ; Object tilemap state
%write8($7E0B37, $0E) ; Arc variable
%write8($7E0B3F, $01) ; Arc variable
%write16($7FE00A, $0162) ; Room $45 persistent: Thieves Town (Jail Cells Room)
.after

sram_nmg_thieves_backtracking_2:
%write8($7E0B37, $0C) ; Arc variable
.after

sram_nmg_thieves_pot_hammerdash:
%write16($7E0542, $07A0) ; Object tilemap state
%write16($7E0546, $08A0) ; Object tilemap state
%write16($7E054A, $0C30) ; Object tilemap state
%write16($7E054E, $0B6C) ; Object tilemap state
%write16($7E0552, $10EC) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7EF377, $0B) ; Arrows
%write16($7FE008, $0080) ; Room $44 persistent: Thieves Town (Big Chest Room)
%write16($7E0540, $079C) ; Object tilemap state
%write16($7E0544, $089C) ; Object tilemap state
%write16($7E0548, $040C) ; Object tilemap state
%write16($7E054C, $0B5C) ; Object tilemap state
%write16($7E0550, $10DC) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E0B37, $07) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_thieves_blind:
%write16($7E0542, $03B2) ; Object tilemap state
%write16($7E0546, $0CB2) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write16($7E0552, $1520) ; Object tilemap state
%write16($7E0556, $1B20) ; Object tilemap state
%write16($7E055A, $0466) ; Object tilemap state
%write16($7FE0F8, $0002) ; Room $BC persistent: Thieves Town (Conveyor Toilet)
%write16($7E0540, $038A) ; Object tilemap state
%write16($7E0544, $0C8A) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7E0550, $151C) ; Object tilemap state
%write16($7E0554, $1B1C) ; Object tilemap state
%write16($7E0558, $0456) ; Object tilemap state
.after

sram_nmg_sw_outside_thieves:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write8($7EF36F, $FF) ; Keys
%write16($7EF158, $0A01) ; Room $00AC: Thieves Town (Blind The Thief[Boss]) (.....k.R........)
%write8($7EF36C, $40) ; Health (goal)
%write8($7EF3CC, $00) ; Tagalong
%write8($7EF36D, $40) ; Health (actual)
%write16($7EF3F9, $0000) ; Deaths
%write8($7EF37A, $22) ; Crystals
%write8($7FE008, $00) ; Overworld $44 persistent: UNKNOWN
%write8($7FE0F8, $00) ; Overworld $BC persistent: UNKNOWN
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E02A1, $17) ; Arc variable
%write8($7EF387, $00) ; Key for dungeon $0B
%write8($7FE00A, $00) ; Overworld $45 persistent: Death Mountain East
%write8($7E02A2, $00) ; Arc variable
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7E002F, $02) ; Link's direction
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
.after

sram_nmg_sw_cursed_dwarf:
%write8($7EF343, $04) ; Bombs
%write16($7EF20C, $F012) ; Room $0106: Unknown (.dddb.......q..q)
%write8($7EF2D8, $22) ; Overworld $58: Unknown (...?...?)
%write16($7EF360, $0136) ; Rupees (goal)
%write16($7EF362, $0136) ; Rupees (actual)
%write8($7E029F, $18) ; Arc variable
%write8($7E0303, $01) ; Selected menu item
%write16($7E0540, $1B6C) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E002F, $06) ; Link's direction
%write8($7E010E, $48) ; Dungeon entrance index
.after

sram_nmg_sw_getting_tempered:
%write8($7EF3CC, $07) ; Tagalong
%write8($7E0303, $14) ; Selected menu item
%write8($7E0202, $14) ; Selected menu item
%write16($7EC172, $0018) ; Crystal switch state
.after

sram_nmg_sw_fence_dash:
%write16($7EF360, $012C) ; Rupees (goal)
%write8($7EF3CC, $00) ; Tagalong
%write8($7E1ABF, $D8) ; Warp Vortex Coordinate
%write8($7E1ADF, $78) ; Warp Vortex Coordinate
%write8($7E1AEF, $08) ; Warp Vortex Coordinate
%write8($7EF359, $03) ; Sword
%write8($7EF3C9, $20) ; Game Phase 3
%write16($7EF242, $0002) ; Room $0121: Unknown (...............q)
%write16($7EF362, $012C) ; Rupees (actual)
%write8($7FDFDD, $B5) ; Overworld $2E persistent: South of Eastern Palace
%write16($7E0540, $0000) ; Object tilemap state
%write16($7EC172, $0000) ; Crystal switch state
%write8($7FE0E3, $00) ; Overworld $B1 persistent: UNKNOWN
%write8($7E002F, $04) ; Link's direction
%write8($7E010E, $64) ; Dungeon entrance index
%write8($7FE148, $00) ; Overworld $E4 persistent: UNKNOWN
.after

sram_nmg_sw_dash_to_sw:
%write16($7EF238, $0011) ; Room $011C: Unknown (............q...)
%write16($7EF360, $0258) ; Rupees (goal)
%write16($7EF362, $0258) ; Rupees (actual)
%write8($7FDFDD, $00) ; Overworld $2E persistent: South of Eastern Palace
%write8($7FE0E3, $13) ; Overworld $B1 persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $54) ; Dungeon entrance index
%write8($7FE148, $26) ; Overworld $E4 persistent: UNKNOWN
.after

sram_nmg_sw_mummy_room:
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write16($7EC172, $091A) ; Crystal switch state
%write8($7FE0E3, $00) ; Overworld $B1 persistent: UNKNOWN
%write8($7E002F, $04) ; Link's direction
%write8($7FE148, $00) ; Overworld $E4 persistent: UNKNOWN
.after

sram_nmg_sw_bomb_jump:
%write16($7E0542, $0420) ; Object tilemap state
%write16($7E0546, $161E) ; Object tilemap state
%write16($7E054A, $1B4C) ; Object tilemap state
%write16($7E054E, $175C) ; Object tilemap state
%write8($7EF377, $10) ; Arrows
%write8($7E0FCC, $04) ; Prize pack index
%write16($7EF0AE, $001A) ; Room $0057: Skull Woods (Big Key Room) (............qq.q)
%write16($7EF366, $72B0) ; BigKey1
%write16($7E0540, $075C) ; Object tilemap state
%write16($7E0544, $140C) ; Object tilemap state
%write16($7E0548, $1430) ; Object tilemap state
%write16($7E054C, $1954) ; Object tilemap state
%write16($7E0550, $1764) ; Object tilemap state
%write8($7E0B37, $FB) ; Arc variable
%write8($7E0B3F, $00) ; Arc variable
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $29) ; Dungeon entrance index
.after

sram_nmg_sw_key_pot:
%write16($7E0542, $140C) ; Object tilemap state
%write16($7E0546, $0A5C) ; Object tilemap state
%write16($7E054A, $080C) ; Object tilemap state
%write16($7E054E, $0614) ; Object tilemap state
%write16($7E0552, $0724) ; Object tilemap state
%write16($7E0556, $0918) ; Object tilemap state
%write16($7E055A, $0924) ; Object tilemap state
%write8($7EF343, $03) ; Bombs
%write8($7EF36F, $00) ; Keys
%write16($7EF0AC, $0005) ; Room $0056: Skull Woods (Key Pot / Trap Room) (..............q.)
%write16($7EF0B0, $0012) ; Room $0058: Skull Woods (Big Chest Room) (............q..q)
%write8($7E0B36, $D9) ; Arc variable
%write8($7EF345, $01) ; Fire Rod
%write8($7EF36D, $30) ; Health (actual)
%write8($7E029F, $00) ; Arc variable
%write8($7E0303, $01) ; Selected menu item
%write16($7E0540, $1430) ; Object tilemap state
%write16($7E0544, $0664) ; Object tilemap state
%write16($7E0548, $0A60) ; Object tilemap state
%write16($7E054C, $0830) ; Object tilemap state
%write16($7E0550, $0718) ; Object tilemap state
%write16($7E0554, $0628) ; Object tilemap state
%write16($7E0558, $0A14) ; Object tilemap state
%write16($7E055C, $0A28) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
%write8($7E0B37, $A0) ; Arc variable
%write8($7FE0FA, $00) ; Room $BD persistent: Empty Clone Room
%write8($7E002F, $04) ; Link's direction
; Manual changes:
%write8($7EF343, $04) ; Bombs
.after

sram_nmg_sw_skull_entrance:
%write8($7EF36F, $FF) ; Keys
%write16($7EF0AC, $0407) ; Room $0056: Skull Woods (Key Pot / Trap Room) (......K.......qq)
%write8($7EF2C0, $20) ; Overworld $40: Unknown (...?....)
%write8($7E0B36, $50) ; Arc variable
%write8($7EF384, $01) ; Key for dungeon $08
%write8($7EF36E, $70) ; Magic Power
%write8($7E0303, $05) ; Selected menu item
%write8($7E0202, $06) ; Selected menu item
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $2B) ; Dungeon entrance index
.after

sram_nmg_sw_mummy_hellway:
%write16($7E0542, $1490) ; Object tilemap state
%write16($7E0546, $1B9C) ; Object tilemap state
%write16($7E054A, $14AC) ; Object tilemap state
%write16($7E054E, $18AC) ; Object tilemap state
%write16($7E0552, $0F68) ; Object tilemap state
%write16($7E0556, $055C) ; Object tilemap state
%write16($7E055A, $0FEE) ; Object tilemap state
%write16($7EF36F, $0000) ; Keys
%write16($7EF092, $2002) ; Room $0049: Skull Woods (Gibdo Torch Puzzle Room) (...d...........q)
%write16($7EF0B2, $800A) ; Room $0059: Skull Woods (Final Section Entrance Room) (.d...........q.q)
%write16($7E0540, $1390) ; Object tilemap state
%write16($7E0544, $1B90) ; Object tilemap state
%write16($7E0548, $1BA0) ; Object tilemap state
%write16($7E054C, $17AC) ; Object tilemap state
%write16($7E0550, $1CAC) ; Object tilemap state
%write16($7E0554, $1068) ; Object tilemap state
%write16($7E0558, $0FCE) ; Object tilemap state
%write16($7E055C, $1870) ; Object tilemap state
%write8($7E0B37, $AF) ; Arc variable
%write16($7FE032, $0003) ; Room $59 persistent: Skull Woods (Final Section Entrance Room)
%write8($7FE0FA, $00) ; Room $BD persistent: Empty Clone Room
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_sw_mummy_key:
%write16($7E0556, $855C) ; Object tilemap state
%write16($7E055A, $8FEE) ; Object tilemap state
%write16($7EF092, $A00F) ; Room $0049: Skull Woods (Gibdo Torch Puzzle Room) (.d.d.........qqq)
%write8($7EF36E, $30) ; Magic Power
%write16($7E0468, $0000) ; Trap door state
%write16($7E0558, $8FCE) ; Object tilemap state
%write16($7E055C, $9870) ; Object tilemap state
%write8($7E0B37, $B0) ; Arc variable
%write16($7FE012, $0801) ; Room $49 persistent: Skull Woods (Gibdo Torch Puzzle Room)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_sw_mothula:
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7E0546, $1A64) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write16($7EF072, $4402) ; Room $0039: Skull Woods (Gibdo Key / Mothula Hole Room) (..d...K........q)
%write8($7E0468, $01) ; Trap door state
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1664) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write16($7E055C, $0000) ; Object tilemap state
%write8($7E0B37, $8F) ; Arc variable
%write8($7E002F, $06) ; Link's direction
%write16($7FDFF2, $0002) ; Room $39 persistent: Skull Woods (Gibdo Key / Mothula Hole Room)
.after

sram_nmg_ice_outside_skull:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF36F, $FF) ; Keys
%write16($7EF3F3, $0000) ; Deaths
%write8($7EF36C, $48) ; Health (goal)
%write8($7EF384, $00) ; Key for dungeon $08
%write8($7E1ABF, $98) ; Warp Vortex Coordinate
%write8($7E1ACF, $00) ; Warp Vortex Coordinate
%write8($7E1ADF, $CB) ; Warp Vortex Coordinate
%write8($7E1AEF, $00) ; Warp Vortex Coordinate
%write8($7EF36D, $48) ; Health (actual)
%write16($7EF052, $0801) ; Room $0029: Skull Woods (Mothula[Boss]) (.....k..........)
%write16($7EF072, $4403) ; Room $0039: Skull Woods (Gibdo Key / Mothula Hole Room) (..d...K........q)
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $62) ; Crystals
%write8($7E0303, $14) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0202, $14) ; Selected menu item
%write8($7E0B37, $19) ; Arc variable
%write8($7FE012, $00) ; Overworld $49 persistent: UNKNOWN
%write8($7FE032, $00) ; Overworld $59 persistent: UNKNOWN
%write8($7FE0FA, $23) ; Overworld $BD persistent: UNKNOWN
%write8($7E002F, $02) ; Link's direction
%write8($7FDFF2, $00) ; Overworld $39 persistent: UNKNOWN
.after

sram_nmg_ice_bridge_warp:
%write8($7EF3CA, $00) ; LW/DW
%write8($7E0303, $08) ; Selected menu item
%write8($7E0202, $0D) ; Selected menu item
%write8($7FE0FA, $00) ; Overworld $BD persistent: UNKNOWN
%write8($7E02A2, $D0) ; Arc variable
%write8($7E002F, $00) ; Link's direction
; Manual changes:
%write8($7E02A2, $00) ; Altitude
.after

sram_nmg_ice_lottery:
%write8($7E0FC8, $02) ; Prize pack index
%write8($7EF3CA, $40) ; LW/DW
%write8($7FE17B, $DB) ; Overworld $FD persistent: UNKNOWN
%write8($7FE168, $D4) ; Overworld $F4 persistent: UNKNOWN
%write16($7EC172, $0920) ; Crystal switch state
%write8($7FE166, $12) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE111, $BB) ; Overworld $C8 persistent: UNKNOWN
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_ice_medallion:
%write8($7FE17B, $00) ; Overworld $FD persistent: UNKNOWN
%write8($7E0303, $14) ; Selected menu item
%write8($7FDFCC, $56) ; Overworld $26 persistent: UNKNOWN
%write8($7FE168, $00) ; Overworld $F4 persistent: UNKNOWN
%write8($7E0202, $14) ; Selected menu item
%write8($7FE06E, $09) ; Overworld $77 persistent: Black Ice Cave
%write8($7FE106, $09) ; Overworld $C3 persistent: UNKNOWN
%write16($7EC172, $0280) ; Crystal switch state
%write8($7FE166, $00) ; Overworld $F3 persistent: UNKNOWN
%write8($7FE111, $00) ; Overworld $C8 persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
%write8($7FE128, $09) ; Overworld $D4 persistent: UNKNOWN
.after

sram_nmg_ice_zoras_domain:
%write8($7E1ABF, $9D) ; Warp Vortex Coordinate
%write8($7E1ACF, $0E) ; Warp Vortex Coordinate
%write8($7E1ADF, $A6) ; Warp Vortex Coordinate
%write8($7E1AEF, $02) ; Warp Vortex Coordinate
%write8($7EF349, $01) ; Quake Medallion
%write8($7EF3CA, $00) ; LW/DW
%write8($7FDFCC, $00) ; Overworld $26 persistent: UNKNOWN
%write8($7FE05D, $59) ; Overworld $6E persistent: Outside Hedge Maze
%write8($7FDFA6, $38) ; Overworld $13 persistent: Sanctuary
%write8($7FE06E, $00) ; Overworld $77 persistent: Black Ice Cave
%write8($7FE106, $00) ; Overworld $C3 persistent: UNKNOWN
%write16($7EC172, $091E) ; Crystal switch state
%write8($7FE128, $00) ; Overworld $D4 persistent: UNKNOWN
.after

sram_nmg_ice_tiny_warp:
%write16($7EF360, $0064) ; Rupees (goal)
%write8($7EF379, $FE) ; Ability Flags
%write8($7EF356, $01) ; Flippers
%write16($7EF362, $0064) ; Rupees (actual)
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_ice_ice_entrance:
%write8($7EF3CA, $40) ; LW/DW
%write8($7FDFF9, $42) ; Overworld $3C persistent: Great Swamp SE
%write8($7FE05D, $00) ; Overworld $6E persistent: Outside Hedge Maze
%write8($7FDFA6, $00) ; Overworld $13 persistent: Sanctuary
%write8($7FDFDA, $D4) ; Overworld $2D persistent: Bridge to Hyrule Castle
%write8($7FE01B, $42) ; Overworld $4D persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_ice_ice2:
%write8($7EF36F, $00) ; Keys
%write16($7EF01C, $0001) ; Room $000E: Ice Palace (Entrance Room) (................)
%write8($7EF36E, $70) ; Magic Power
%write8($7E0303, $05) ; Selected menu item
%write16($7FDF9C, $0001) ; Room $E persistent: Ice Palace (Entrance Room)
%write8($7FDFF9, $00) ; Room $3C persistent: Cave
%write16($7E0468, $0000) ; Trap door state
%write8($7E0202, $06) ; Selected menu item
%write8($7E0CBD, $01) ; Sprite drop
%write8($7FDFDA, $00) ; Room $2D persistent: Empty Clone Room
%write16($7EC172, $0000) ; Crystal switch state
%write8($7FE01B, $00) ; Room $4D persistent: Ganon's Tower (Moldorm Room)
%write8($7E002F, $04) ; Link's direction
%write8($7E010E, $2D) ; Dungeon entrance index
.after

sram_nmg_ice_penguin_switch_room:
%write16($7E0542, $0760) ; Object tilemap state
%write16($7E0546, $0860) ; Object tilemap state
%write16($7E054A, $575E) ; Object tilemap state
%write8($7E0FCC, $05) ; Prize pack index
%write16($7EF01C, $8403) ; Room $000E: Ice Palace (Entrance Room) (.d....K........q)
%write16($7EF03C, $0003) ; Room $001E: Ice Palace (Bomb Floor / Bari Room) (...............q)
%write16($7EF05C, $0004) ; Room $002E: Ice Palace (Compass Room) (..............q.)
%write8($7EF36E, $60) ; Magic Power
%write16($7FDF9C, $000B) ; Room $E persistent: Ice Palace (Entrance Room)
%write16($7E0540, $075C) ; Object tilemap state
%write16($7E0544, $085C) ; Object tilemap state
%write16($7E0548, $0954) ; Object tilemap state
%write8($7E0CBD, $00) ; Sprite drop
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_ice_bombable_floor:
%write16($7E054A, $585A) ; Object tilemap state
%write16($7EF03E, $0002) ; Room $001F: Ice Palace (Pengator / Big Key Room) (...............q)
%write8($7E0FC9, $02) ; Prize pack index
%write16($7FDFBE, $0071) ; Room $1F persistent: Ice Palace (Pengator / Big Key Room)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_ice_conveyor_room:
%write16($7E0542, $0664) ; Object tilemap state
%write16($7E0546, $0A5C) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write8($7EF343, $01) ; Bombs
%write16($7EF03C, $0007) ; Room $001E: Ice Palace (Bomb Floor / Bari Room) (..............qq)
%write16($7EF07C, $0004) ; Room $003E: Ice Palace (Stalfos Knights / Conveyor Hellway) (..............q.)
%write8($7E0FCA, $02) ; Prize pack index
%write8($7E0303, $01) ; Selected menu item
%write16($7FDF9C, $0000) ; Room $E persistent: Ice Palace (Entrance Room)
%write16($7FDFFC, $0006) ; Room $3E persistent: Ice Palace (Stalfos Knights / Conveyor Hellway)
%write16($7E0540, $0660) ; Object tilemap state
%write16($7E0544, $0A58) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
%write8($7E0B37, $00) ; Arc variable
%write8($7EC172, $01) ; Crystal switch state
%write8($7E002F, $02) ; Link's direction
%write8($7E0CC2, $01) ; Sprite drop
; Manual changes:
%write8($7EF343, $02) ; Bombs
.after

sram_nmg_ice_ipbj:
%write16($7EF07C, $4407) ; Room $003E: Ice Palace (Stalfos Knights / Conveyor Hellway) (..d...K.......qq)
%write8($7EF36D, $40) ; Health (actual)
%write16($7FDFFC, $0306) ; Room $3E persistent: Ice Palace (Stalfos Knights / Conveyor Hellway)
%write8($7E0468, $01) ; Trap door state
%write8($7E0B37, $59) ; Arc variable
%write8($7E0CC2, $00) ; Sprite drop
.after

sram_nmg_ice_penguin_room:
%write16($7E0542, $0B8C) ; Object tilemap state
%write16($7E0546, $0A30) ; Object tilemap state
%write8($7EF343, $00) ; Bombs
%write16($7EF09C, $400C) ; Room $004E: Ice Palace (Bomb-Jump Room) (..d..........qq.)
%write8($7E0303, $04) ; Selected menu item
%write16($7E0540, $078C) ; Object tilemap state
%write16($7E0544, $0C1C) ; Object tilemap state
%write16($7E0548, $0C70) ; Object tilemap state
%write8($7E0202, $0C) ; Selected menu item
%write8($7E0B37, $4F) ; Arc variable
%write8($7E002F, $00) ; Link's direction
; Manual changes:
%write8($7EF343, $01) ; Bombs
.after

sram_nmg_ice_lonely_firebar:
%write16($7E0542, $0460) ; Object tilemap state
%write16($7E0546, $0870) ; Object tilemap state
%write16($7EF0BC, $0001) ; Room $005E: Ice Palace (Lonely Firebar) (................)
%write16($7EF0DC, $0004) ; Room $006E: Ice Palace (Pengators Room) (..............q.)
%write8($7EF36D, $38) ; Health (actual)
%write16($7FE05C, $001F) ; Room $6E persistent: Ice Palace (Pengators Room)
%write16($7E0540, $045C) ; Object tilemap state
%write16($7E0544, $084C) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E0FC9, $06) ; Prize pack index
%write8($7E0B37, $A0) ; Arc variable
%write16($7FDFBE, $0000) ; Room $1F persistent: Ice Palace (Pengator / Big Key Room)
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_ice_last_two_screens:
%write16($7E0542, $1858) ; Object tilemap state
%write16($7E0546, $1CA4) ; Object tilemap state
%write16($7EF0BC, $0003) ; Room $005E: Ice Palace (Lonely Firebar) (...............q)
%write16($7EF0FC, $0002) ; Room $007E: Ice Palace (Hidden Chest / Bombable Floor Room) (...............q)
%write16($7EF13C, $0003) ; Room $009E: Ice Palace (Big Chest Room) (...............q)
%write16($7FDFFC, $0000) ; Room $3E persistent: Ice Palace (Stalfos Knights / Conveyor Hellway)
%write16($7E0540, $13A4) ; Object tilemap state
%write16($7E0544, $179C) ; Object tilemap state
%write16($7E0548, $5764) ; Object tilemap state
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_ice_kholdstare:
%write16($7E0542, $0850) ; Object tilemap state
%write16($7E0546, $0BD0) ; Object tilemap state
%write16($7E054A, $0CD0) ; Object tilemap state
%write16($7E054E, $0AD0) ; Object tilemap state
%write16($7E0552, $0C70) ; Object tilemap state
%write16($7E0556, $0AF0) ; Object tilemap state
%write16($7E055A, $0870) ; Object tilemap state
%write16($7E055E, $0970) ; Object tilemap state
%write16($7EF17C, $0001) ; Room $00BE: Ice Palace (Block Puzzle Room) (................)
%write16($7EF19C, $0004) ; Room $00CE: Ice Palace (Hole to Kholdstare Room) (..............q.)
%write8($7EF36E, $80) ; Magic Power
%write16($7FE05C, $0000) ; Room $6E persistent: Ice Palace (Pengators Room)
%write16($7E0540, $084C) ; Object tilemap state
%write16($7E0544, $0BCC) ; Object tilemap state
%write16($7E0548, $0CCC) ; Object tilemap state
%write16($7E054C, $0ACC) ; Object tilemap state
%write16($7E0550, $0C6C) ; Object tilemap state
%write16($7E0554, $0AEC) ; Object tilemap state
%write16($7E0558, $086C) ; Object tilemap state
%write16($7E055C, $096C) ; Object tilemap state
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_swamp_outside_ice:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7E055A, $0000) ; Object tilemap state
%write16($7E055E, $0000) ; Object tilemap state
%write8($7EF36F, $FF) ; Keys
%write16($7EF1BC, $0804) ; Room $00DE: Ice Palace (Kholdstare[Boss]) (.....k........q.)
%write8($7EF36C, $50) ; Health (goal)
%write8($7EF36D, $50) ; Health (actual)
%write8($7EF385, $00) ; Key for dungeon $09
%write16($7EF3F5, $0000) ; Deaths
%write8($7EF37A, $66) ; Crystals
%write8($7E0303, $14) ; Selected menu item
%write8($7FDFF9, $42) ; Overworld $3C persistent: Great Swamp SE
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write16($7E055C, $0000) ; Object tilemap state
%write8($7E0202, $14) ; Selected menu item
%write8($7FDFDA, $D4) ; Overworld $2D persistent: Bridge to Hyrule Castle
%write8($7FE01B, $42) ; Overworld $4D persistent: UNKNOWN
%write8($7E02A2, $00) ; Arc variable
.after

sram_nmg_swamp_links_house:
%write8($7E1ABF, $B8) ; Warp Vortex Coordinate
%write8($7E1ACF, $0C) ; Warp Vortex Coordinate
%write8($7E1ADF, $CB) ; Warp Vortex Coordinate
%write8($7E1AEF, $0D) ; Warp Vortex Coordinate
%write8($7EF3CA, $00) ; LW/DW
%write8($7E0303, $08) ; Selected menu item
%write8($7FDFF9, $00) ; Overworld $3C persistent: Great Swamp SE
%write8($7E0202, $0D) ; Selected menu item
%write8($7FDFDA, $00) ; Overworld $2D persistent: Bridge to Hyrule Castle
%write8($7FE01B, $00) ; Overworld $4D persistent: UNKNOWN
%write8($7E02A2, $FC) ; Arc variable
.after

sram_nmg_swamp_swamp_overworld:
%write8($7EF3CA, $40) ; LW/DW
%write8($7FE147, $AB) ; Overworld $E3 persistent: UNKNOWN
%write8($7E0303, $04) ; Selected menu item
%write8($7FE164, $A9) ; Overworld $F2 persistent: UNKNOWN
%write8($7FE059, $13) ; Overworld $6C persistent: Dark Link's House
%write8($7E0202, $0C) ; Selected menu item
%write16($7EC172, $00A0) ; Crystal switch state
%write8($7E02A2, $A8) ; Arc variable
.after

sram_nmg_swamp_antifairy_room:
%write8($7E1ABF, $7C) ; Warp Vortex Coordinate
%write8($7E1ACF, $07) ; Warp Vortex Coordinate
%write8($7E1ADF, $07) ; Warp Vortex Coordinate
%write8($7E1AEF, $0F) ; Warp Vortex Coordinate
%write8($7EF3CA, $00) ; LW/DW
%write8($7FE147, $00) ; Overworld $E3 persistent: UNKNOWN
%write8($7FE153, $D3) ; Overworld $E9 persistent: UNKNOWN
%write8($7E0303, $14) ; Selected menu item
%write8($7FE07C, $09) ; Overworld $7E persistent: UNKNOWN
%write8($7FE164, $EC) ; Overworld $F2 persistent: UNKNOWN
%write8($7FE059, $00) ; Overworld $6C persistent: Dark Link's House
%write8($7E0202, $14) ; Selected menu item
%write16($7EC172, $0020) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_swamp_entrance:
%write16($7E0542, $193E) ; Object tilemap state
%write8($7EF2BB, $20) ; Overworld $3B: Unknown (...?....)
%write8($7EF2FB, $20) ; Overworld $7B: Unknown (...?....)
%write8($7E0B36, $00) ; Arc variable
%write16($7EF216, $008F) ; Room $010B: Unknown (.........c...qqq)
%write8($7EF3CA, $40) ; LW/DW
%write8($7FE153, $00) ; Overworld $E9 persistent: UNKNOWN
%write8($7FE07C, $00) ; Overworld $7E persistent: UNKNOWN
%write8($7FE164, $00) ; Overworld $F2 persistent: UNKNOWN
%write8($7FE07D, $13) ; Overworld $7E persistent: UNKNOWN
%write16($7E0540, $193A) ; Object tilemap state
%write16($7E0544, $1842) ; Object tilemap state
%write8($7FE126, $AB) ; Overworld $D3 persistent: UNKNOWN
%write8($7E0B37, $00) ; Arc variable
%write8($7EF051, $01) ; Room $0028: Swamp Palace (Entrance Room) (................)
%write8($7FE0E2, $AA) ; Overworld $B1 persistent: UNKNOWN
%write16($7EC172, $0000) ; Crystal switch state
%write8($7E0B0C, $F0) ; Arc variable
%write8($7E010E, $4E) ; Dungeon entrance index
.after

sram_nmg_swamp_first_key_pot:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7EF36F, $0000) ; Keys
%write16($7EF050, $811F) ; Room $0028: Swamp Palace (Entrance Room) (.d......c...qqqq)
%write16($7FDFD0, $000E) ; Room $28 persistent: Swamp Palace (Entrance Room)
%write8($7FE07D, $00) ; Room $7E persistent: Ice Palace (Hidden Chest / Bombable Floor Room)
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7FE126, $00) ; Room $D3 persistent: Empty Clone Room
%write8($7FE0E2, $00) ; Room $B1 persistent: Misery Mire (Hourglass Room)
%write8($7E010E, $25) ; Dungeon entrance index
.after

sram_nmg_swamp_hallway_key_1:
%write16($7E0542, $0520) ; Object tilemap state
%write16($7E0546, $1430) ; Object tilemap state
%write8($7EF343, $01) ; Bombs
%write16($7EF070, $440A) ; Room $0038: Swamp Palace (Key Pot Room) (..d...K......q.q)
%write16($7EF06E, $1003) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (....b..........q)
%write8($7E0303, $04) ; Selected menu item
%write16($7E0540, $0420) ; Object tilemap state
%write16($7E0544, $0620) ; Object tilemap state
%write16($7E0548, $063C) ; Object tilemap state
%write8($7E0202, $0C) ; Selected menu item
.after

sram_nmg_swamp_water_lever_1:
%write16($7EF06E, $340F) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (...db.K......qqq)
.after

sram_nmg_swamp_main_hub:
%write16($7EF06E, $348F) ; Room $0037: Swamp Palace (Map Chest / Water Fill Room) (...db.K..c...qqq)
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_swamp_water_lever_2:
%write16($7E0542, $0F9A) ; Object tilemap state
%write16($7E0546, $05C0) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write16($7E054E, $1072) ; Object tilemap state
%write8($7E0B35, $CA) ; Arc variable
%write16($7EF06C, $200F) ; Room $0036: Swamp Palace (Big Chest Room) (...d.........qqq)
%write8($7E0B36, $C5) ; Arc variable
%write16($7EF06A, $040F) ; Room $0035: Swamp Palace (Big Key / BS Room) (......K......qqq)
%write16($7FDFD0, $0000) ; Room $28 persistent: Swamp Palace (Entrance Room)
%write16($7FDFEC, $0031) ; Room $36 persistent: Swamp Palace (Big Chest Room)
%write16($7E0540, $100A) ; Object tilemap state
%write16($7E0544, $05BC) ; Object tilemap state
%write16($7E0548, $046C) ; Object tilemap state
%write16($7E054C, $0FDE) ; Object tilemap state
%write8($7E0B33, $C5) ; Arc variable
%write8($7E0B37, $D3) ; Arc variable
%write8($7E0B0C, $A0) ; Arc variable
%write8($7E0B34, $CE) ; Arc variable
.after

sram_nmg_swamp_sociable_firebar:
%write16($7E0542, $085C) ; Object tilemap state
%write16($7E0546, $572A) ; Object tilemap state
%write16($7E054A, $5922) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0B35, $B8) ; Arc variable
%write16($7EF068, $000F) ; Room $0034: Swamp Palace (Push Block Puzzle / Pre-Big Key Room) (.............qqq)
%write8($7E0B36, $B9) ; Arc variable
%write16($7EF06A, $848F) ; Room $0035: Swamp Palace (Big Key / BS Room) (.d....K..c...qqq)
%write16($7E0540, $084E) ; Object tilemap state
%write16($7E0544, $5722) ; Object tilemap state
%write16($7E0548, $5726) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0B33, $C3) ; Arc variable
%write8($7E0B37, $BA) ; Arc variable
%write8($7E0B34, $BE) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_swamp_backtracking:
%write16($7E0542, $0818) ; Object tilemap state
%write16($7E0546, $0820) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C4C) ; Object tilemap state
%write16($7E0552, $1B64) ; Object tilemap state
%write16($7E0556, $1CF2) ; Object tilemap state
%write16($7EF0A8, $000F) ; Room $0054: Swamp Palace (Upstairs Pits Room) (.............qqq)
%write16($7EF06A, $849F) ; Room $0035: Swamp Palace (Big Key / BS Room) (.d....K..c..qqqq)
%write16($7EF366, $76B0) ; BigKey1
%write16($7E0540, $0814) ; Object tilemap state
%write16($7E0544, $081C) ; Object tilemap state
%write16($7E0548, $0824) ; Object tilemap state
%write16($7E054C, $174C) ; Object tilemap state
%write16($7E0550, $16F0) ; Object tilemap state
%write16($7E0554, $1758) ; Object tilemap state
%write16($7E0558, $063C) ; Object tilemap state
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_swamp_hook_shot:
%write8($7E0FC8, $03) ; Prize pack index
%write16($7FDFE8, $0001) ; Room $34 persistent: Swamp Palace (Push Block Puzzle / Pre-Big Key Room)
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_swamp_hookdash:
%write16($7E0542, $0F9A) ; Object tilemap state
%write16($7E0546, $05C0) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write16($7E054E, $1072) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7E0B35, $CD) ; Arc variable
%write16($7EF06C, $641F) ; Room $0036: Swamp Palace (Big Chest Room) (..dd..K.....qqqq)
%write8($7E0B36, $D4) ; Arc variable
%write8($7EF342, $01) ; Hookshot
%write8($7E0303, $0E) ; Selected menu item
%write16($7E0540, $100A) ; Object tilemap state
%write16($7E0544, $05BC) ; Object tilemap state
%write16($7E0548, $046C) ; Object tilemap state
%write16($7E054C, $0FDE) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7E0558, $0000) ; Object tilemap state
%write8($7E0202, $03) ; Selected menu item
%write8($7E0B33, $E8) ; Arc variable
%write8($7E0B37, $ED) ; Arc variable
%write8($7E0B34, $DB) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_swamp_water_lever_3:
%write16($7E0542, $041C) ; Object tilemap state
%write16($7E0546, $1A16) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0B35, $BC) ; Arc variable
%write8($7EF377, $15) ; Arrows
%write16($7EF04C, $8007) ; Room $0026: Swamp Palace (Statue Room) (.d............qq)
%write8($7E0B36, $C3) ; Arc variable
%write16($7FDFCC, $0400) ; Room $26 persistent: Swamp Palace (Statue Room)
%write16($7FDFEC, $0000) ; Room $36 persistent: Swamp Palace (Big Chest Room)
%write16($7E0540, $080C) ; Object tilemap state
%write16($7E0544, $1396) ; Object tilemap state
%write16($7E0548, $1ADC) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0B33, $D7) ; Arc variable
%write8($7E0B37, $DC) ; Arc variable
%write8($7E0B34, $CA) ; Arc variable
.after

sram_nmg_swamp_restock:
%write16($7E0542, $0654) ; Object tilemap state
%write16($7E0546, $0668) ; Object tilemap state
%write16($7E054A, $2630) ; Object tilemap state
%write16($7E054E, $2634) ; Object tilemap state
%write16($7E0552, $2638) ; Object tilemap state
%write8($7E0B35, $2A) ; Arc variable
%write16($7EF0CC, $0003) ; Room $0066: Swamp Palace (Hidden Chest / Hidden Door Room) (...............q)
%write16($7EF0EC, $008E) ; Room $0076: Swamp Palace (Water Drain Room) (.........c...qqq)
%write8($7E0B36, $24) ; Arc variable
%write16($7FDFE8, $0000) ; Room $34 persistent: Swamp Palace (Push Block Puzzle / Pre-Big Key Room)
%write16($7FE04C, $0080) ; Room $66 persistent: Swamp Palace (Hidden Chest / Hidden Door Room)
%write16($7FE06C, $0002) ; Room $76 persistent: Swamp Palace (Water Drain Room)
%write16($7E0540, $0554) ; Object tilemap state
%write16($7E0544, $0568) ; Object tilemap state
%write16($7E0548, $2530) ; Object tilemap state
%write16($7E054C, $2534) ; Object tilemap state
%write16($7E0550, $2538) ; Object tilemap state
%write16($7E0554, $383C) ; Object tilemap state
%write8($7E0B37, $1B) ; Arc variable
.after

sram_nmg_swamp_phelps_way:
%write16($7E0542, $03C0) ; Object tilemap state
%write16($7E0546, $04C0) ; Object tilemap state
%write16($7E054A, $05C0) ; Object tilemap state
%write16($7E054E, $06C0) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write8($7E0B35, $A9) ; Arc variable
%write8($7EF343, $02) ; Bombs
%write16($7EF02C, $000C) ; Room $0016: Swamp Palace (Swimming Treadmill) (.............qq.)
%write16($7EF0CC, $000F) ; Room $0066: Swamp Palace (Hidden Chest / Hidden Door Room) (.............qqq)
%write8($7E0B36, $A3) ; Arc variable
%write16($7E0540, $03BC) ; Object tilemap state
%write16($7E0544, $04BC) ; Object tilemap state
%write16($7E0548, $05BC) ; Object tilemap state
%write16($7E054C, $06BC) ; Object tilemap state
%write16($7E0550, $13F0) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E0B37, $9A) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_swamp_arrghus:
%write16($7EF02C, $440F) ; Room $0016: Swamp Palace (Swimming Treadmill) (..d...K......qqq)
%write8($7EF36D, $48) ; Health (actual)
%write16($7FDFAC, $0004) ; Room $16 persistent: Swamp Palace (Swimming Treadmill)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_mire_outside_swamp:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0B09, $03) ; Arc variable
%write8($7E0B31, $94) ; Arc variable
%write8($7E0B35, $71) ; Arc variable
%write8($7E0B39, $88) ; Arc variable
%write8($7EF36F, $FF) ; Keys
%write16($7EF00C, $0802) ; Room $0006: Swamp Palace (Arrghus[Boss]) (.....k.........q)
%write8($7E0B32, $91) ; Arc variable
%write8($7E0B36, $74) ; Arc variable
%write8($7E0B3A, $81) ; Arc variable
%write8($7EF36C, $58) ; Health (goal)
%write8($7EF36D, $58) ; Health (actual)
%write8($7EF381, $00) ; Key for dungeon $05
%write16($7EF3ED, $0000) ; Deaths
%write8($7EF37A, $76) ; Crystals
%write8($7E0303, $05) ; Selected menu item
%write8($7FDFAC, $00) ; Overworld $16 persistent: Witch's Hut
%write8($7FDFCC, $00) ; Overworld $26 persistent: UNKNOWN
%write8($7FE04C, $00) ; Overworld $66 persistent: UNKNOWN
%write8($7FE06C, $00) ; Overworld $76 persistent: UNKNOWN
%write8($7FE07D, $13) ; Overworld $7E persistent: UNKNOWN
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write8($7FE126, $AB) ; Overworld $D3 persistent: UNKNOWN
%write8($7E0202, $06) ; Selected menu item
%write8($7E0B33, $85) ; Arc variable
%write8($7E0B37, $7E) ; Arc variable
%write8($7E0B3B, $79) ; Arc variable
%write8($7FE0E2, $AA) ; Overworld $B1 persistent: UNKNOWN
%write8($7E02A2, $00) ; Arc variable
%write8($7E0B08, $AE) ; Arc variable
%write8($7E0B0C, $01) ; Arc variable
%write8($7E0B30, $8B) ; Arc variable
%write8($7E0B34, $78) ; Arc variable
%write8($7E0B38, $84) ; Arc variable
%write8($7E0B3C, $7B) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_mire_dm:
%write8($7EF2BB, $00) ; Overworld $3B: Unknown (........)
%write8($7EF2FB, $00) ; Overworld $7B: Unknown (........)
%write8($7E1ADF, $FD) ; Warp Vortex Coordinate
%write8($7E1AEF, $0E) ; Warp Vortex Coordinate
%write8($7EF216, $0F) ; Room $010B: Unknown (.............qqq)
%write8($7EF3CA, $00) ; LW/DW
%write8($7E0303, $0E) ; Selected menu item
%write8($7FE07D, $00) ; Overworld $7E persistent: UNKNOWN
%write8($7FE126, $00) ; Overworld $D3 persistent: UNKNOWN
%write8($7E0202, $03) ; Selected menu item
%write8($7E0B37, $00) ; Arc variable
%write8($7EF051, $80) ; Room $0028: Swamp Palace (Entrance Room) (.........c......)
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write8($7FE0E2, $00) ; Overworld $B1 persistent: UNKNOWN
%write8($7E02A2, $FE) ; Arc variable
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_mire_free_flutedash:
%write8($7EF348, $01) ; Ether Medallion
%write8($7E1ABF, $1C) ; Warp Vortex Coordinate
%write8($7E1ACF, $08) ; Warp Vortex Coordinate
%write8($7E1ADF, $3D) ; Warp Vortex Coordinate
%write8($7E1AEF, $01) ; Warp Vortex Coordinate
%write8($7E0303, $0C) ; Selected menu item
%write8($7E0202, $0F) ; Selected menu item
%write8($7E02A2, $0F) ; Arc variable
.after

sram_nmg_mire_darkworld_warp:
%write8($7E0303, $08) ; Selected menu item
%write8($7E0202, $0D) ; Selected menu item
%write8($7FDFCB, $00) ; Overworld $25 persistent: Octorok Area
%write8($7E02A2, $F7) ; Arc variable
; Manual changes:
%write8($7E02A2, $8B) ; Altitude
%write8($7EF346, $01) ; Ice Rod
.after

sram_nmg_mire_entrance:
%write8($7EF2F0, $20) ; Overworld $70: Unknown (...?....)
%write8($7EF36E, $60) ; Magic Power
%write8($7EF3CA, $40) ; LW/DW
%write8($7E0303, $10) ; Selected menu item
%write8($7E0202, $09) ; Selected menu item
%write8($7E02A2, $8B) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_mire_mire2:
%write8($7EF36F, $00) ; Keys
%write16($7EF130, $0003) ; Room $0098: Misery Mire (Entrance Room) (...............q)
%write8($7E0303, $05) ; Selected menu item
%write8($7E0202, $06) ; Selected menu item
%write8($7E010E, $27) ; Dungeon entrance index
.after

sram_nmg_mire_main_hub:
%write8($7E0FC8, $04) ; Prize pack index
%write16($7EF1A4, $000F) ; Room $00D2: Misery Mire (Mire02 / Wizzrobes Room) (.............qqq)
%write8($7EF36E, $50) ; Magic Power
%write16($7E0468, $0000) ; Trap door state
%write16($7FE124, $03EF) ; Room $D2 persistent: Misery Mire (Mire02 / Wizzrobes Room)
.after

sram_nmg_mire_beat_the_fireball:
%write16($7E0542, $2930) ; Object tilemap state
%write16($7E0546, $284C) ; Object tilemap state
%write16($7E054A, $2A4C) ; Object tilemap state
%write8($7EF36F, $01) ; Keys
%write16($7EF164, $0001) ; Room $00B2: Misery Mire (Slug Room) (................)
%write16($7EF184, $000F) ; Room $00C2: Misery Mire (Big Hub Room) (.............qqq)
%write16($7EF166, $0402) ; Room $00B3: Misery Mire (Spike Key Chest Room) (......K........q)
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $2830) ; Object tilemap state
%write16($7E0544, $2A30) ; Object tilemap state
%write16($7E0548, $294C) ; Object tilemap state
%write16($7E054C, $175E) ; Object tilemap state
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_mire_bari_key:
%write16($7E0542, $3044) ; Object tilemap state
%write16($7E0546, $07B4) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7EF36F, $0000) ; Keys
%write16($7EF184, $400F) ; Room $00C2: Misery Mire (Big Hub Room) (..d..........qqq)
%write16($7E0540, $2E64) ; Object tilemap state
%write16($7E0544, $3440) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_mire_sluggulas:
%write16($7E0542, $1430) ; Object tilemap state
%write16($7E0546, $1C30) ; Object tilemap state
%write16($7EF182, $C403) ; Room $00C1: Misery Mire (Compass Chest / Tile Room) (.dd...K........q)
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write16($7FE124, $0000) ; Room $D2 persistent: Misery Mire (Mire02 / Wizzrobes Room)
%write8($7E0B37, $9E) ; Arc variable
%write16($7FE102, $0200) ; Room $C1 persistent: Misery Mire (Compass Chest / Tile Room)
%write8($7EC172, $01) ; Crystal switch state
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_mire_torches:
%write16($7E0542, $0430) ; Object tilemap state
%write16($7E0546, $0C70) ; Object tilemap state
%write16($7E054A, $0470) ; Object tilemap state
%write8($7EF373, $6F) ; Magic filler
%write8($7E0FCA, $03) ; Prize pack index
%write16($7EF1A2, $0008) ; Room $00D1: Misery Mire (Conveyor Slug / Big Key Room) (.............q..)
%write8($7EF36E, $51) ; Magic Power
%write16($7E0540, $07A8) ; Object tilemap state
%write16($7E0544, $0C4C) ; Object tilemap state
%write16($7E0548, $044C) ; Object tilemap state
%write8($7E0B37, $91) ; Arc variable
%write8($7E002F, $00) ; Link's direction
%write16($7FE122, $0040) ; Room $D1 persistent: Misery Mire (Conveyor Slug / Big Key Room)
.after

sram_nmg_mire_spark_gamble:
%write16($7E0542, $1430) ; Object tilemap state
%write16($7E0546, $1C30) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write8($7EF373, $00) ; Magic filler
%write16($7EF12E, $010F) ; Room $0097: Misery Mire (Torch Puzzle / Moving Wall Room) (........c....qqq)
%write16($7EF162, $0007) ; Room $00B1: Misery Mire (Hourglass Room) (..............qq)
%write16($7EF182, $C407) ; Room $00C1: Misery Mire (Compass Chest / Tile Room) (.dd...K.......qq)
%write16($7EF1A2, $001B) ; Room $00D1: Misery Mire (Conveyor Slug / Big Key Room) (............qq.q)
%write16($7EF366, $77B0) ; BigKey1
%write8($7EF36E, $40) ; Magic Power
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E0CC3, $01) ; Sprite drop
%write8($7E0B37, $00) ; Arc variable
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_mire_big_chest_room:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF36D, $50) ; Health (actual)
%write16($7EF186, $000A) ; Room $00C3: Misery Mire (Big Chest Room) (.............q.q)
%write8($7E0303, $0E) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0202, $03) ; Selected menu item
%write8($7E0B37, $A0) ; Arc variable
%write16($7FE102, $0000) ; Room $C1 persistent: Misery Mire (Compass Chest / Tile Room)
%write16($7FE122, $0000) ; Room $D1 persistent: Misery Mire (Conveyor Slug / Big Key Room)
.after

sram_nmg_mire_spike_key:
%write8($7EF350, $01) ; Cane of Somaria
%write16($7EF186, $001F) ; Room $00C3: Misery Mire (Big Chest Room) (............qqqq)
%write8($7E0B37, $00) ; Arc variable
%write8($7E0B3F, $01) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_mire_wizzrobe:
%write16($7E0542, $1430) ; Object tilemap state
%write8($7EF36D, $38) ; Health (actual)
%write16($7EF166, $841A) ; Room $00B3: Misery Mire (Spike Key Chest Room) (.d....K.....qq.q)
%write16($7E0540, $140C) ; Object tilemap state
%write16($7E0544, $1C30) ; Object tilemap state
%write8($7E0CC3, $00) ; Sprite drop
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_mire_basement:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7EF144, $800F) ; Room $00A2: Misery Mire (Bridge Key Chest Room) (.d...........qqq)
%write16($7EF164, $800D) ; Room $00B2: Misery Mire (Slug Room) (.d...........qq.)
%write16($7EF360, $0065) ; Rupees (goal)
%write16($7EF362, $0065) ; Rupees (actual)
%write16($7FE0E4, $0001) ; Room $B2 persistent: Misery Mire (Slug Room)
%write16($7E0540, $1C0C) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_mire_spooky_action_1:
%write16($7E0542, $0760) ; Object tilemap state
%write16($7E0546, $17A0) ; Object tilemap state
%write16($7E054A, $18A0) ; Object tilemap state
%write16($7EF126, $000E) ; Room $0093: Misery Mire (Dark Cane Floor Switch Puzzle Room) (.............qqq)
%write8($7EF36E, $38) ; Magic Power
%write8($7E0303, $12) ; Selected menu item
%write16($7E0540, $071C) ; Object tilemap state
%write16($7E0544, $179C) ; Object tilemap state
%write16($7E0548, $189C) ; Object tilemap state
%write8($7E0202, $11) ; Selected menu item
%write8($7E02A2, $00) ; Arc variable
%write8($7E002F, $04) ; Link's direction
; Manual changes:
%write8($7E02A2, $8B) ; Altitude
%write8($7E0202, $06) ; Selected menu item
%write8($7E0303, $05) ; Selected menu item
.after

sram_nmg_mire_spooky_action_2:
%write16($7E0542, $175C) ; Object tilemap state
%write16($7E0546, $1768) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7EF124, $0005) ; Room $0092: Misery Mire (Dark Bomb Wall / Switches Room) (..............q.)
%write8($7EF36E, $30) ; Magic Power
%write8($7E0303, $01) ; Selected menu item
%write16($7E0540, $1756) ; Object tilemap state
%write16($7E0544, $1762) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
%write8($7E0B37, $17) ; Arc variable
%write8($7E0B3F, $00) ; Arc variable
%write8($7EC172, $00) ; Crystal switch state
; Manual changes:
%write8($7E02A2, $8B) ; Altitude
%write8($7E0202, $06) ; Selected menu item
%write8($7E0303, $05) ; Selected menu item
.after

sram_nmg_mire_vitty:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF343, $01) ; Bombs
%write8($7EF377, $14) ; Arrows
%write16($7EF124, $400F) ; Room $0092: Misery Mire (Dark Bomb Wall / Switches Room) (..d..........qqq)
%write16($7EF140, $800F) ; Room $00A0: Misery Mire (Pre-Vitreous Room) (.d...........qqq)
%write16($7EF122, $0005) ; Room $0091: Misery Mire (Final Switch Room) (..............q.)
%write8($7EF36E, $40) ; Magic Power
%write8($7E0303, $03) ; Selected menu item
%write16($7FE0A4, $0200) ; Room $92 persistent: Misery Mire (Dark Bomb Wall / Switches Room)
%write16($7FE0E4, $0000) ; Room $B2 persistent: Misery Mire (Slug Room)
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0202, $01) ; Selected menu item
%write8($7E0B37, $1D) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_trock_outside_mire:
%write8($7EF36F, $FF) ; Keys
%write8($7EF377, $0C) ; Arrows
%write8($7EF383, $00) ; Key for dungeon $07
%write16($7EF120, $0802) ; Room $0090: Misery Mire (Vitreous[Boss]) (.....k.........q)
%write8($7EF36C, $60) ; Health (goal)
%write8($7EF36D, $60) ; Health (actual)
%write16($7EF3F1, $0000) ; Deaths
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $77) ; Crystals
%write8($7E0303, $14) ; Selected menu item
%write8($7FE0A4, $00) ; Overworld $92 persistent: UNKNOWN
%write8($7E0202, $14) ; Selected menu item
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_trock_icerod_overworld:
%write8($7E1ABF, $28) ; Warp Vortex Coordinate
%write8($7E1ACF, $01) ; Warp Vortex Coordinate
%write8($7E1ADF, $DA) ; Warp Vortex Coordinate
%write8($7E1AEF, $0C) ; Warp Vortex Coordinate
%write8($7EF3CA, $00) ; LW/DW
%write8($7E0303, $08) ; Selected menu item
%write8($7E0202, $0D) ; Selected menu item
%write8($7FE0D6, $0B) ; Overworld $AB persistent: UNKNOWN
%write8($7E02A2, $38) ; Arc variable
%write8($7FE047, $BB) ; Overworld $63 persistent: UNKNOWN
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_trock_dm:
%write8($7EF2B7, $02) ; Overworld $37: Unknown (.......?)
%write8($7EF343, $00) ; Bombs
%write16($7EF240, $001A) ; Room $0120: Unknown (............qq.q)
%write8($7EF346, $01) ; Ice Rod
%write8($7E029F, $FF) ; Arc variable
%write8($7E0B37, $00) ; Arc variable
%write8($7FDFCB, $F3) ; Overworld $25 persistent: Octorok Area
%write8($7FE0D6, $00) ; Overworld $AB persistent: UNKNOWN
%write8($7E02A2, $FE) ; Arc variable
%write8($7FE047, $00) ; Overworld $63 persistent: UNKNOWN
%write8($7E002F, $06) ; Link's direction
%write8($7E010E, $84) ; Dungeon entrance index
.after

sram_nmg_trock_squirrels:
%write16($7EF1BE, $0003) ; Room $00DF: Cave (...............q)
%write16($7EF1DE, $0003) ; Room $00EF: Cave (Crystal Switch / 5 Chests Room) (...............q)
%write8($7E0303, $0E) ; Selected menu item
%write8($7E0202, $03) ; Selected menu item
%write8($7FDFCB, $00) ; Room $25 persistent: Empty Clone Room
%write8($7E02A2, $84) ; Arc variable
%write8($7E002F, $02) ; Link's direction
%write8($7E010E, $1F) ; Dungeon entrance index
%write16($7FE13E, $0003) ; Room $DF persistent: Cave
.after

sram_nmg_trock_peg_puzzle:
%write8($7FE17F, $CA) ; Overworld $FF persistent: UNKNOWN
%write8($7FE1BF, $EC) ; Overworld $11F persistent: UNKNOWN
%write8($7FE058, $CA) ; Overworld $6C persistent: Dark Link's House
%write8($7FE16E, $28) ; Overworld $F7 persistent: UNKNOWN
%write8($7FE037, $28) ; Overworld $5B persistent: Pyramid of Power
%write8($7E002F, $06) ; Link's direction
%write8($7FE13E, $00) ; Overworld $DF persistent: UNKNOWN
.after

sram_nmg_trock_entrance:
%write16($7EF287, $0020) ; Overworld $07: Unknown (...?....)
%write8($7EF2C7, $20) ; Overworld $47: Unknown (...?....)
%write8($7EF36E, $60) ; Magic Power
%write8($7EF3CA, $40) ; LW/DW
%write8($7FE17F, $00) ; Overworld $FF persistent: UNKNOWN
%write8($7FE1BF, $00) ; Overworld $11F persistent: UNKNOWN
%write8($7E0303, $12) ; Selected menu item
%write8($7FE058, $00) ; Overworld $6C persistent: Dark Link's House
%write8($7E0202, $11) ; Selected menu item
%write8($7FE16E, $00) ; Overworld $F7 persistent: UNKNOWN
%write8($7FE037, $00) ; Overworld $5B persistent: Pyramid of Power
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_trock_torches:
%write16($7E0542, $190C) ; Object tilemap state
%write8($7EF343, $01) ; Bombs
%write8($7EF36F, $00) ; Keys
%write8($7E0FCC, $06) ; Prize pack index
%write16($7EF18C, $000F) ; Room $00C6: Turtle Rock (.............qqq)
%write16($7EF1AC, $8005) ; Room $00D6: Turtle Rock (Entrance Room) (.d............q.)
%write8($7EF36E, $70) ; Magic Power
%write16($7FE10C, $0028) ; Room $C6 persistent: Turtle Rock
%write16($7E0540, $070C) ; Object tilemap state
%write8($7E02A2, $00) ; Arc variable
%write8($7E002F, $06) ; Link's direction
%write8($7E010E, $35) ; Dungeon entrance index
.after

sram_nmg_trock_roller_room:
%write16($7E0542, $0B0C) ; Object tilemap state
%write16($7E0546, $160C) ; Object tilemap state
%write16($7E054A, $894A) ; Object tilemap state
%write16($7E054E, $8DCA) ; Object tilemap state
%write8($7EF36D, $58) ; Health (actual)
%write16($7EF18E, $000F) ; Room $00C7: Turtle Rock (Torch Puzzle) (.............qqq)
%write8($7EF36E, $38) ; Magic Power
%write8($7E0303, $0E) ; Selected menu item
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0A0C) ; Object tilemap state
%write16($7E0544, $1C0C) ; Object tilemap state
%write16($7E0548, $8932) ; Object tilemap state
%write16($7E054C, $8DB2) ; Object tilemap state
%write8($7E0202, $03) ; Selected menu item
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_trock_pokey_0:
%write16($7E0542, $190C) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7EF18C, $800F) ; Room $00C6: Turtle Rock (.d...........qqq)
%write8($7EF36D, $40) ; Health (actual)
%write16($7EF16E, $002A) ; Room $00B7: Turtle Rock (Map Chest / Key Chest / Roller Room) (...........c.q.q)
%write8($7EF36E, $30) ; Magic Power
%write8($7E0303, $12) ; Selected menu item
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $070C) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0202, $11) ; Selected menu item
.after

sram_nmg_trock_chomps:
%write16($7E0542, $0A96) ; Object tilemap state
%write16($7EF16C, $3402) ; Room $00B6: Turtle Rock (Chain Chomps Room) (...db.K........q)
%write8($7EF36D, $48) ; Health (actual)
%write8($7EF372, $30) ; Hearts filler
%write16($7FE0EC, $0020) ; Room $B6 persistent: Turtle Rock (Chain Chomps Room)
%write16($7E0540, $095E) ; Object tilemap state
%write16($7E0544, $0AA6) ; Object tilemap state
%write8($7E0FCD, $02) ; Prize pack index
.after

sram_nmg_trock_pokey_1:
%write16($7E0542, $0000) ; Object tilemap state
%write8($7EF377, $11) ; Arrows
%write16($7EF028, $000F) ; Room $0014: Turtle Rock (Big Key Room) (.............qqq)
%write16($7EF16C, $B41A) ; Room $00B6: Turtle Rock (Chain Chomps Room) (.d.db.K.....qq.q)
%write8($7EF36D, $60) ; Health (actual)
%write16($7EF02A, $000F) ; Room $0015: Turtle Rock (.............qqq)
%write8($7EF36E, $28) ; Magic Power
%write8($7EF372, $00) ; Hearts filler
%write16($7FE10C, $0000) ; Room $C6 persistent: Turtle Rock
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7EC172, $01) ; Crystal switch state
%write8($7E002F, $04) ; Link's direction
; Manual changes:
%write8($7EC172, $00) ; Crystal switch state
.after

sram_nmg_trock_pokeys_2:
%write16($7EF028, $401F) ; Room $0014: Turtle Rock (Big Key Room) (..d.........qqqq)
%write16($7EF360, $0079) ; Rupees (goal)
%write16($7EF026, $8405) ; Room $0013: Turtle Rock (Hokku-Bokku Key Room 2) (.d....K.......q.)
%write16($7EF362, $0079) ; Rupees (actual)
%write16($7EF366, $77B8) ; BigKey1
%write8($7EF36E, $78) ; Magic Power
%write8($7E0FCD, $04) ; Prize pack index
%write16($7FDFA6, $0040) ; Room $13 persistent: Turtle Rock (Hokku-Bokku Key Room 2)
%write8($7EC172, $00) ; Crystal switch state
%write8($7E002F, $02) ; Link's direction
; Manual changes:
%write8($7EC172, $00) ; Crystal switch state
.after

sram_nmg_trock_crystal_roller:
%write16($7EF028, $C01F) ; Room $0014: Turtle Rock (Big Key Room) (.dd.........qqqq)
%write16($7EF048, $800C) ; Room $0024: Turtle Rock (Double Hokku-Bokku / Big chest Room) (.d...........qq.)
%write16($7FDFC8, $0028) ; Room $24 persistent: Turtle Rock (Double Hokku-Bokku / Big chest Room)
%write16($7FE0EC, $0000) ; Room $B6 persistent: Turtle Rock (Chain Chomps Room)
%write8($7E0FCD, $06) ; Prize pack index
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_trock_dark_room:
%write16($7E0542, $16A2) ; Object tilemap state
%write16($7E0546, $19A2) ; Object tilemap state
%write16($7E054A, $13F0) ; Object tilemap state
%write8($7E0B35, $00) ; Arc variable
%write16($7EF008, $C01A) ; Room $0004: Turtle Rock (Crysta-roller Room) (.dd.........qq.q)
%write8($7E0B36, $00) ; Arc variable
%write16($7E0540, $1698) ; Object tilemap state
%write16($7E0544, $1998) ; Object tilemap state
%write16($7E0548, $13CC) ; Object tilemap state
%write16($7E054C, $5A5E) ; Object tilemap state
%write8($7E0B33, $00) ; Arc variable
%write8($7E0B37, $62) ; Arc variable
%write8($7E0B3B, $00) ; Arc variable
%write8($7EC172, $01) ; Crystal switch state
%write8($7E0B0C, $A0) ; Arc variable
%write8($7E0B34, $00) ; Arc variable
%write8($7E0B3C, $00) ; Arc variable
.after

sram_nmg_trock_laser_skip:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write8($7EF36D, $58) ; Health (actual)
%write16($7EF16A, $000F) ; Room $00B5: Turtle Rock (Dark Maze) (.............qqq)
%write16($7EF18A, $000A) ; Room $00C5: Turtle Rock (Laser Bridge) (.............q.q)
%write8($7EF36E, $70) ; Magic Power
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0B37, $5F) ; Arc variable
%write16($7FDFA6, $0000) ; Room $13 persistent: Turtle Rock (Hokku-Bokku Key Room 2)
%write16($7FE10A, $0040) ; Room $C5 persistent: Turtle Rock (Laser Bridge)
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_trock_switch_room:
%write16($7EF18A, $800A) ; Room $00C5: Turtle Rock (Laser Bridge) (.d...........q.q)
%write16($7EF1AA, $008A) ; Room $00D5: Turtle Rock (Laser Key Room) (.........c...q.q)
%write16($7FDFC8, $0000) ; Room $24 persistent: Turtle Rock (Double Hokku-Bokku / Big chest Room)
%write8($7E002F, $04) ; Link's direction
%write16($7FE12A, $0010) ; Room $D5 persistent: Turtle Rock (Laser Key Room)
.after

sram_nmg_trock_trinexx:
%write16($7E0542, $1C30) ; Object tilemap state
%write16($7EF168, $800F) ; Room $00B4: Turtle Rock (Pre-Trinexx Room) (.d...........qqq)
%write16($7EF188, $800F) ; Room $00C4: Turtle Rock (Final Crystal Switch Puzzle Room) (.d...........qqq)
%write8($7EF36E, $60) ; Magic Power
%write16($7E0540, $1C2C) ; Object tilemap state
%write8($7E02A1, $00) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_gtower_outside_trock:
%write16($7E0542, $0000) ; Object tilemap state
%write8($7E0B09, $60) ; Arc variable
%write8($7EF36F, $FF) ; Keys
%write8($7EF3C7, $08) ; Map Phase
%write16($7EF3FB, $0000) ; Deaths
%write16($7EF148, $0802) ; Room $00A4: Turtle Rock (Trinexx[Boss]) (.....k.........q)
%write8($7EF36C, $68) ; Health (goal)
%write8($7EF36D, $68) ; Health (actual)
%write8($7EF36E, $80) ; Magic Power
%write8($7EF37A, $7F) ; Crystals
%write8($7E0303, $0E) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write8($7E0202, $03) ; Selected menu item
%write8($7FE10A, $00) ; Overworld $C5 persistent: UNKNOWN
%write8($7E0B08, $78) ; Arc variable
%write8($7E0B0C, $3C) ; Arc variable
%write8($7E002F, $02) ; Link's direction
%write8($7FE12A, $00) ; Overworld $D5 persistent: UNKNOWN
.after

sram_nmg_gtower_entrance:
%write8($7EF2C3, $20) ; Overworld $43: Unknown (...?....)
%write8($7E002F, $00) ; Link's direction
%write8($7E010E, $37) ; Dungeon entrance index
.after

sram_nmg_gtower_spike_skip:
%write16($7E0542, $171C) ; Object tilemap state
%write16($7E0546, $0864) ; Object tilemap state
%write16($7E054A, $085C) ; Object tilemap state
%write16($7E054E, $0C4C) ; Object tilemap state
%write16($7E0552, $144C) ; Object tilemap state
%write16($7E0556, $0864) ; Object tilemap state
%write8($7EF36F, $01) ; Keys
%write16($7EF018, $000F) ; Room $000C: Ganon's Tower (Entrance Room) (.............qqq)
%write16($7EF118, $0008) ; Room $008C: Ganon's Tower (East and West Downstairs / Big Chest Room) (.............q..)
%write16($7EF116, $0404) ; Room $008B: Ganon's Tower (Block Puzzle / Spike Skip / Map Chest Room) (......K.......q.)
%write8($7E0303, $04) ; Selected menu item
%write8($7E0468, $00) ; Trap door state
%write16($7E0540, $0920) ; Object tilemap state
%write16($7E0544, $1720) ; Object tilemap state
%write16($7E0548, $0760) ; Object tilemap state
%write16($7E054C, $0960) ; Object tilemap state
%write16($7E0550, $0C70) ; Object tilemap state
%write16($7E0554, $1C4C) ; Object tilemap state
%write8($7E0202, $0C) ; Selected menu item
%write8($7E0B37, $00) ; Arc variable
%write16($7EC172, $0000) ; Crystal switch state
%write16($7E0641, $0001) ; Room puzzle state (?)
%write8($7E0B0C, $50) ; Arc variable
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_gtower_pre_firesnakes_room:
%write16($7E0542, $0C30) ; Object tilemap state
%write16($7E0546, $1820) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write16($7EF116, $040E) ; Room $008B: Ganon's Tower (Block Puzzle / Spike Skip / Map Chest Room) (......K......qqq)
%write16($7EF136, $8408) ; Room $009B: Ganon's Tower (Many Spikes / Warp Maze Room) (.d....K......q..)
%write8($7E0303, $02) ; Selected menu item
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0430) ; Object tilemap state
%write16($7E0544, $181C) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write8($7E0202, $02) ; Selected menu item
%write8($7EC172, $01) ; Crystal switch state
%write8($7E0641, $00) ; Room puzzle state (?)
%write8($7E002F, $06) ; Link's direction
.after

sram_nmg_gtower_bombable_floor:
%write16($7E0542, $0938) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF377, $16) ; Arrows
%write16($7EF138, $000F) ; Room $009C: Ganon's Tower (Invisible Floor Maze Room) (.............qqq)
%write8($7EF36D, $60) ; Health (actual)
%write16($7EF0FA, $201E) ; Room $007D: Ganon's Tower (Winder / Warp Maze Room) (...d........qqqq)
%write16($7EF136, $840F) ; Room $009B: Ganon's Tower (Many Spikes / Warp Maze Room) (.d....K......qqq)
%write8($7E0303, $01) ; Selected menu item
%write16($7FE0B8, $0002) ; Room $9C persistent: Ganon's Tower (Invisible Floor Maze Room)
%write16($7E0540, $0838) ; Object tilemap state
%write16($7E0544, $0550) ; Object tilemap state
%write8($7E0202, $04) ; Selected menu item
%write8($7EC172, $00) ; Crystal switch state
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_gtower_ice_armos:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7EF038, $0001) ; Room $001C: Ganon's Tower (Ice Armos) (................)
%write16($7EF118, $0009) ; Room $008C: Ganon's Tower (East and West Downstairs / Big Chest Room) (.............q..)
%write8($7E029F, $00) ; Arc variable
%write8($7E0303, $05) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0202, $06) ; Selected menu item
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_gtower_floor_2:
%write8($7E0B09, $00) ; Arc variable
%write8($7E0B31, $BD) ; Arc variable
%write8($7E0B35, $70) ; Arc variable
%write8($7EF377, $0E) ; Arrows
%write16($7EF038, $0035) ; Room $001C: Ganon's Tower (Ice Armos) (...........cq.q.)
%write8($7E0B32, $90) ; Arc variable
%write8($7EF389, $01) ; Key for dungeon $0D
%write16($7EF366, $77BC) ; BigKey1
%write8($7E0303, $03) ; Selected menu item
%write8($7FE0B8, $00) ; Room $9C persistent: Ganon's Tower (Invisible Floor Maze Room)
%write8($7E0202, $01) ; Selected menu item
%write8($7E0B33, $52) ; Arc variable
%write8($7E0B37, $13) ; Arc variable
%write8($7E0B08, $40) ; Arc variable
%write8($7E0B30, $AD) ; Arc variable
%write8($7E0B34, $42) ; Arc variable
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_gtower_mimics1:
%write16($7E0542, $052C) ; Object tilemap state
%write16($7E0546, $082C) ; Object tilemap state
%write16($7E054A, $0B2C) ; Object tilemap state
%write16($7E054E, $1962) ; Object tilemap state
%write8($7EF377, $0D) ; Arrows
%write8($7EF36D, $48) ; Health (actual)
%write16($7EF0D6, $000C) ; Room $006B: Ganon's Tower (Mimics Rooms) (.............qq.)
%write8($7E0468, $00) ; Trap door state
%write16($7E0540, $051C) ; Object tilemap state
%write16($7E0544, $081C) ; Object tilemap state
%write16($7E0548, $0B1C) ; Object tilemap state
%write16($7E054C, $195A) ; Object tilemap state
%write16($7E0550, $050C) ; Object tilemap state
%write8($7EC172, $01) ; Crystal switch state
%write16($7E0641, $0001) ; Room puzzle state (?)
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_gtower_mimics2:
%write8($7EF377, $0E) ; Arrows
%write16($7EF0D6, $000E) ; Room $006B: Ganon's Tower (Mimics Rooms) (.............qqq)
%write16($7FE056, $0240) ; Room $6B persistent: Ganon's Tower (Mimics Rooms)
%write8($7E0641, $00) ; Room puzzle state (?)
%write8($7E002F, $06) ; Link's direction
%write8($7E0FCB, $04) ; Prize pack index
.after

sram_nmg_gtower_spike_room:
%write8($7EF377, $0A) ; Arrows
%write16($7EF0D6, $800F) ; Room $006B: Ganon's Tower (Mimics Rooms) (.d...........qqq)
%write8($7E0468, $01) ; Trap door state
%write16($7FE056, $2640) ; Room $6B persistent: Ganon's Tower (Mimics Rooms)
%write8($7E002F, $00) ; Link's direction
%write8($7E0FCB, $05) ; Prize pack index
.after

sram_nmg_gtower_gauntlet:
%write16($7E0542, $16D8) ; Object tilemap state
%write16($7E0546, $19D8) ; Object tilemap state
%write16($7E054A, $19E4) ; Object tilemap state
%write16($7E054E, $16E4) ; Object tilemap state
%write16($7EF0B8, $000C) ; Room $005C: Ganon's Tower (Ganon-Ball Z) (.............qq.)
%write16($7EF0B6, $8005) ; Room $005B: Ganon's Tower (Spike Pit Room) (.d............q.)
%write16($7E0540, $165E) ; Object tilemap state
%write16($7E0544, $1854) ; Object tilemap state
%write16($7E0548, $1A5E) ; Object tilemap state
%write16($7E054C, $1868) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write8($7EC172, $00) ; Crystal switch state
.after

sram_nmg_gtower_gauntlet_3:
%write16($7E0542, $052C) ; Object tilemap state
%write16($7E0546, $0B2C) ; Object tilemap state
%write16($7E054A, $1430) ; Object tilemap state
%write16($7E054E, $1C30) ; Object tilemap state
%write8($7EF377, $08) ; Arrows
%write8($7E0FCC, $02) ; Prize pack index
%write16($7EF0BA, $000C) ; Room $005D: Ganon's Tower (Gauntlet 1/2/3) (.............qq.)
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $0510) ; Object tilemap state
%write16($7E0544, $0B10) ; Object tilemap state
%write16($7E0548, $140C) ; Object tilemap state
%write16($7E054C, $1C0C) ; Object tilemap state
%write16($7FE03A, $00FD) ; Room $5D persistent: Ganon's Tower (Gauntlet 1/2/3)
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_gtower_lanmola2:
%write16($7E0542, $0628) ; Object tilemap state
%write16($7E0546, $0A28) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write8($7E0FCC, $04) ; Prize pack index
%write16($7EF0D8, $0001) ; Room $006C: Ganon's Tower (Lanmolas Room) (................)
%write8($7EF36D, $40) ; Health (actual)
%write16($7EF0BA, $000E) ; Room $005D: Ganon's Tower (Gauntlet 1/2/3) (.............qqq)
%write16($7EF0DA, $000A) ; Room $006D: Ganon's Tower (Gauntlet 4/5) (.............q.q)
%write8($7EF36E, $70) ; Magic Power
%write8($7E0303, $05) ; Selected menu item
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0614) ; Object tilemap state
%write16($7E0544, $0A14) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write8($7E0202, $06) ; Selected menu item
%write16($7FE03A, $0EFD) ; Room $5D persistent: Ganon's Tower (Gauntlet 1/2/3)
%write16($7FE056, $0000) ; Room $6B persistent: Ganon's Tower (Mimics Rooms)
%write16($7FE05A, $00C9) ; Room $6D persistent: Ganon's Tower (Gauntlet 4/5)
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_gtower_wizz1:
%write16($7EF0D8, $000B) ; Room $006C: Ganon's Tower (Lanmolas Room) (.............q.q)
%write8($7EF36E, $20) ; Magic Power
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_gtower_wizz2:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write8($7EF36D, $48) ; Health (actual)
%write16($7EF14A, $000B) ; Room $00A5: Ganon's Tower (Wizzrobes Rooms) (.............q.q)
%write8($7EF36E, $18) ; Magic Power
%write8($7E0303, $12) ; Selected menu item
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write8($7E0202, $11) ; Selected menu item
%write16($7FE0CA, $008C) ; Room $A5 persistent: Ganon's Tower (Wizzrobes Rooms)
%write8($7E0FC7, $04) ; Prize pack index
.after

sram_nmg_gtower_torches1:
%write16($7EF12A, $0005) ; Room $0095: Ganon's Tower (Final Collapsing Bridge Room) (..............q.)
%write16($7EF14A, $000F) ; Room $00A5: Ganon's Tower (Wizzrobes Rooms) (.............qqq)
%write8($7EF36E, $10) ; Magic Power
%write8($7E0303, $09) ; Selected menu item
%write8($7E0202, $0B) ; Selected menu item
%write8($7E0B37, $0C) ; Arc variable
%write8($7E0B3F, $01) ; Arc variable
%write16($7FE03A, $0000) ; Room $5D persistent: Ganon's Tower (Gauntlet 1/2/3)
%write16($7FE0CA, $00EF) ; Room $A5 persistent: Ganon's Tower (Wizzrobes Rooms)
%write8($7E002F, $06) ; Link's direction
%write8($7E0FC7, $06) ; Prize pack index
.after

sram_nmg_gtower_torches2:
%write16($7E0542, $1570) ; Object tilemap state
%write16($7E0546, $0B2E) ; Object tilemap state
%write16($7E054A, $120E) ; Object tilemap state
%write16($7E054E, $1820) ; Object tilemap state
%write16($7E0552, $8B0C) ; Object tilemap state
%write16($7E0556, $9220) ; Object tilemap state
%write8($7EF373, $25) ; Magic filler
%write16($7EF12C, $000B) ; Room $0096: Ganon's Tower (Torches 1 Room) (.............q.q)
%write8($7EF36E, $5F) ; Magic Power
%write8($7E0303, $05) ; Selected menu item
%write16($7E0468, $0000) ; Trap door state
%write16($7E0540, $154C) ; Object tilemap state
%write16($7E0544, $0520) ; Object tilemap state
%write16($7E0548, $1120) ; Object tilemap state
%write16($7E054C, $180E) ; Object tilemap state
%write16($7E0550, $8420) ; Object tilemap state
%write16($7E0554, $8B32) ; Object tilemap state
%write8($7E0202, $06) ; Selected menu item
%write8($7E0B37, $0E) ; Arc variable
%write16($7FE05A, $0000) ; Room $6D persistent: Ganon's Tower (Gauntlet 4/5)
%write8($7E002F, $00) ; Link's direction
.after

sram_nmg_gtower_helma_key:
%write8($7E0CBC, $01) ; Sprite drop
%write16($7E0542, $0C70) ; Object tilemap state
%write16($7E0546, $1628) ; Object tilemap state
%write16($7E054A, $1A14) ; Object tilemap state
%write16($7E054E, $954C) ; Object tilemap state
%write16($7E0552, $9C50) ; Object tilemap state
%write16($7E0556, $0000) ; Object tilemap state
%write8($7EF373, $00) ; Magic filler
%write16($7EF07A, $0001) ; Room $003D: Ganon's Tower (Torch Room 2) (................)
%write8($7EF36E, $40) ; Magic Power
%write16($7E0540, $0C4C) ; Object tilemap state
%write16($7E0544, $1618) ; Object tilemap state
%write16($7E0548, $1820) ; Object tilemap state
%write16($7E054C, $1A24) ; Object tilemap state
%write16($7E0550, $9570) ; Object tilemap state
%write16($7E0554, $9C6C) ; Object tilemap state
%write8($7E0B37, $06) ; Arc variable
.after

sram_nmg_gtower_bombable_wall:
%write8($7E0CBC, $00) ; Sprite drop
%write8($7EF36D, $40) ; Health (actual)
%write16($7EF07A, $4405) ; Room $003D: Ganon's Tower (Torch Room 2) (..d...K.......q.)
%write8($7E0303, $01) ; Selected menu item
%write8($7E0202, $04) ; Selected menu item
%write8($7E0B37, $0D) ; Arc variable
%write16($7FDFFA, $000C) ; Room $3D persistent: Ganon's Tower (Torch Room 2)
%write8($7E002F, $04) ; Link's direction
.after

sram_nmg_gtower_moldorm_2:
%write8($7EF343, $00) ; Bombs
%write16($7EF36F, $0000) ; Keys
%write8($7EF36D, $38) ; Health (actual)
%write16($7EF07A, $740F) ; Room $003D: Ganon's Tower (Torch Room 2) (..ddb.K......qqq)
%write8($7E0303, $05) ; Selected menu item
%write8($7E0202, $06) ; Selected menu item
%write8($7E0B37, $10) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_gtower_agahnim_2:
%write16($7E0542, $0000) ; Object tilemap state
%write16($7E0546, $0000) ; Object tilemap state
%write16($7E054A, $0000) ; Object tilemap state
%write16($7E054E, $0000) ; Object tilemap state
%write16($7E0552, $0000) ; Object tilemap state
%write16($7EF098, $0005) ; Room $004C: Ganon's Tower (Mini-Helmasaur Conveyor Room) (..............q.)
%write16($7EF03A, $800C) ; Room $001D: Ganon's Tower (Final Hallway) (.d...........qq.)
%write16($7EF09A, $800F) ; Room $004D: Ganon's Tower (Moldorm Room) (.d...........qqq)
%write16($7E0468, $0001) ; Trap door state
%write16($7E0540, $0000) ; Object tilemap state
%write16($7E0544, $0000) ; Object tilemap state
%write16($7E0548, $0000) ; Object tilemap state
%write16($7E054C, $0000) ; Object tilemap state
%write16($7E0550, $0000) ; Object tilemap state
%write16($7E0554, $0000) ; Object tilemap state
%write16($7FE0CA, $0000) ; Room $A5 persistent: Ganon's Tower (Wizzrobes Rooms)
%write8($7E002F, $00) ; Link's direction
; Manual changes:
%write8($7E0202, $03) ; Selected menu item
%write8($7E0303, $0E) ; Selected menu item
.after

sram_nmg_ganon_pyramid:
%write8($7EF2DB, $20) ; Overworld $5B: Unknown (...?....)
%write8($7EF36F, $FF) ; Keys
%write8($7EF389, $00) ; Key for dungeon $0D
%write16($7EF3FD, $0000) ; Deaths
%write16($7EF01A, $0802) ; Room $000D: Ganon's Tower (Agahnim2[Boss]) (.....k.........q)
%write8($7FDFFA, $00) ; Overworld $3D persistent: UNKNOWN
%write8($7E02A2, $FC) ; Arc variable
%write8($7E002F, $02) ; Link's direction
.after

sram_nmg_ganon_pyramid_magic:
; Manual changes:
%write8($7EF36E, $80) ; Magic Power
.after


