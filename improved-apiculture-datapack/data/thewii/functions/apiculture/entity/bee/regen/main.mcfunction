scoreboard players set #regen_time twvp.temp 1

execute at @s run particle minecraft:dust 1 1 1 1 ~ ~0.25 ~ 0.15 0.15 0.15 1 1 normal

scoreboard players add @s twia.regen 1
execute if score @s twia.regen >= #bee.stinger_regen_time twia.data if predicate thewii:vp_library/chance/25 run function thewii:apiculture/entity/bee/regen/done