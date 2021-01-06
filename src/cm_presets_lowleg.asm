cm_low_submenu_presets:
	dw cm_low_presets_goto_escape
	dw cm_low_presets_goto_eastern
	dw cm_low_presets_goto_desert
	dw cm_low_presets_goto_hera
	dw cm_low_presets_goto_atower
	dw cm_low_presets_goto_pod
	dw cm_low_presets_goto_thieves
	dw cm_low_presets_goto_skull
	dw cm_low_presets_goto_ice
	dw cm_low_presets_goto_swamp
	dw cm_low_presets_goto_mire
	dw cm_low_presets_goto_trock
	dw cm_low_presets_goto_gtower
	dw cm_low_presets_goto_ganon
	dw cm_low_presets_goto_boss
	dw !menu_end
	%menu_header("LOW LEGACY PRESETS")

; HYRULE CASTLE

cm_low_presets_goto_escape:
	%submenu("Hyrule Castle", cm_low_presets_escape)

cm_low_presets_escape:
	dw cm_low_esc_bed
	dw cm_low_esc_courtyard
	dw cm_low_esc_entrance
	dw cm_low_esc_1st_keyguard
	dw cm_low_esc_stealth_room
	dw cm_low_esc_2nd_keyguard
	dw cm_low_esc_ball_n_chains
	dw cm_low_esc_backtracking
	dw cm_low_esc_keyguard_revisited
	dw cm_low_esc_throne_room
	dw cm_low_esc_snake_avoidance_room
	dw cm_low_esc_water_rooms
	dw cm_low_esc_keyrat
	dw cm_low_esc_last_two_screens
	dw !menu_end
	%menu_header("HYRULE CASTLE")

cm_low_esc_bed:
	%preset("Link's Bed", preset_low_esc_bed)

cm_low_esc_courtyard:
	%preset("Courtyard", preset_low_esc_courtyard)

cm_low_esc_entrance:
	%preset("Entrance", preset_low_esc_entrance)

cm_low_esc_1st_keyguard:
	%preset("1st Key Guard", preset_low_esc_1st_keyguard)

cm_low_esc_stealth_room:
	%preset("Stealth Room", preset_low_esc_stealth_room)

cm_low_esc_2nd_keyguard:
	%preset("2nd Key Guard", preset_low_esc_2nd_keyguard)

cm_low_esc_ball_n_chains:
	%preset("Ball'n Chains", preset_low_esc_ball_n_chains)

cm_low_esc_backtracking:
	%preset("Backtracking", preset_low_esc_backtracking)

cm_low_esc_keyguard_revisited:
	%preset("Key Guard Revisited", preset_low_esc_keyguard_revisited)

cm_low_esc_throne_room:
	%preset("Throne Room", preset_low_esc_throne_room)

cm_low_esc_snake_avoidance_room:
	%preset("Snake Avoidance Room", preset_low_esc_snake_avoidance_room)

cm_low_esc_water_rooms:
	%preset("Sewer Rooms", preset_low_esc_water_rooms)

cm_low_esc_keyrat:
	%preset("Key Rat", preset_low_esc_keyrat)

cm_low_esc_last_two_screens:
	%preset("Last Two Screens", preset_low_esc_last_two_screens)

; EASTERN

cm_low_presets_goto_eastern:
	%submenu("Eastern", cm_low_presets_eastern)

cm_low_presets_eastern:
	dw cm_low_east_before_cutscene
	dw cm_low_east_after_cutscene
	dw cm_low_east_octoroc
	dw cm_low_east_outside_palace
	dw cm_low_east_entrance
	dw cm_low_east_stalfos_room
	dw cm_low_east_big_chest_room_1
	dw cm_low_east_dark_key_room
	dw cm_low_east_big_key_dmg_boost
	dw cm_low_east_big_chest_room_2
	dw cm_low_east_gwg
	dw cm_low_east_pot_room
	dw cm_low_east_zeldagamer_room
	dw cm_low_east_armos
	dw !menu_end
	%menu_header("EASTERN")

cm_low_east_before_cutscene:
	%preset("Before Cutscene", preset_low_east_before_cutscene)

cm_low_east_after_cutscene:
	%preset("After Cutscene", preset_low_east_after_cutscene)

cm_low_east_octoroc:
	%preset("Octoroc OW", preset_low_east_octoroc)

cm_low_east_outside_palace:
	%preset("EP Overworld", preset_low_east_outside_palace)

cm_low_east_entrance:
	%preset("Entrance", preset_low_east_entrance)

