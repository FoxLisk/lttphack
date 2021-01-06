cm_ad_submenu_presets:
	dw cm_ad_presets_goto_escape
	dw cm_ad_presets_goto_eastern
	dw cm_ad_presets_goto_pod
	dw cm_ad_presets_goto_hera
	dw cm_ad_presets_goto_thieves
	dw cm_ad_presets_goto_skull
	dw cm_ad_presets_goto_desert
	dw cm_ad_presets_goto_mire
	dw cm_ad_presets_goto_swamp
	dw cm_ad_presets_goto_ice
	dw cm_ad_presets_goto_trock
	dw cm_ad_presets_goto_gtower
	dw cm_ad_presets_goto_atower
	dw cm_ad_presets_goto_ganon
	dw cm_ad_presets_goto_boss
	dw $0000
	%menu_header("AD 2014 PRESETS")

; HYRULE CASTLE

cm_ad_presets_goto_escape:
	%submenu("Hyrule Castle", cm_ad_presets_escape)

cm_ad_presets_escape:
	dw cm_ad_esc_links_bed
	dw cm_ad_esc_courtyard
	dw cm_ad_esc_entrance
	dw cm_ad_esc_1st_key_guard
	dw cm_ad_esc_stealth_room
	dw cm_ad_esc_2nd_key_guard
	dw cm_ad_esc_ball_n_chains
	dw cm_ad_esc_backtracking
	dw cm_ad_esc_key_guard_revisit
	dw cm_ad_esc_throne_room
	dw cm_ad_esc_snake_avoidance
	dw cm_ad_esc_sewer_rooms
	dw cm_ad_esc_keyrat
	dw cm_ad_esc_last_two
	dw $0000
	%menu_header("HYRULE CASTLE")

cm_ad_esc_links_bed:
	%preset("Link's Bed", preset_ad_esc_links_bed)

cm_ad_esc_courtyard:
	%preset("Courtyard", preset_ad_esc_courtyard)

cm_ad_esc_entrance:
	%preset("Entrance", preset_ad_esc_entrance)

cm_ad_esc_1st_key_guard:
	%preset("1st Key Guard", preset_ad_esc_1st_key_guard)

cm_ad_esc_stealth_room:
	%preset("Stealth Room", preset_ad_esc_stealth_room)

cm_ad_esc_2nd_key_guard:
	%preset("2nd Key Guard", preset_ad_esc_2nd_key_guard)

cm_ad_esc_ball_n_chains:
	%preset("Ball 'n Chains", preset_ad_esc_ball_n_chains)

cm_ad_esc_backtracking:
	%preset("Backtracking", preset_ad_esc_backtracking)

cm_ad_esc_key_guard_revisit:
	%preset("Key Guard Revisit", preset_ad_esc_key_guard_revisit)

cm_ad_esc_throne_room:
	%preset("Throne Room", preset_ad_esc_throne_room)

cm_ad_esc_snake_avoidance:
	%preset("Snake Avoidance", preset_ad_esc_snake_avoidance)

cm_ad_esc_sewer_rooms:
	%preset("Sewer Rooms", preset_ad_esc_sewer_rooms)

cm_ad_esc_keyrat:
	%preset("Keyrat", preset_ad_esc_keyrat)

cm_ad_esc_last_two:
	%preset("Last Two", preset_ad_esc_last_two)

; EASTERN

cm_ad_presets_goto_eastern:
	%submenu("Eastern Palace", cm_ad_presets_eastern)

cm_ad_presets_eastern:
	dw cm_ad_east_before_cutscene
	dw cm_ad_east_links_house
	dw cm_ad_east_ep_overworld
	dw cm_ad_east_entrance
	dw cm_ad_east_stalfos_room
	dw cm_ad_east_big_chest_room_1
	dw cm_ad_east_dark_key_room
	dw cm_ad_east_big_key_dmg_boost
	dw cm_ad_east_big_chest_room_2
	dw cm_ad_east_gifted_with_greenies
	dw cm_ad_east_pot_room
	dw cm_ad_east_zeldagamer_room
	dw cm_ad_east_armos
	dw $0000
	%menu_header("EASTERN")

