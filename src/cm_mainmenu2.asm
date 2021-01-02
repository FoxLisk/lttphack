!MENU_OPTION = 1
!CM_HEADER_ID = 0

!LIST_ITEM = -1

this = 0
macro cm_header(name, size)
	!MENU_OPTION = 1
.name_pointers
	dw .header_text
	fillword EMPTY_THING : fill <size>*2
	dw 0

.header_text
	db "<name>", $FF

	!CM_HEADER_ID #= !CM_HEADER_ID+1
endmacro

macro add_self()
	pushpc
	org .name_pointers+(!MENU_OPTION*2) : dw ?TEMP
	pullpc
#?TEMP:
	!MENU_OPTION #= !MENU_OPTION+1
endmacro

;===============================================================================
;
;===============================================================================
!LIST_HEADER_ID = 0
macro list_header(options)
.LIST_HEADER!LIST_HEADER_ID
	!LIST_ITEM = -1
..table
	fillword $0000 : fill <options>*2

	!LIST_HEADER_ID #= !LIST_HEADER_ID+1
endmacro

macro list_item(text)
	!LIST_ITEM #= !LIST_ITEM+1
	pushpc
	org ..table+(!LIST_ITEM*2) : dw ?here
	pullpc
#?here:
	db "<text>", $FF
endmacro

;===============================================================================
; Each command is defined here so that everything is organized automatically
; ADDRESS_TEXT should always follow ADDRESS
; Except for NUMFIELD ranges and CHOICE list size
; FUNC should always be last
;===============================================================================
!NUMBER_OF_COMMANDS = 80
!COMMAND_ID = -1
ActionLengths:
	fillbyte 0 : fill !NUMBER_OF_COMMANDS

ActionIcons:
	fillbyte 0 : fill !NUMBER_OF_COMMANDS

ActionDoRoutines:
	fillword ACTION_EXIT : fill !NUMBER_OF_COMMANDS*2

ActionDrawRoutines:
	fillword ACTION_EXIT : fill !NUMBER_OF_COMMANDS*2

macro MenuAction(name, args, icon)
	!COMMAND_ID #= !COMMAND_ID+1
	!CM_<name> := !COMMAND_ID

	org ActionLengths+!COMMAND_ID : db <args> ; includes the ID byte
	org ActionIcons+!COMMAND_ID : db <icon>
	org ActionDoRoutines+(2*!COMMAND_ID) : dw CMDO_<name>
	org ActionDrawRoutines+(2*!COMMAND_ID) : dw CMDRAW_<name>
endmacro

pushpc

;-------------------------------------------------------------------------------
%MenuAction("HEADER", 0, $1F)

;-------------------------------------------------------------------------------
%MenuAction("PRESET", 3, $4E)
macro cm_preset(name, addr)
	%add_self()
	db !CM_PRESET
	dw <addr>
	db "<name>", $FF
endmacro

;-------------------------------------------------------------------------------
%MenuAction("TOGGLE", 3, $4B)
macro cm_toggle(name, addr)
	%add_self()
	db !CM_TOGGLE
	dw <addr>
	db "<name>", $FF
endmacro

%MenuAction("TOGGLE_LONG", 4, $4B)
macro cm_toggle_long(name, addr)
	%add_self()
	db !CM_TOGGLE_LONG
	dl <addr>
	db "<name>", $FF
endmacro

%MenuAction("TOGGLE_FUNC", 6, $4B)
macro cm_toggle_func(name, addr, func)
	%add_self()
	db !CM_TOGGLE_FUNC
	dw <addr>
	dl select(equal(<func>,this), ?here, <func>)
	db "<name>", $FF

#?here:
endmacro

%MenuAction("TOGGLE_FUNC_CUSTOMTEXT", 8, $4B)
macro cm_toggle_func_customtext(name, addr, func, addrtext)
	%add_self()
	db !CM_TOGGLE_FUNC_CUSTOMTEXT
	dw <addr>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	dw <func>
	db "<name>", $FF

#?here:
endmacro

macro cm_toggle_func_customtext_here(name, addr, func)
	%cm_toggle_func_customtext(<name>, <addr>, <func>, this)
	%list_header(2)
endmacro

%MenuAction("TOGGLE_LONG_FUNC", 7, $4B)
macro cm_toggle_long_func(name, addr, func)
	%add_self()
	db !CM_TOGGLE_LONG_FUNC
	dl <addr>
	dl select(equal(<func>,this), ?here, <func>)
	db "<name>", $FF

#?here:
endmacro

%MenuAction("TOGGLE_LONG_FUNC_CUSTOMTEXT", 10, $4B)
macro cm_toggle_long_func_customtext(name, addr, func, addrtext)
	%add_self()
	db !CM_TOGGLE_LONG_FUNC_CUSTOMTEXT
	dl <addr>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	dl <func>
	db "<name>", $FF