cm_low_east_stalfos_room:
	%preset("Stalfos Room", preset_low_east_stalfos_room)

cm_low_east_big_chest_room_1:
	%preset("Big Chest Room 1", preset_low_east_big_chest_room_1)

cm_low_east_dark_key_room:
	%preset("Dark Key Room", preset_low_east_dark_key_room)

cm_low_east_big_key_dmg_boost:
	%preset("Big Key DMG Boost", preset_low_east_big_key_dmg_boost)

cm_low_east_big_chest_room_2:
	%preset("Big Chest Room 2", preset_low_east_big_chest_room_2)

cm_low_east_gwg:
	%preset("Gifted With Greenies", preset_low_east_gwg)

cm_low_east_pot_room:
	%preset("Pot Room", preset_low_east_pot_room)

cm_low_east_zeldagamer_room:
	%preset("Zeldagamer Room", preset_low_east_zeldagamer_room)

cm_low_east_armos:
	%preset("Armos", preset_low_east_armos)

; DESERT

cm_low_presets_goto_desert:
	%submenu("Desert", cm_low_presets_desert)

cm_low_presets_desert:
	dw cm_low_desert_outside_eastern_palace
	dw cm_low_desert_ep_spinspeed
	dw cm_low_desert_bridge_screen
	dw cm_low_desert_unholy_spinspeed
	dw cm_low_desert_water_dash
	dw cm_low_desert_outside_desert_palace
	dw cm_low_desert_desert_entrance
	dw cm_low_desert_keybonk
	dw cm_low_desert_pre_cannonball_room
	dw cm_low_desert_pot_room
	dw cm_low_desert_desert2_spinspeed
	dw cm_low_desert_popo_genocide_room
	dw cm_low_desert_torches
	dw cm_low_desert_lanmolas
	dw !menu_end
	%menu_header("DESERT")

cm_low_desert_outside_eastern_palace:
	%preset("Outside Eastern Palace", preset_low_desert_outside_eastern_palace)

cm_low_desert_ep_spinspeed:
	%preset("Eastern Palace Spinspeed", preset_low_desert_ep_spinspeed)

cm_low_desert_bridge_screen:
	%preset("Bridge Screen", preset_low_desert_bridge_screen)

cm_low_desert_unholy_spinspeed:
	%preset("Unholy Spinspeed", preset_low_desert_unholy_spinspeed)

cm_low_desert_water_dash:
	%preset("Water Dash", preset_low_desert_water_dash)

cm_low_desert_outside_desert_palace:
	%preset("Outside Desert Palace", preset_low_desert_outside_desert_palace)

cm_low_desert_desert_entrance:
	%preset("Entrance", preset_low_desert_desert_entrance)

cm_low_desert_keybonk:
	%preset("Key Bonk", preset_low_desert_keybonk)

cm_low_desert_pre_cannonball_room:
	%preset("Pre Cannonball Room", preset_low_desert_pre_cannonball_room)

cm_low_desert_pot_room:
	%preset("Pot Room", preset_low_desert_pot_room)

cm_low_desert_desert2_spinspeed:
	%preset("Desert 2 Spinspeed", preset_low_desert_desert2_spinspeed)

cm_low_desert_popo_genocide_room:
	%preset("Popo Genocide", preset_low_desert_popo_genocide_room)

cm_low_desert_torches:
	%preset("Torches", preset_low_desert_torches)

cm_low_desert_lanmolas:
	%preset("Lanmolas", preset_low_desert_lanmolas)

; HERA

cm_low_presets_goto_hera:
	%submenu("Hera", cm_low_presets_hera)

cm_low_presets_hera:
	dw cm_low_hera_outside_desert_palace
	dw cm_low_hera_fake_flippers
	dw cm_low_hera_dm
	dw cm_low_hera_after_mirror
	dw cm_low_hera_quickhop
	dw cm_low_hera_entrance
	dw cm_low_hera_tile_room
	dw cm_low_hera_torches
	dw cm_low_hera_beetles
	dw cm_low_hera_petting_zoo
	dw cm_low_hera_moldorm
	dw !menu_end
	%menu_header("HERA")

cm_low_hera_outside_desert_palace:
	%preset("Outside Desert Palace", preset_low_hera_outside_desert_palace)

cm_low_hera_fake_flippers:
	%preset("Fake Flippers", preset_low_hera_fake_flippers)

cm_low_hera_dm:
	%preset("Death Mountain", preset_low_hera_dm)