cm_ad_east_before_cutscene:
	%preset("Before Cutscene", preset_ad_east_before_cutscene)

cm_ad_east_links_house:
	%preset("Link's House", preset_ad_east_links_house)

cm_ad_east_ep_overworld:
	%preset("EP Overworld", preset_ad_east_ep_overworld)

cm_ad_east_entrance:
	%preset("Entrance", preset_ad_east_entrance)

cm_ad_east_stalfos_room:
	%preset("Stalfos Room", preset_ad_east_stalfos_room)

cm_ad_east_big_chest_room_1:
	%preset("Big Chest Room 1", preset_ad_east_big_chest_room_1)

cm_ad_east_dark_key_room:
	%preset("Dark Key Room", preset_ad_east_dark_key_room)

cm_ad_east_big_key_dmg_boost:
	%preset("Big Key DMG Boost", preset_ad_east_big_key_dmg_boost)

cm_ad_east_big_chest_room_2:
	%preset("Big Chest Room 2", preset_ad_east_big_chest_room_2)

cm_ad_east_gifted_with_greenies:
	%preset("Gifted with Greenies", preset_ad_east_gifted_with_greenies)

cm_ad_east_pot_room:
	%preset("Pot Room", preset_ad_east_pot_room)

cm_ad_east_zeldagamer_room:
	%preset("Zeldagamer Room", preset_ad_east_zeldagamer_room)

cm_ad_east_armos:
	%preset("Armos", preset_ad_east_armos)

; PALACE OF DARKNESS

cm_ad_presets_goto_pod:
	%submenu("Palace of Darkness", cm_ad_presets_pod)

cm_ad_presets_pod:
	dw cm_ad_pod_outside_ep
	dw cm_ad_pod_sanctuary
	dw cm_ad_pod_dma
	dw cm_ad_pod_death_mountain
	dw cm_ad_pod_after_mirror
	dw cm_ad_pod_kiki_skip
	dw cm_ad_pod_dungeon_reload
	dw cm_ad_pod_main_hub_bk
	dw cm_ad_pod_main_hub_hammerjump
	dw cm_ad_pod_hammerjump
	dw cm_ad_pod_archery_contest
	dw cm_ad_pod_mimics
	dw cm_ad_pod_statue
	dw cm_ad_pod_basement
	dw cm_ad_pod_turtle_room
	dw cm_ad_pod_helma
	dw $0000
	%menu_header("PALACE OF DARKNESS")

cm_ad_pod_outside_ep:
	%preset("Outside EP", preset_ad_pod_outside_ep)

cm_ad_pod_sanctuary:
	%preset("Sanctuary", preset_ad_pod_sanctuary)

cm_ad_pod_dma:
	%preset("DMA", preset_ad_pod_dma)

cm_ad_pod_death_mountain:
	%preset("Death Mountain", preset_ad_pod_death_mountain)

cm_ad_pod_after_mirror:
	%preset("After Mirror", preset_ad_pod_after_mirror)

cm_ad_pod_kiki_skip:
	%preset("Kiki Skip", preset_ad_pod_kiki_skip)

cm_ad_pod_dungeon_reload:
	%preset("Dungeon Reload", preset_ad_pod_dungeon_reload)

cm_ad_pod_main_hub_bk:
	%preset("Main Hub (bk)", preset_ad_pod_main_hub_bk)

cm_ad_pod_main_hub_hammerjump:
	%preset("Main Hub (hammerjump)", preset_ad_pod_main_hub_hammerjump)

cm_ad_pod_hammerjump:
	%preset("Hammerjump", preset_ad_pod_hammerjump)