#?here:
endmacro

macro cm_toggle_long_func_customtext_here(name, addr, func)
	%cm_toggle_long_func_customtext(<name>, <addr>, <func>, this)
	%list_header(2)
endmacro

;-------------------------------------------------------------------------------
%MenuAction("SUBMENU", 4, $49)
macro cm_submenu(name, addr)
	%add_self()
	db !CM_SUBMENU
	dl <addr>
	db "<name>", $FF
endmacro

%MenuAction("SUBMENU_VARIABLE", 4, $49)
macro cm_submenu_variable(name, addr)
	%add_self()
	db !CM_SUBMENU_VARIABLE
	dl select(equal(<addr>,this), ?here, <addr>)
	db "<name>", $FF

#?here:
endmacro

;-------------------------------------------------------------------------------
%MenuAction("NUMFIELD", 6, $4D)
macro cm_numfield(name, addr, start, end, increment)
	%add_self()
	db !CM_NUMFIELD
	dw <addr>
	db <start>, <end>, <increment>
	db "<name>", $FF
endmacro

%MenuAction("NUMFIELD_LONG", 7, $4D)
macro cm_numfield_long(name, addr, start, end, increment)
	%add_self()
	db !CM_NUMFIELD_LONG
	dl <addr>
	db <start>, <end>, <increment>
	db "<name>", $FF
endmacro

%MenuAction("NUMFIELD_FUNC", 9, $4D)
macro cm_numfield_func(name, addr, start, end, increment, func)
	%add_self()
	db !CM_NUMFIELD_FUNC
	dw <addr>
	db <start>, <end>, <increment>
	dl select(equal(<func>,this), ?here, <func>)
	db "<name>", $FF
#?here:
endmacro

%MenuAction("NUMFIELD_LONG_FUNC", 10, $4D)
macro cm_numfield_long_func(name, addr, start, end, increment, func)
	%add_self()
	db !CM_NUMFIELD_FUNC
	dl <addr>
	db <start>, <end>, <increment>
	dl select(equal(<func>,this), ?here, <func>)
	db "<name>", $FF
#?here:
endmacro

;-------------------------------------------------------------------------------
%MenuAction("TOGGLE_BIT0", 3, $4B)
%MenuAction("TOGGLE_BIT1", 3, $4B)
%MenuAction("TOGGLE_BIT2", 3, $4B)
%MenuAction("TOGGLE_BIT3", 3, $4B)
%MenuAction("TOGGLE_BIT4", 3, $4B)
%MenuAction("TOGGLE_BIT5", 3, $4B)
%MenuAction("TOGGLE_BIT6", 3, $4B)
%MenuAction("TOGGLE_BIT7", 3, $4B)
macro cm_toggle_bit(name, addr, bitx)
	%add_self()
	db !CM_TOGGLE_BIT<bitx>
	dw <addr>
	db "<name>", $FF
endmacro

%MenuAction("TOGGLE_BIT0_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT1_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT2_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT3_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT4_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT5_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT6_CUSTOMTEXT", 6, $4B)
%MenuAction("TOGGLE_BIT7_CUSTOMTEXT", 6, $4B)
macro cm_toggle_bit_customtext(name, addr, bitx, addrtext)
	%add_self()
	db !CM_TOGGLE_BIT<bitx>_CUSTOMTEXT
	dw <addr>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

macro cm_togglebit_customtext_here(name, addr, bitx)
	%cm_toggle_bit_customtext(<name>, <addr>, <bitx>, this)
	%list_header(2)
endmacro

%MenuAction("TOGGLE_BIT0_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT1_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT2_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT3_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT4_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT5_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT6_LONG", 4, $4B)
%MenuAction("TOGGLE_BIT7_LONG", 4, $4B)
macro cm_toggle_bit_long(name, addr, bitx)
	%add_self()
	db !CM_TOGGLE_BIT<bitx>_LONG
	dl <addr>
	db "<name>", $FF
endmacro

%MenuAction("TOGGLE_BIT0_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT1_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT2_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT3_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT4_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT5_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT6_LONG_CUSTOMTEXT", 7, $4B)
%MenuAction("TOGGLE_BIT7_LONG_CUSTOMTEXT", 7, $4B)
macro cm_toggle_bit_long_customtext(name, addr, bitx, addrtext)
	%add_self()
	db !CM_TOGGLE_BIT<bitx>_LONG_CUSTOMTEXT
	dl <addr>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

macro cm_togglebit_long_customtext_here(name, addr, bitx)
	%cm_toggle_bit_long_customtext(<name>, <addr>, <bitx>, this)
	%list_header(2)
endmacro