cm_low_hera_after_mirror:
	%preset("After Mirror", preset_low_hera_after_mirror)

cm_low_hera_quickhop:
	%preset("Quickhop", preset_low_hera_quickhop)

cm_low_hera_entrance:
	%preset("Entrance", preset_low_hera_entrance)

cm_low_hera_tile_room:
	%preset("Tile room", preset_low_hera_tile_room)

cm_low_hera_torches:
	%preset("Torches", preset_low_hera_torches)

cm_low_hera_beetles:
	%preset("Beetles", preset_low_hera_beetles)

cm_low_hera_petting_zoo:
	%preset("Petting Zoo", preset_low_hera_petting_zoo)

cm_low_hera_moldorm:
	%preset("Moldorm", preset_low_hera_moldorm)

; AGAHNIMS TOWER

cm_low_presets_goto_atower:
	%submenu("Agahnim's Tower", cm_low_presets_atower)

cm_low_presets_atower:
	dw cm_low_aga_outside_hera
	dw cm_low_aga_first_rupee_tree
	dw cm_low_aga_lost_woods
	dw cm_low_aga_after_grove
	dw cm_low_aga_after_lost_woods
	dw cm_low_aga_castle_screen
	dw cm_low_aga_entrance
	dw cm_low_aga_fairy_skip
	dw cm_low_aga_dark_room_of_despair
	dw cm_low_aga_dark_room_of_melancholy
	dw cm_low_aga_spear_guards
	dw cm_low_aga_circle_of_pots
	dw cm_low_aga_pit_room
	dw cm_low_aga_agahnim
	dw !menu_end
	%menu_header("AGAHNIMS TOWER")

cm_low_aga_outside_hera:
	%preset("Outside Hera", preset_low_aga_outside_hera)

cm_low_aga_first_rupee_tree:
	%preset("First Rupee Tree", preset_low_aga_first_rupee_tree)

cm_low_aga_lost_woods:
	%preset("Lost Woods", preset_low_aga_lost_woods)
	
cm_low_aga_after_grove:
	%preset("After Grove", preset_low_aga_after_grove)

cm_low_aga_after_lost_woods:
	%preset("After Lost Woods", preset_low_aga_after_lost_woods)

cm_low_aga_castle_screen:
	%preset("Castle Screen", preset_low_aga_castle_screen)

cm_low_aga_entrance:
	%preset("Entrance", preset_low_aga_entrance)

cm_low_aga_fairy_skip:
	%preset("Fairy Skip", preset_low_aga_fairy_skip)

cm_low_aga_dark_room_of_despair:
	%preset("Dark Room of Despair", preset_low_aga_dark_room_of_despair)

cm_low_aga_dark_room_of_melancholy:
	%preset("Dark Room of Melancholy", preset_low_aga_dark_room_of_melancholy)

cm_low_aga_spear_guards:
	%preset("Spear Guards", preset_low_aga_spear_guards)

cm_low_aga_circle_of_pots:
	%preset("Circle of Pots", preset_low_aga_circle_of_pots)

cm_low_aga_pit_room:
	%preset("Pit Room", preset_low_aga_pit_room)

cm_low_aga_agahnim:
	%preset("Agahnim", preset_low_aga_agahnim)

; PALACE OF DARKNESS

cm_low_presets_goto_pod:
	%submenu("Palace of Darkness", cm_low_presets_pod)

cm_low_presets_pod:
	dw cm_low_pod_pyramid
	dw cm_low_pod_pod_overworld
	dw cm_low_pod_entrance
	dw cm_low_pod_main_hub_small_key
	dw cm_low_pod_main_hub_bk
	dw cm_low_pod_main_hub_hammeryump
	dw cm_low_pod_hammeryump
	dw cm_low_pod_before_sexy_statue
	dw cm_low_pod_sexy_statue_room
	dw cm_low_pod_mimics
	dw cm_low_pod_statue
	dw cm_low_pod_basement
	dw cm_low_pod_turtle_room
	dw cm_low_pod_helma
	dw !menu_end
	%menu_header("PALACE OF DARKNESS")

cm_low_pod_pyramid:
	%preset("Pyramid", preset_low_pod_pyramid)

cm_low_pod_pod_overworld:
	%preset("Palace Overworld Screen", preset_low_pod_pod_overworld)

cm_low_pod_entrance:
	%preset("Entrance", preset_low_pod_entrance)

cm_low_pod_main_hub_small_key:
	%preset("Main Hub (small key)", preset_low_pod_main_hub_small_key)