cm_ad_pod_archery_contest:
	%preset("Archery Contest", preset_ad_pod_archery_contest)

cm_ad_pod_mimics:
	%preset("Mimics", preset_ad_pod_mimics)

cm_ad_pod_statue:
	%preset("Statue", preset_ad_pod_statue)

cm_ad_pod_basement:
	%preset("Basement", preset_ad_pod_basement)

cm_ad_pod_turtle_room:
	%preset("Turtle Room", preset_ad_pod_turtle_room)

cm_ad_pod_helma:
	%preset("Helma", preset_ad_pod_helma)

; HERA TOWER

cm_ad_presets_goto_hera:
	%submenu("Hera Tower", cm_ad_presets_hera)

cm_ad_presets_hera:
	dw cm_ad_hera_outside_pod
	dw cm_ad_hera_old_man_cave
	dw cm_ad_hera_entrance
	dw cm_ad_hera_tile_room
	dw cm_ad_hera_torches
	dw cm_ad_hera_beetles
	dw cm_ad_hera_petting_zoo
	dw cm_ad_hera_moldorm
	dw $0000
	%menu_header("HERA TOWER")

cm_ad_hera_outside_pod:
	%preset("Outside PoD", preset_ad_hera_outside_pod)

cm_ad_hera_old_man_cave:
	%preset("Old Man Cave", preset_ad_hera_old_man_cave)

cm_ad_hera_entrance:
	%preset("Entrance", preset_ad_hera_entrance)

cm_ad_hera_tile_room:
	%preset("Tile Room", preset_ad_hera_tile_room)

cm_ad_hera_torches:
	%preset("Torches", preset_ad_hera_torches)

cm_ad_hera_beetles:
	%preset("Beetles", preset_ad_hera_beetles)

cm_ad_hera_petting_zoo:
	%preset("Petting Zoo", preset_ad_hera_petting_zoo)

cm_ad_hera_moldorm:
	%preset("Moldorm", preset_ad_hera_moldorm)

; THIEVES TOWN

cm_ad_presets_goto_thieves:
	%submenu("Thieves' Town", cm_ad_presets_thieves)

cm_ad_presets_thieves:
	dw cm_ad_thieves_outside_hera
	dw cm_ad_thieves_dmd
	dw cm_ad_thieves_entrance
	dw cm_ad_thieves_after_big_key
	dw cm_ad_thieves_stalfos_hallway
	dw cm_ad_thieves_conveyor_gibos
	dw cm_ad_thieves_hellway
	dw cm_ad_thieves_bomb_floor
	dw cm_ad_thieves_backtracking
	dw cm_ad_thieves_basement
	dw cm_ad_thieves_prison
	dw cm_ad_thieves_backtracking_2
	dw cm_ad_thieves_pot_hammerdash
	dw cm_ad_thieves_blind
	dw $0000
	%menu_header("THIEVES TOWN")

cm_ad_thieves_outside_hera:
	%preset("Outside Hera", preset_ad_thieves_outside_hera)

cm_ad_thieves_dmd:
	%preset("DMD", preset_ad_thieves_dmd)

cm_ad_thieves_entrance:
	%preset("Entrance", preset_ad_thieves_entrance)

cm_ad_thieves_after_big_key:
	%preset("After Big Key", preset_ad_thieves_after_big_key)

cm_ad_thieves_stalfos_hallway:
	%preset("Stalfos Hallway", preset_ad_thieves_stalfos_hallway)

cm_ad_thieves_conveyor_gibos:
	%preset("Conveyor Gibos", preset_ad_thieves_conveyor_gibos)

cm_ad_thieves_hellway:
	%preset("Hellway", preset_ad_thieves_hellway)

cm_ad_thieves_bomb_floor:
	%preset("Bomb Floor", preset_ad_thieves_bomb_floor)

cm_ad_thieves_backtracking:
	%preset("Backtracking", preset_ad_thieves_backtracking)