;-------------------------------------------------------------------------------
%MenuAction("FUNC", 4, $4A)
macro cm_func(name, addr)
	%add_self()
	db !CM_FUNC
	dl select(equal(<addr>,this), ?here, <addr>)
	db "<name>", $FF

#?here:
endmacro

;-------------------------------------------------------------------------------
%MenuAction("CTRL_SHORTCUT", 3, $4F)
macro cm_ctrl_shortcut(name, addr)
	%add_self()
	db !CM_CTRL_SHORTCUT
	dw <addr>
	db "<name>", $FF
endmacro

%MenuAction("CTRL_SHORTCUT_FINAL", 3, $4F)
macro cm_ctrl_shortcut_final(name, addr)
	%add_self()
	db !CM_CTRL_SHORTCUT_FINAL
	dw <addr>
	db "<name>", $FF
endmacro

;-------------------------------------------------------------------------------
%MenuAction("CHOICE", 7, $4B)
macro cm_choice(name, addr, max, addrtext)
	%add_self()
	db !CM_CHOICE
	dw <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

macro cm_choice_here(name, addr, max)
	%cm_choice(<name>, <addr>, <max>, this)
	%list_header(<max>)
endmacro

%MenuAction("CHOICE_LONG", 8, $4B)
macro cm_choice_long(name, addr, max, addrtext)
	%add_self()
	db !CM_CHOICE_LONG
	dl <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

macro cm_choice_long_here(name, addr, max)
	%cm_choice_long(<name>, <addr>, <max>, this)
	%list_header(<max>)
endmacro

; for text that can be programmatically decided
%MenuAction("CHOICE_PRGTEXT", 7, $4B)
macro cm_choice_prgtext(name, addr, max, addrtext)
	%add_self()
	db !CM_CHOICE_PRGTEXT
	dw <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

; for text that can be programmatically decided
%MenuAction("CHOICE_LONG_PRGTEXT", 8, $4B)
macro cm_choice_long_prgtext(name, addr, max, addrtext)
	%add_self()
	db !CM_CHOICE_LONG_PRGTEXT
	dl <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

;-------------------------------------------------------------------------------
%MenuAction("CHOICE_FUNC", 10, $4B)
macro cm_choice_func(name, addr, max, func, addrtext)
	%add_self()
	db !CM_CHOICE_FUNC
	dw <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	dl <func>
	db "<name>", $FF

#?here:
endmacro

macro cm_choice_func_here(name, addr, max, func)
	%cm_choice_func(<name>, <addr>, <max>, <func>, this)
	%list_header(<max>)
endmacro

%MenuAction("CHOICE_LONG_FUNC", 11, $4B)
macro cm_choice_long_func(name, addr, max, func, addrtext)
	%add_self()
	db !CM_CHOICE_LONG_FUNC
	dl <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	dl <func>
	db "<name>", $FF

#?here:
endmacro

macro cm_choice_long_func_here(name, addr, max, func)
	%cm_choice_long_func(<name>, <addr>, <max>, <func>, this)
	%list_header(<max>)
endmacro

; for text that can be programmatically decided
%MenuAction("CHOICE_FUNC_PRGTEXT", 10, $4B)
macro cm_choice_func_prgtext(name, addr, max, func, addrtext)
	%add_self()
	db !CM_CHOICE_FUNC_PRGTEXT
	dw <addr>
	db <max>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	dl <func>
	db "<name>", $FF

#?here:
endmacro

; for text that can be programmatically decided
%MenuAction("CHOICE_LONG_FUNC_PRGTEXT", 11, $4B)
macro cm_choice_long_func_prgtext(name, addr,  max, func, addrtext)
	%add_self()
	db !CM_CHOICE_LONG_FUNC_PRGTEXT
	dl <addr>
	db <max>
	dl <func>
	dl select(equal(<addrtext>,this), ?here, <addrtext>)
	db "<name>", $FF

#?here:
endmacro

;===============================================================================
; END OF COMMAND DEFINITIONS
;===============================================================================

pullpc
EMPTY_THING:
	dw "TEST", $FF

cm_mainmenu:
;	%cm_header("LTTPHACK !VERSION", 10)
	%cm_header("LTTPHACK !VERSION", 2)
;	%cm_submenu("Presets", preset_menu)
;	%cm_submenu("Y Items", preset_menu)
;	%cm_submenu("Equipment", preset_menu)
;	%cm_submenu("Game state", GAMESTATE_SUBMENU)
;	%cm_submenu("Link state", preset_menu)
;	%cm_submenu("Gameplay", preset_menu)
;	%cm_submenu("RNG control", RNG_SUBMENU)
;	%cm_submenu("Shortcuts", preset_menu)
	%cm_submenu("HUD extras", HUDEXTRAS_SUBMENU)
	%cm_toggle("TEST", $37f)
;	%cm_submenu("Settings", CONFIG_SUBMENU)