cm_low_pod_main_hub_bk:
	%preset("Main Hub (bk)", preset_low_pod_main_hub_bk)

cm_low_pod_main_hub_hammeryump:
	%preset("Main Hub (hammeryump)", preset_low_pod_main_hub_hammeryump)

cm_low_pod_hammeryump:
	%preset("Hammeryump", preset_low_pod_hammeryump)

cm_low_pod_before_sexy_statue:
	%preset("Pre Sexy Statue", preset_low_pod_before_sexy_statue)

cm_low_pod_sexy_statue_room:
	%preset("Sexy Statue Room", preset_low_pod_sexy_statue_room)

cm_low_pod_mimics:
	%preset("Mimics", preset_low_pod_mimics)

cm_low_pod_statue:
	%preset("Statue", preset_low_pod_statue)

cm_low_pod_basement:
	%preset("Basement", preset_low_pod_basement)

cm_low_pod_turtle_room:
	%preset("Turtle Room", preset_low_pod_turtle_room)

cm_low_pod_helma:
	%preset("Helma", preset_low_pod_helma)

; THIEVES TOWN

cm_low_presets_goto_thieves:
	%submenu("Thieves' Town", cm_low_presets_thieves)

cm_low_presets_thieves:
	dw cm_low_thieves_outside_pod
	dw cm_low_thieves_ow_hammerdash
	dw cm_low_thieves_grove
	dw cm_low_thieves_usain_bolt
	dw cm_low_thieves_after_activating_flute
	dw cm_low_thieves_darkworld
	dw cm_low_thieves_entrance
	dw cm_low_thieves_after_big_key
	dw cm_low_thieves_blind_hallway
	dw cm_low_thieves_conveyor_gibos
	dw cm_low_thieves_hellway
	dw cm_low_thieves_bombable_floor
	dw cm_low_thieves_backtracking_1
	dw cm_low_thieves_basement
	dw cm_low_thieves_prison
	dw cm_low_thieves_after_gloves
	dw cm_low_thieves_backtracking_2
	dw cm_low_thieves_pot_hammerdash
	dw cm_low_thieves_blind
	dw !menu_end
	%menu_header("THIEVES TOWN")

cm_low_thieves_outside_pod:
	%preset("Outside PoD", preset_low_thieves_outside_pod)

cm_low_thieves_ow_hammerdash:
	%preset("Overworld Hammerdash", preset_low_thieves_ow_hammerdash)

cm_low_thieves_grove:
	%preset("Grove", preset_low_thieves_grove)

cm_low_thieves_usain_bolt:
	%preset("Usain Bolt", preset_low_thieves_usain_bolt)

cm_low_thieves_after_activating_flute:
	%preset("After Activating Flute", preset_low_thieves_after_activating_flute)

cm_low_thieves_darkworld:
	%preset("After Warp", preset_low_thieves_darkworld)

cm_low_thieves_entrance:
	%preset("Entrance", preset_low_thieves_entrance)

cm_low_thieves_after_big_key:
	%preset("After Big Key", preset_low_thieves_after_big_key)

cm_low_thieves_blind_hallway:
	%preset("Stalfos Hallway", preset_low_thieves_blind_hallway)

cm_low_thieves_conveyor_gibos:
	%preset("Conveyor Gibos", preset_low_thieves_conveyor_gibos)

cm_low_thieves_hellway:
	%preset("Hellway", preset_low_thieves_hellway)

cm_low_thieves_bombable_floor:
	%preset("Bombable Floor", preset_low_thieves_bombable_floor)

cm_low_thieves_backtracking_1:
	%preset("Backtracking", preset_low_thieves_backtracking_1)

cm_low_thieves_basement:
	%preset("Basement", preset_low_thieves_basement)

cm_low_thieves_prison:
	%preset("Prison", preset_low_thieves_prison)

cm_low_thieves_after_gloves:
	%preset("Gloves", preset_low_thieves_after_gloves)

cm_low_thieves_backtracking_2:
	%preset("Backtracking", preset_low_thieves_backtracking_2)

cm_low_thieves_pot_hammerdash:
	%preset("Pot Hammerdash", preset_low_thieves_pot_hammerdash)

cm_low_thieves_blind:
	%preset("Blind", preset_low_thieves_blind)

; SKULL WOODS

cm_low_presets_goto_skull:
	%submenu("Skull Woods", cm_low_presets_skull)