cm_ad_thieves_basement:
	%preset("Basement", preset_ad_thieves_basement)

cm_ad_thieves_prison:
	%preset("Prison", preset_ad_thieves_prison)

cm_ad_thieves_backtracking_2:
	%preset("Backtracking", preset_ad_thieves_backtracking_2)

cm_ad_thieves_pot_hammerdash:
	%preset("Pot Hammerdash", preset_ad_thieves_pot_hammerdash)

cm_ad_thieves_blind:
	%preset("Blind", preset_ad_thieves_blind)

; SKULL WOODS

cm_ad_presets_goto_skull:
	%submenu("Skull Woods", cm_ad_presets_skull)

cm_ad_presets_skull:
	dw cm_ad_skull_outside_thieves
	dw cm_ad_skull_cursed_dwarf
	dw cm_ad_skull_getting_tempered
	dw cm_ad_skull_fencedash
	dw cm_ad_skull_dash_to_skull_woods
	dw cm_ad_skull_mummy_room
	dw cm_ad_skull_bomb_jump
	dw cm_ad_skull_key_pot
	dw cm_ad_skull_skull_entrance
	dw cm_ad_skull_mummy_hellway
	dw cm_ad_skull_mummy_key
	dw cm_ad_skull_mothula
	dw $0000
	%menu_header("SKULL WOODS")

cm_ad_skull_outside_thieves:
	%preset("Outside Thieves", preset_ad_skull_outside_thieves)

cm_ad_skull_cursed_dwarf:
	%preset("Cursed Dwarf", preset_ad_skull_cursed_dwarf)

cm_ad_skull_getting_tempered:
	%preset("Getting Tempered", preset_ad_skull_getting_tempered)

cm_ad_skull_fencedash:
	%preset("Fencedash", preset_ad_skull_fencedash)

cm_ad_skull_dash_to_skull_woods:
	%preset("Dash to Skull Woods", preset_ad_skull_dash_to_skull_woods)

cm_ad_skull_mummy_room:
	%preset("Mummy Room", preset_ad_skull_mummy_room)

cm_ad_skull_bomb_jump:
	%preset("Bomb Jump", preset_ad_skull_bomb_jump)

cm_ad_skull_key_pot:
	%preset("Key Pot", preset_ad_skull_key_pot)

cm_ad_skull_skull_entrance:
	%preset("Skull Entrance", preset_ad_skull_skull_entrance)

cm_ad_skull_mummy_hellway:
	%preset("Mummy Hellway", preset_ad_skull_mummy_hellway)

cm_ad_skull_mummy_key:
	%preset("Mummy Key", preset_ad_skull_mummy_key)

cm_ad_skull_mothula:
	%preset("Mothula", preset_ad_skull_mothula)

; DESERT PALACE

cm_ad_presets_goto_desert:
	%submenu("Desert Palace", cm_ad_presets_desert)

cm_ad_presets_desert:
	dw cm_ad_desert_outside_skull
	dw cm_ad_desert_ether
	dw cm_ad_desert_bridge_hammerdash
	dw cm_ad_desert_zora_dmd
	dw cm_ad_desert_links_house
	dw cm_ad_desert_swamp_warp
	dw cm_ad_desert_fluteless_mire
	dw cm_ad_desert_desert_entrance
	dw cm_ad_desert_torch_key
	dw cm_ad_desert_pre_cannonballs
	dw cm_ad_desert_desert_2_spinspeed
	dw cm_ad_desert_torches
	dw cm_ad_desert_lanmolas
	dw $0000
	%menu_header("DESERT PALACE")

cm_ad_desert_outside_skull:
	%preset("Outside Skull", preset_ad_desert_outside_skull)

cm_ad_desert_ether:
	%preset("Ether", preset_ad_desert_ether)

