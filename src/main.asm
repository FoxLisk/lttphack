math pri on

sa1rom

!VERSION ?= "ALEPH 1"

incsrc defines.asm
incsrc hexedits.asm

org $208000
incsrc sa1hooks.asm
incsrc gamemode.asm
incsrc nmi.asm
incsrc timers.asm
incsrc hudextras.asm
incsrc rng.asm
incsrc misc.asm

org $218000
incsrc tiles.asm

org $228000
incsrc init.asm

org $238000
CM:
table resources/menu.tbl
incsrc cm_macros.asm
incsrc cm_main.asm
incsrc cm_draw.asm
incsrc cm_func.asm
incsrc cm_items.asm
incsrc cm_equipment.asm
incsrc cm_gamestate.asm
incsrc cm_linkstate.asm
incsrc cm_gameplay.asm
incsrc cm_rng.asm
incsrc cm_hud.asm
incsrc cm_controls.asm
incsrc cm_config.asm

CM_END:
print "Custom menu size: $", hex(CM_END-CM)

org $268000
incsrc presets2.asm

org $288000
incsrc music.asm

org $298000
;incsrc movie.asm

; ---- data ----

org $308000
incsrc cm_presets_nmg.asm
incsrc cm_presets_anyrmg.asm

org $318000
incsrc cm_presets_hundo.asm

org $328000
incsrc cm_presets_lowleg.asm

org $338000
incsrc cm_presets_adold.asm
incsrc cm_presets_ad2020.asm

org $348000
incsrc cm_presets_lownmg.asm

; pad rom to 2mb
org $3FFFFF
db $FF