cm_low_presets_skull:
	dw cm_low_sw_outside_thieves
	dw cm_low_sw_cursed_dwarf
	dw cm_low_sw_getting_tempered
	dw cm_low_sw_fence_dash
	dw cm_low_sw_dash_to_sw
	dw cm_low_sw_mummy_room
	dw cm_low_sw_bomb_jump
	dw cm_low_sw_key_pot
	dw cm_low_sw_skull_entrance
	dw cm_low_sw_mummy_hellway
	dw cm_low_sw_mummy_key
	dw cm_low_sw_mothula
	dw !menu_end
	%menu_header("SKULL WOODS")

cm_low_sw_outside_thieves:
	%preset("Outside Thieves", preset_low_sw_outside_thieves)

cm_low_sw_cursed_dwarf:
	%preset("Cursed Dwarf", preset_low_sw_cursed_dwarf)

cm_low_sw_getting_tempered:
	%preset("Getting Tempered", preset_low_sw_getting_tempered)

cm_low_sw_fence_dash:
	%preset("Fencedash", preset_low_sw_fence_dash)

cm_low_sw_dash_to_sw:
	%preset("Dash to Skull Woods", preset_low_sw_dash_to_sw)

cm_low_sw_mummy_room:
	%preset("Mummy Room", preset_low_sw_mummy_room)

cm_low_sw_bomb_jump:
	%preset("Bomb Jump", preset_low_sw_bomb_jump)

cm_low_sw_key_pot:
	%preset("Key Pot", preset_low_sw_key_pot)

cm_low_sw_skull_entrance:
	%preset("Skull Entrance", preset_low_sw_skull_entrance)

cm_low_sw_mummy_hellway:
	%preset("Mummy Hellway", preset_low_sw_mummy_hellway)

cm_low_sw_mummy_key:
	%preset("Mummy Key", preset_low_sw_mummy_key)

cm_low_sw_mothula:
	%preset("Mothula", preset_low_sw_mothula)

; ICE PALACE

cm_low_presets_goto_ice:
	%submenu("Ice Palace", cm_low_presets_ice)

cm_low_presets_ice:
	dw cm_low_ice_outside_skull
	dw cm_low_ice_bridge_warp
	dw cm_low_ice_lottery
	dw cm_low_ice_medallion
	dw cm_low_ice_zoras_domain
	dw cm_low_ice_tiny_warp
	dw cm_low_ice_ice_entrance
	dw cm_low_ice_ice2
	dw cm_low_ice_penguin_switch_room
	dw cm_low_ice_bombable_floor
	dw cm_low_ice_conveyor_room
	dw cm_low_ice_ipbj
	dw cm_low_ice_penguin_room
	dw cm_low_ice_lonely_firebar
	dw cm_low_ice_last_two_screens
	dw cm_low_ice_kholdstare
	dw !menu_end
	%menu_header("ICE PALACE")

cm_low_ice_outside_skull:
	%preset("Outside Skull", preset_low_ice_outside_skull)

cm_low_ice_bridge_warp:
	%preset("Bridge Warp", preset_low_ice_bridge_warp)

cm_low_ice_lottery:
	%preset("Lottery", preset_low_ice_lottery)

cm_low_ice_medallion:
	%preset("Medallion", preset_low_ice_medallion)

cm_low_ice_zoras_domain:
	%preset("Zoras Domain", preset_low_ice_zoras_domain)

cm_low_ice_tiny_warp:
	%preset("Tiny Warp Dik", preset_low_ice_tiny_warp)

cm_low_ice_ice_entrance:
	%preset("Entrance", preset_low_ice_ice_entrance)

cm_low_ice_ice2:
	%preset("Ice 2", preset_low_ice_ice2)

cm_low_ice_penguin_switch_room:
	%preset("Penguin Switch Room", preset_low_ice_penguin_switch_room)

cm_low_ice_bombable_floor:
	%preset("Bombable Floor", preset_low_ice_bombable_floor)

cm_low_ice_conveyor_room:
	%preset("Conveyor Room", preset_low_ice_conveyor_room)

cm_low_ice_ipbj:
	%preset("IPBJ", preset_low_ice_ipbj)

cm_low_ice_penguin_room:
	%preset("Penguin Lineup Room", preset_low_ice_penguin_room)

cm_low_ice_lonely_firebar:
	%preset("Lonely Firebar", preset_low_ice_lonely_firebar)

cm_low_ice_last_two_screens:
	%preset("Last Two Screens", preset_low_ice_last_two_screens)

cm_low_ice_kholdstare:
	%preset("Kholdstare", preset_low_ice_kholdstare)

; SWAMP PALACE