cm_ad_desert_bridge_hammerdash:
	%preset("Bridge Hammerdash", preset_ad_desert_bridge_hammerdash)

cm_ad_desert_zora_dmd:
	%preset("Zora DMD", preset_ad_desert_zora_dmd)

cm_ad_desert_links_house:
	%preset("Link's House", preset_ad_desert_links_house)

cm_ad_desert_swamp_warp:
	%preset("Swamp Warp", preset_ad_desert_swamp_warp)

cm_ad_desert_fluteless_mire:
	%preset("Fluteless Mire", preset_ad_desert_fluteless_mire)

cm_ad_desert_desert_entrance:
	%preset("Desert Entrance", preset_ad_desert_desert_entrance)

cm_ad_desert_torch_key:
	%preset("Torch Key", preset_ad_desert_torch_key)

cm_ad_desert_pre_cannonballs:
	%preset("Pre Cannonballs", preset_ad_desert_pre_cannonballs)

cm_ad_desert_desert_2_spinspeed:
	%preset("Desert 2 Spinspeed", preset_ad_desert_desert_2_spinspeed)

cm_ad_desert_torches:
	%preset("Torches", preset_ad_desert_torches)

cm_ad_desert_lanmolas:
	%preset("Lanmolas", preset_ad_desert_lanmolas)

; MISERY MIRE

cm_ad_presets_goto_mire:
	%submenu("Misery Mire", cm_ad_presets_mire)

cm_ad_presets_mire:
	dw cm_ad_mire_outside_desert
	dw cm_ad_mire_entrance
	dw cm_ad_mire_mire_2
	dw cm_ad_mire_main_hub
	dw cm_ad_mire_spike_key
	dw cm_ad_mire_beat_the_fireball
	dw cm_ad_mire_bari_switch
	dw cm_ad_mire_sluggulas
	dw cm_ad_mire_torches
	dw cm_ad_mire_backtracking
	dw cm_ad_mire_mire_to_hera_clip
	dw cm_ad_mire_hera_to_swamp_clip
	dw cm_ad_mire_mire_2_2
	dw cm_ad_mire_big_chest_room
	dw cm_ad_mire_main_hub_post_cane
	dw cm_ad_mire_bridge_room
	dw cm_ad_mire_spooky_action
	dw cm_ad_mire_vitreous
	dw $0000
	%menu_header("MISERY MIRE")

cm_ad_mire_outside_desert:
	%preset("Outside Desert", preset_ad_mire_outside_desert)

cm_ad_mire_entrance:
	%preset("Entrance", preset_ad_mire_entrance)

cm_ad_mire_mire_2:
	%preset("Mire 2", preset_ad_mire_mire_2)

cm_ad_mire_main_hub:
	%preset("Main Hub", preset_ad_mire_main_hub)

cm_ad_mire_spike_key:
	%preset("Spike Key", preset_ad_mire_spike_key)

cm_ad_mire_beat_the_fireball:
	%preset("Beat the Fireball", preset_ad_mire_beat_the_fireball)

cm_ad_mire_bari_switch:
	%preset("Bari Switch", preset_ad_mire_bari_switch)

cm_ad_mire_sluggulas:
	%preset("Sluggulas", preset_ad_mire_sluggulas)

cm_ad_mire_torches:
	%preset("Torches", preset_ad_mire_torches)

cm_ad_mire_backtracking:
	%preset("Backtracking", preset_ad_mire_backtracking)

cm_ad_mire_mire_to_hera_clip:
	%preset("Mire to Hera Clip", preset_ad_mire_mire_to_hera_clip)

cm_ad_mire_hera_to_swamp_clip:
	%preset("Hera to Swamp Clip", preset_ad_mire_hera_to_swamp_clip)

cm_ad_mire_mire_2_2:
	%preset("Mire 2-2", preset_ad_mire_mire_2_2)

cm_ad_mire_big_chest_room:
	%preset("Big Chest Room", preset_ad_mire_big_chest_room)

