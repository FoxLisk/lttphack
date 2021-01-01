; ITEMS {{{

cm_main_goto_items:
	%cm_submenu("Items", cm_submenu_items)

cm_submenu_items:
	dw list_items_bow
	dw list_items_boom
	dw list_items_hook
	dw cm_equipment_bombs
	dw list_items_powder
	dw list_items_fire_rod
	dw list_items_ice_rod
	dw list_items_bombos
	dw list_items_ether
	dw list_items_quake
	dw list_items_lantern
	dw list_items_hammer
	dw list_items_flute
	dw list_items_net
	dw list_items_book
	dw list_items_submenu_bottles
	dw list_items_somaria
	dw list_items_byrna
	dw list_items_cape
	dw list_items_mirror
	dw !menu_end
	%cm_header("ITEMS")

list_items_bow:
	dw !CM_ACTION_CHOICE_JSR
	dw .set_ram_value
	dl SA1RAM.list_item_bow
	%list_item("Bow")
	%list_item("No")
	%list_item("Normal")
	%list_item("Silver")
	db !list_end

.set_ram_value
	; 0 = No bow
	; 1/2 = Normal bow without/with arrows
	; 3/4 = Silver bow without/with arrows
	ASL : TAX : BEQ .end

	LDA.l !ram_equipment_arrows : BNE .end
	DEX
.end
	TXA : STA.l !ram_item_bow
	RTS

list_items_boom:
	dw !CM_ACTION_CHOICE
	dl !ram_item_boom
	%list_item("Boomerang")
	%list_item("No")
	%list_item("Blue")
	%list_item("Red")
	db !list_end

list_items_hook:
	%cm_toggle("Hookshot", !ram_item_hook)

list_items_powder:
	dw !CM_ACTION_CHOICE
	dl !ram_item_powder
	%list_item("Powder")
	%list_item("No")
	%list_item("Shroom")
	%list_item("Powder")
	db !list_end

list_items_fire_rod:
	%cm_toggle("Fire rod", !ram_item_fire_rod)

list_items_ice_rod:
	%cm_toggle("Ice rod", !ram_item_ice_rod)

list_items_bombos:
	%cm_toggle("Bombos", !ram_item_bombos)

list_items_ether:
	%cm_toggle("Ether", !ram_item_ether)

list_items_quake:
	%cm_toggle("Quake", !ram_item_quake)

list_items_lantern:
	%cm_toggle("Lantern", !ram_item_lantern)

list_items_hammer:
	%cm_toggle("Hammer", !ram_item_hammer)

list_items_flute:
	dw !CM_ACTION_CHOICE
	dl !ram_item_flute
	%list_item("Flute")
	%list_item("No")
	%list_item("Shovel")
	%list_item("Flute (off)")
	%list_item("Flute")
	db !list_end

list_items_net:
	%cm_toggle("Net", !ram_item_net)

list_items_book:
	%cm_toggle("Book", !ram_item_book)

list_items_somaria:
	%cm_toggle("Somaria", !ram_item_somaria)

list_items_byrna:
	%cm_toggle("Byrna", !ram_item_byrna)

list_items_cape:
	%cm_toggle("Cape", !ram_item_cape)

list_items_mirror:
	%cm_toggle_jsr("Mirror", SA1RAM.list_item_mirror)

.toggle
	; 0 -> 2
	ASL : STA.l !ram_item_mirror
	RTS

; Bottles submenu

list_items_submenu_bottles:
	%cm_submenu("Bottles", cm_submenu_bottles)

cm_submenu_bottles:
	dw list_items_bottle_1
	dw list_items_bottle_2
	dw list_items_bottle_3
	dw list_items_bottle_4
	dw !menu_end
	%cm_header("BOTTLES")

macro bottle_contents()
	%list_item("No bottle")
	%list_item("Shroooom")
	%list_item("Empty")
	%list_item("Red")
	%list_item("Green")
	%list_item("Blue")
	%list_item("Fairy")
	%list_item("Bee")
	%list_item("Golden bee")
	db !list_end
endmacro

list_items_bottle_1:
	dw !CM_ACTION_CHOICE
	dl !ram_item_bottle_array
	%list_item("Bottle 1")
	%bottle_contents()

list_items_bottle_2:
	dw !CM_ACTION_CHOICE
	dl !ram_item_bottle_array+1
	%list_item("Bottle 2")
	%bottle_contents()

list_items_bottle_3:
	dw !CM_ACTION_CHOICE
	dl !ram_item_bottle_array+2
	%list_item("Bottle 3")
	%bottle_contents()

list_items_bottle_4:
	dw !CM_ACTION_CHOICE
	dl !ram_item_bottle_array+3
	%list_item("Bottle 4")
	%bottle_contents()

; }}}