cm_low_presets_goto_swamp:
	%submenu("Swamp Palace", cm_low_presets_swamp)

cm_low_presets_swamp:
	dw cm_low_swamp_outside_ice
	dw cm_low_swamp_links_house
	dw cm_low_swamp_swamp_overworld
	dw cm_low_swamp_antifairy_room
	dw cm_low_swamp_entrance
	dw cm_low_swamp_first_key_pot
	dw cm_low_swamp_hallway_key_1
	dw cm_low_swamp_water_lever_1
	dw cm_low_swamp_main_hub
	dw cm_low_swamp_water_lever_2
	dw cm_low_swamp_sociable_firebar
	dw cm_low_swamp_backtracking
	dw cm_low_swamp_hook_shot
	dw cm_low_swamp_hookdash
	dw cm_low_swamp_water_lever_3
	dw cm_low_swamp_restock
	dw cm_low_swamp_phelps_way
	dw cm_low_swamp_arrghus
	dw !menu_end
	%menu_header("SWAMP PALACE")

cm_low_swamp_outside_ice:
	%preset("Outside Ice", preset_low_swamp_outside_ice)

cm_low_swamp_links_house:
	%preset("Link's House", preset_low_swamp_links_house)

cm_low_swamp_swamp_overworld:
	%preset("Swamp Overworld", preset_low_swamp_swamp_overworld)

cm_low_swamp_antifairy_room:
	%preset("Antifairy Room", preset_low_swamp_antifairy_room)

cm_low_swamp_entrance:
	%preset("Entrance", preset_low_swamp_entrance)

cm_low_swamp_first_key_pot:
	%preset("First Key Pot", preset_low_swamp_first_key_pot)

cm_low_swamp_hallway_key_1:
	%preset("Tiny Hallway Key", preset_low_swamp_hallway_key_1)

cm_low_swamp_water_lever_1:
	%preset("Water Lever 1", preset_low_swamp_water_lever_1)

cm_low_swamp_main_hub:
	%preset("Main Hub", preset_low_swamp_main_hub)

cm_low_swamp_water_lever_2:
	%preset("Water Lever 2", preset_low_swamp_water_lever_2)

cm_low_swamp_sociable_firebar:
	%preset("Sociable Firebar", preset_low_swamp_sociable_firebar)

cm_low_swamp_backtracking:
	%preset("Backtracking", preset_low_swamp_backtracking)

cm_low_swamp_hook_shot:
	%preset("Hookshot", preset_low_swamp_hook_shot)

cm_low_swamp_hookdash:
	%preset("Hookdash", preset_low_swamp_hookdash)

cm_low_swamp_water_lever_3:
	%preset("Water Lever 3", preset_low_swamp_water_lever_3)

cm_low_swamp_restock:
	%preset("Restock Room", preset_low_swamp_restock)

cm_low_swamp_phelps_way:
	%preset("Phelps Way", preset_low_swamp_phelps_way)

cm_low_swamp_arrghus:
	%preset("Arrghus", preset_low_swamp_arrghus)

; MISERY MIRE

cm_low_presets_goto_mire:
	%submenu("Misery Mire", cm_low_presets_mire)

cm_low_presets_mire:
	dw cm_low_mire_outside_swamp
	dw cm_low_mire_dm
	dw cm_low_mire_free_flutedash
	dw cm_low_mire_darkworld_warp
	dw cm_low_mire_entrance
	dw cm_low_mire_mire2
	dw cm_low_mire_main_hub
	dw cm_low_mire_beat_the_fireball
	dw cm_low_mire_bari_key
	dw cm_low_mire_sluggulas
	dw cm_low_mire_torches
	dw cm_low_mire_spark_gamble
	dw cm_low_mire_big_chest_room
	dw cm_low_mire_spike_key
	dw cm_low_mire_wizzrobe
	dw cm_low_mire_basement
	dw cm_low_mire_spooky_action_1
	dw cm_low_mire_spooky_action_2
	dw cm_low_mire_vitty
	dw !menu_end
	%menu_header("MISERY MIRE")

cm_low_mire_outside_swamp:
	%preset("Outside Swamp", preset_low_mire_outside_swamp)

cm_low_mire_dm:
	%preset("Death Mountain", preset_low_mire_dm)

cm_low_mire_free_flutedash:
	%preset("Free Flutedash", preset_low_mire_free_flutedash)

cm_low_mire_darkworld_warp:
	%preset("Mire Overworld Screen", preset_low_mire_darkworld_warp)

cm_low_mire_entrance:
	%preset("Mire Entrance", preset_low_mire_entrance)