cm_ad_mire_main_hub_post_cane:
	%preset("Main Hub (post Cane)", preset_ad_mire_main_hub_post_cane)

cm_ad_mire_bridge_room:
	%preset("Bridge Room", preset_ad_mire_bridge_room)

cm_ad_mire_spooky_action:
	%preset("Spooky Action", preset_ad_mire_spooky_action)

cm_ad_mire_vitreous:
	%preset("Vitreous", preset_ad_mire_vitreous)

; SWAMP PALACE

cm_ad_presets_goto_swamp:
	%submenu("Swamp Palace", cm_ad_presets_swamp)

cm_ad_presets_swamp:
	dw cm_ad_swamp_outside_mire
	dw cm_ad_swamp_antifairy_room
	dw cm_ad_swamp_entrance
	dw cm_ad_swamp_first_key_pot
	dw cm_ad_swamp_main_hub
	dw cm_ad_swamp_hookdash
	dw cm_ad_swamp_restock_room
	dw cm_ad_swamp_phelps_way
	dw cm_ad_swamp_arrghus
	dw $0000
	%menu_header("SWAMP PALACE")

cm_ad_swamp_outside_mire:
	%preset("Outside Mire", preset_ad_swamp_outside_mire)

cm_ad_swamp_antifairy_room:
	%preset("Antifairy Room", preset_ad_swamp_antifairy_room)

cm_ad_swamp_entrance:
	%preset("Entrance", preset_ad_swamp_entrance)

cm_ad_swamp_first_key_pot:
	%preset("First Key Pot", preset_ad_swamp_first_key_pot)

cm_ad_swamp_main_hub:
	%preset("Main Hub", preset_ad_swamp_main_hub)

cm_ad_swamp_hookdash:
	%preset("Hookdash", preset_ad_swamp_hookdash)

cm_ad_swamp_restock_room:
	%preset("Restock Room", preset_ad_swamp_restock_room)

cm_ad_swamp_phelps_way:
	%preset("Phelps Way", preset_ad_swamp_phelps_way)

cm_ad_swamp_arrghus:
	%preset("Arrghus", preset_ad_swamp_arrghus)

; ICE PALACE

cm_ad_presets_goto_ice:
	%submenu("Ice Palace", cm_ad_presets_ice)

cm_ad_presets_ice:
	dw cm_ad_ice_outside_swamp
	dw cm_ad_ice_entrance
	dw cm_ad_ice_ice_conveyor
	dw cm_ad_ice_ipbj
	dw cm_ad_ice_penguin_lineup_room
	dw cm_ad_ice_lonely_firebar
	dw cm_ad_ice_last_two_screens
	dw cm_ad_ice_kholdstare
	dw $0000
	%menu_header("ICE PALACE")

cm_ad_ice_outside_swamp:
	%preset("Outside Swamp", preset_ad_ice_outside_swamp)

cm_ad_ice_entrance:
	%preset("Entrance", preset_ad_ice_entrance)

cm_ad_ice_ice_conveyor:
	%preset("Ice Conveyor", preset_ad_ice_ice_conveyor)

cm_ad_ice_ipbj:
	%preset("IPBJ", preset_ad_ice_ipbj)

cm_ad_ice_penguin_lineup_room:
	%preset("Penguin Lineup Room", preset_ad_ice_penguin_lineup_room)

cm_ad_ice_lonely_firebar:
	%preset("Lonely Firebar", preset_ad_ice_lonely_firebar)

cm_ad_ice_last_two_screens:
	%preset("Last Two Screens", preset_ad_ice_last_two_screens)

cm_ad_ice_kholdstare:
	%preset("Kholdstare", preset_ad_ice_kholdstare)

; TURTLE ROCK

cm_ad_presets_goto_trock:
	%submenu("Turtle Rock", cm_ad_presets_trock)

