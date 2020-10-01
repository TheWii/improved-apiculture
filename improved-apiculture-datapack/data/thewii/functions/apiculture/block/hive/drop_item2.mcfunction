# Read beehouse
function thewii:apiculture/general/entity/dropped_item/read_beehouse

# Hive lore
scoreboard players set #lore twvp.temp 0
scoreboard players set #lore_bees twvp.temp 0
execute store result score #lore_bees twvp.temp if data storage thewii:apiculture/temp bees[]

function thewii:apiculture/general/block/hive/lore
data remove storage thewii:apiculture/temp item.tag.display.Lore
data modify storage thewii:apiculture/temp item.tag.display.Lore set from storage thewii:apiculture/temp lore

# Store honey level
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.honeyLevel set from storage thewii:apiculture/temp honeyLevel

# Store bees
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.bees set from storage thewii:apiculture/temp bees


# Store item data
data modify entity @s Item set from storage thewii:apiculture/temp item

# Remove tag
tag @s remove twia.matched_item