cm_low_mire_mire2:
	%preset("Mire 2", preset_low_mire_mire2)

cm_low_mire_main_hub:
	%preset("Main Hub", preset_low_mire_main_hub)

cm_low_mire_beat_the_fireball:
	%preset("Beat the Fireball", preset_low_mire_beat_the_fireball)

cm_low_mire_bari_key:
	%preset("Bari Key", preset_low_mire_bari_key)

cm_low_mire_sluggulas:
	%preset("Sluggulas", preset_low_mire_sluggulas)

cm_low_mire_torches:
	%preset("Torches", preset_low_mire_torches)

cm_low_mire_spark_gamble:
	%preset("Spark Gamble", preset_low_mire_spark_gamble)

cm_low_mire_big_chest_room:
	%preset("Big Chest Room", preset_low_mire_big_chest_room)

cm_low_mire_spike_key:
	%preset("Spike Key", preset_low_mire_spike_key)

cm_low_mire_wizzrobe:
	%preset("Wizzrobe", preset_low_mire_wizzrobe)

cm_low_mire_basement:
	%preset("Basement", preset_low_mire_basement)

cm_low_mire_spooky_action_1:
	%preset("Spooky Action 1", preset_low_mire_spooky_action_1)

cm_low_mire_spooky_action_2:
	%preset("Spooky Action 2", preset_low_mire_spooky_action_2)

cm_low_mire_vitty:
	%preset("Vitreous", preset_low_mire_vitty)

; TURTLE ROCK

cm_low_presets_goto_trock:
	%submenu("Turtle Rock", cm_low_presets_trock)

cm_low_presets_trock:
	dw cm_low_trock_outside_mire
	dw cm_low_trock_icerod_overworld
	dw cm_low_trock_dm
	dw cm_low_trock_squirrels
	dw cm_low_trock_peg_puzzle
	dw cm_low_trock_entrance
	dw cm_low_trock_torches
	dw cm_low_trock_roller_room
	dw cm_low_trock_pokey_0
	dw cm_low_trock_chomps
	dw cm_low_trock_pokey_1
	dw cm_low_trock_pokeys_2
	dw cm_low_trock_crystal_roller
	dw cm_low_trock_dark_room
	dw cm_low_trock_laser_skip
	dw cm_low_trock_switch_room
	dw cm_low_trock_trinexx
	dw !menu_end
	%menu_header("TURTLE ROCK")

cm_low_trock_outside_mire:
	%preset("Outside Mire", preset_low_trock_outside_mire)

cm_low_trock_icerod_overworld:
	%preset("Ice Rod Overworld", preset_low_trock_icerod_overworld)

cm_low_trock_dm:
	%preset("Death Mountain", preset_low_trock_dm)

cm_low_trock_squirrels:
	%preset("Squirrels", preset_low_trock_squirrels)

cm_low_trock_peg_puzzle:
	%preset("Peg Puzzle", preset_low_trock_peg_puzzle)

cm_low_trock_entrance:
	%preset("Entrance", preset_low_trock_entrance)

cm_low_trock_torches:
	%preset("Torches", preset_low_trock_torches)

cm_low_trock_roller_room:
	%preset("Roller Room", preset_low_trock_roller_room)

cm_low_trock_pokey_0:
	%preset("Pokey 0", preset_low_trock_pokey_0)

cm_low_trock_chomps:
	%preset("Chomps", preset_low_trock_chomps)

cm_low_trock_pokey_1:
	%preset("Pokey 1", preset_low_trock_pokey_1)

cm_low_trock_pokeys_2:
	%preset("Pokeys 2", preset_low_trock_pokeys_2)

cm_low_trock_crystal_roller:
	%preset("Crystal Roller", preset_low_trock_crystal_roller)

cm_low_trock_dark_room:
	%preset("Dark Room", preset_low_trock_dark_room)

cm_low_trock_laser_skip:
	%preset("Laser Skip", preset_low_trock_laser_skip)

cm_low_trock_switch_room:
	%preset("Switch Room", preset_low_trock_switch_room)

cm_low_trock_trinexx:
	%preset("Trinexx", preset_low_trock_trinexx)

; GANONS TOWER

cm_low_presets_goto_gtower:
	%submenu("Ganon's Tower", cm_low_presets_gtower)