cm_ad_presets_trock:
	dw cm_ad_trock_outside_ice
	dw cm_ad_trock_old_man_cave
	dw cm_ad_trock_tr_climb
	dw cm_ad_trock_laser_entrance
	dw cm_ad_trock_crystal_roller
	dw cm_ad_trock_pokey_1
	dw cm_ad_trock_laser_entrance_2
	dw cm_ad_trock_switch_maze
	dw cm_ad_trock_trinexx
	dw $0000
	%menu_header("TURTLE ROCK")

cm_ad_trock_outside_ice:
	%preset("Outside Ice", preset_ad_trock_outside_ice)

cm_ad_trock_old_man_cave:
	%preset("Old Man Cave", preset_ad_trock_old_man_cave)

cm_ad_trock_tr_climb:
	%preset("TR Climb", preset_ad_trock_tr_climb)

cm_ad_trock_laser_entrance:
	%preset("Laser Entrance", preset_ad_trock_laser_entrance)

cm_ad_trock_crystal_roller:
	%preset("Crystal Roller", preset_ad_trock_crystal_roller)

cm_ad_trock_pokey_1:
	%preset("Pokey 1", preset_ad_trock_pokey_1)

cm_ad_trock_laser_entrance_2:
	%preset("Laser Entrance 2", preset_ad_trock_laser_entrance_2)

cm_ad_trock_switch_maze:
	%preset("Switch Maze", preset_ad_trock_switch_maze)

cm_ad_trock_trinexx:
	%preset("Trinexx", preset_ad_trock_trinexx)

; GANONS TOWER

cm_ad_presets_goto_gtower:
	%submenu("Ganon's Tower", cm_ad_presets_gtower)

cm_ad_presets_gtower:
	dw cm_ad_gtower_outside_turtle_rock
	dw cm_ad_gtower_old_man_cave
	dw cm_ad_gtower_entrance
	dw cm_ad_gtower_spike_skip
	dw cm_ad_gtower_pre_firesnakes_room
	dw cm_ad_gtower_bombable_floor
	dw cm_ad_gtower_floor_2
	dw cm_ad_gtower_mimics_1
	dw cm_ad_gtower_spike_pit
	dw cm_ad_gtower_gauntlet_1
	dw cm_ad_gtower_lanmola_2
	dw cm_ad_gtower_wizzrobes_1
	dw cm_ad_gtower_wizzrobes_2
	dw cm_ad_gtower_torches_1
	dw cm_ad_gtower_torches_2
	dw cm_ad_gtower_helma_key
	dw cm_ad_gtower_bombable_wall
	dw cm_ad_gtower_moldorm_2
	dw cm_ad_gtower_agahnim_2
	dw $0000
	%menu_header("GANONS TOWER")

cm_ad_gtower_outside_turtle_rock:
	%preset("Outside Turtle Rock", preset_ad_gtower_outside_turtle_rock)

cm_ad_gtower_old_man_cave:
	%preset("Old Man Cave", preset_ad_gtower_old_man_cave)

cm_ad_gtower_entrance:
	%preset("Entrance", preset_ad_gtower_entrance)

cm_ad_gtower_spike_skip:
	%preset("Spike Skip", preset_ad_gtower_spike_skip)

cm_ad_gtower_pre_firesnakes_room:
	%preset("Pre Firesnakes Room", preset_ad_gtower_pre_firesnakes_room)

cm_ad_gtower_bombable_floor:
	%preset("Bombable Floor", preset_ad_gtower_bombable_floor)

cm_ad_gtower_floor_2:
	%preset("Floor 2", preset_ad_gtower_floor_2)

cm_ad_gtower_mimics_1:
	%preset("Mimics 1", preset_ad_gtower_mimics_1)

cm_ad_gtower_spike_pit:
	%preset("Spike Pit", preset_ad_gtower_spike_pit)

