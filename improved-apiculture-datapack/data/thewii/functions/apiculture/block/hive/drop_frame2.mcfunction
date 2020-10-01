# Hive lore
scoreboard players set #lore_bees twvp.temp 0
execute store result score #lore_bees twvp.temp if data storage thewii:vp_library/temp bees[]

execute at @s run function thewii:apiculture/general/block/hive/lore
execute if score #lore_bees twvp.temp matches 1.. run data modify entity @s Item.tag.display.Lore append from storage thewii:vp_library/temp lore

# Store honey level
data modify entity @s Item.tag.EntityTag.Item.tag.honeyLevel set from storage thewii:vp_library/temp honeyLevel

# Store bees
data modify entity @s Item.tag.EntityTag.Item.tag.bees set from storage thewii:vp_library/temp bees