cm_low_presets_gtower:
	dw cm_low_gtower_outside_trock
	dw cm_low_gtower_entrance
	dw cm_low_gtower_spike_skip
	dw cm_low_gtower_pre_firesnakes_room
	dw cm_low_gtower_bombable_floor
	dw cm_low_gtower_ice_armos
	dw cm_low_gtower_floor_2
	dw cm_low_gtower_mimics1
	dw cm_low_gtower_mimics2
	dw cm_low_gtower_spike_room
	dw cm_low_gtower_gauntlet
	dw cm_low_gtower_gauntlet_3
	dw cm_low_gtower_lanmola2
	dw cm_low_gtower_wizz1
	dw cm_low_gtower_wizz2
	dw cm_low_gtower_torches1
	dw cm_low_gtower_torches2
	dw cm_low_gtower_helma_key
	dw cm_low_gtower_bombable_wall
	dw cm_low_gtower_moldorm_2
	dw cm_low_gtower_agahnim_2
	dw !menu_end
	%menu_header("GANONS TOWER")

cm_low_gtower_outside_trock:
	%preset("Outside Turtle Rock", preset_low_gtower_outside_trock)

cm_low_gtower_entrance:
	%preset("Entrance", preset_low_gtower_entrance)

cm_low_gtower_spike_skip:
	%preset("Spike Skip", preset_low_gtower_spike_skip)

cm_low_gtower_pre_firesnakes_room:
	%preset("Pre Firesnakes Room", preset_low_gtower_pre_firesnakes_room)

cm_low_gtower_bombable_floor:
	%preset("Bombable Floor", preset_low_gtower_bombable_floor)

cm_low_gtower_ice_armos:
	%preset("Ice Armos", preset_low_gtower_ice_armos)

cm_low_gtower_floor_2:
	%preset("Floor 2", preset_low_gtower_floor_2)

cm_low_gtower_mimics1:
	%preset("Mimics 1", preset_low_gtower_mimics1)

cm_low_gtower_mimics2:
	%preset("Mimics 2", preset_low_gtower_mimics2)

cm_low_gtower_spike_room:
	%preset("Spike Room", preset_low_gtower_spike_room)

cm_low_gtower_gauntlet:
	%preset("Gauntlet 1", preset_low_gtower_gauntlet)

cm_low_gtower_gauntlet_3:
	%preset("Gauntlet 3", preset_low_gtower_gauntlet_3)

cm_low_gtower_lanmola2:
	%preset("Lanmola 2", preset_low_gtower_lanmola2)

cm_low_gtower_wizz1:
	%preset("Wizzrobes 1", preset_low_gtower_wizz1)

cm_low_gtower_wizz2:
	%preset("Wizzrobes 2", preset_low_gtower_wizz2)

cm_low_gtower_torches1:
	%preset("Torches 1", preset_low_gtower_torches1)

cm_low_gtower_torches2:
	%preset("Torches 2", preset_low_gtower_torches2)

cm_low_gtower_helma_key:
	%preset("Helma Key", preset_low_gtower_helma_key)

cm_low_gtower_bombable_wall:
	%preset("Bombable Wall", preset_low_gtower_bombable_wall)

cm_low_gtower_moldorm_2:
	%preset("Moldorm 2", preset_low_gtower_moldorm_2)

cm_low_gtower_agahnim_2:
	%preset("Agahnim 2", preset_low_gtower_agahnim_2)

; GANON

cm_low_presets_goto_ganon:
	%submenu("Ganon", cm_low_presets_ganon)

cm_low_presets_ganon:
	dw cm_low_ganon_pyramid
	dw cm_low_ganon_pyramid_magic
	dw !menu_end
	%menu_header("GANON")

cm_low_ganon_pyramid:
	%preset("Ganon", preset_low_ganon_pyramid)

cm_low_ganon_pyramid_magic:
	%preset("Ganon (full magic)", preset_low_ganon_pyramid_magic)

; BOSSES

cm_low_presets_goto_boss:
	%submenu("Bosses", cm_low_presets_boss)

cm_low_presets_boss:
	dw cm_low_east_armos
	dw cm_low_desert_lanmolas
	dw cm_low_hera_moldorm
	dw cm_low_aga_agahnim
	dw cm_low_pod_helma
	dw cm_low_thieves_blind
	dw cm_low_sw_mothula
	dw cm_low_ice_kholdstare
	dw cm_low_swamp_arrghus
	dw cm_low_mire_vitty
	dw cm_low_trock_trinexx
	dw cm_low_gtower_agahnim_2
	dw cm_low_ganon_pyramid
	dw cm_low_ganon_pyramid_magic
	dw !menu_end
	%menu_header("BOSSES")