cm_ad_gtower_gauntlet_1:
	%preset("Gauntlet 1", preset_ad_gtower_gauntlet_1)

cm_ad_gtower_lanmola_2:
	%preset("Lanmola 2", preset_ad_gtower_lanmola_2)

cm_ad_gtower_wizzrobes_1:
	%preset("Wizzrobes 1", preset_ad_gtower_wizzrobes_1)

cm_ad_gtower_wizzrobes_2:
	%preset("Wizzrobes 2", preset_ad_gtower_wizzrobes_2)

cm_ad_gtower_torches_1:
	%preset("Torches 1", preset_ad_gtower_torches_1)

cm_ad_gtower_torches_2:
	%preset("Torches 2", preset_ad_gtower_torches_2)

cm_ad_gtower_helma_key:
	%preset("Helma Key", preset_ad_gtower_helma_key)

cm_ad_gtower_bombable_wall:
	%preset("Bombable Wall", preset_ad_gtower_bombable_wall)

cm_ad_gtower_moldorm_2:
	%preset("Moldorm 2", preset_ad_gtower_moldorm_2)

cm_ad_gtower_agahnim_2:
	%preset("Agahnim 2", preset_ad_gtower_agahnim_2)

; AGAHNIMS TOWER

cm_ad_presets_goto_atower:
	%submenu("Agahnim's Tower", cm_ad_presets_atower)

cm_ad_presets_atower:
	dw cm_ad_atower_pyramid
	dw cm_ad_atower_gold_knights
	dw cm_ad_atower_dark_room_of_despair
	dw cm_ad_atower_dark_room_of_melancholy
	dw cm_ad_atower_spear_guards
	dw cm_ad_atower_circle_of_pots
	dw cm_ad_atower_pit_room
	dw cm_ad_atower_agahnim
	dw $0000
	%menu_header("AGAHNIMS TOWER")

cm_ad_atower_pyramid:
	%preset("Pyramid", preset_ad_atower_pyramid)

cm_ad_atower_gold_knights:
	%preset("Gold Knights", preset_ad_atower_gold_knights)

cm_ad_atower_dark_room_of_despair:
	%preset("Dark Room of Despair", preset_ad_atower_dark_room_of_despair)

cm_ad_atower_dark_room_of_melancholy:
	%preset("Dark Room of Melancholy", preset_ad_atower_dark_room_of_melancholy)

cm_ad_atower_spear_guards:
	%preset("Spear Guards", preset_ad_atower_spear_guards)

cm_ad_atower_circle_of_pots:
	%preset("Circle of Pots", preset_ad_atower_circle_of_pots)

cm_ad_atower_pit_room:
	%preset("Pit Room", preset_ad_atower_pit_room)

cm_ad_atower_agahnim:
	%preset("Agahnim", preset_ad_atower_agahnim)

; GANON

cm_ad_presets_goto_ganon:
	%submenu("Ganon", cm_ad_presets_ganon)

cm_ad_presets_ganon:
	dw cm_ad_ganon_pyramid
	dw $0000
	%menu_header("GANON")

cm_ad_ganon_pyramid:
	%preset("Pyramid", preset_ad_ganon_pyramid)

; BOSSES

cm_ad_presets_goto_boss:
	%submenu("Bosses", cm_ad_presets_boss)

cm_ad_presets_boss:
	dw cm_ad_east_armos
	dw cm_ad_pod_helma
	dw cm_ad_hera_moldorm
	dw cm_ad_thieves_blind
	dw cm_ad_skull_mothula
	dw cm_ad_desert_lanmolas
	dw cm_ad_mire_vitreous
	dw cm_ad_swamp_arrghus
	dw cm_ad_ice_kholdstare
	dw cm_ad_trock_trinexx
	dw cm_ad_gtower_agahnim_2
	dw cm_ad_atower_agahnim
	dw cm_ad_ganon_pyramid
	dw $0000
	%menu_header("BOSSES")
