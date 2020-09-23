# Lore(Total bees in hive + storage)
scoreboard players set #lore_bees twvp.temp 0
execute store result score #lore_bees twvp.temp if data storage thewii:apiculture/temp bees[]
scoreboard players operation #lore_bees twvp.temp += #storage_amount twvp.temp

execute at @s run function thewii:apiculture/general/block/hive/lore
execute if score #lore_bees twvp.temp matches 1.. run data modify entity @s Item.tag.display.Lore append from storage thewii:apiculture/temp lore

# Store honey level
data modify entity @s Item.tag.EntityTag.Item.tag.honeyLevel set from storage thewii:apiculture/temp honeyLevel

# Store bees
data modify entity @s Item.tag.EntityTag.Item.tag.bees set from storage thewii:apiculture/temp bees

# Store bees
data modify entity @s Item.tag.EntityTag.Item.tag.storageBees set from storage thewii:apiculture/temp storageBees


