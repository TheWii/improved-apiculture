# Default item nbt
data modify storage thewii:vp_library/temp item set from storage thewii:apiculture/data item.large_beehive

# Read beehouse
function thewii:apiculture/general/entity/dropped_item/read_beehouse


# Storage bees
scoreboard players set #storage_amount twvp.temp 0
execute store result score #storage_amount twvp.temp if data storage thewii:vp_library/temp storageBees[]

execute if data storage thewii:vp_library/temp bees[0] if data storage thewii:vp_library/temp storageBees[0] run data modify storage thewii:vp_library/temp item.tag.EntityTag.Item.tag.storageBees set from storage thewii:vp_library/temp storageBees
execute unless data storage thewii:vp_library/temp bees[0] if data storage thewii:vp_library/temp storageBees[0] run function thewii:apiculture/block/large_hive/leave/start


# Lore(Total bees in hive + storage)
scoreboard players set #lore_bees twvp.temp 0
execute store result score #lore_bees twvp.temp if data storage thewii:vp_library/temp bees[]
scoreboard players operation #lore_bees twvp.temp += #storage_amount twvp.temp

function thewii:apiculture/general/block/hive/lore
data remove storage thewii:vp_library/temp item.tag.display.Lore
data modify storage thewii:vp_library/temp item.tag.display.Lore set from storage thewii:vp_library/temp lore


# Store honey level
data modify storage thewii:vp_library/temp item.tag.EntityTag.Item.tag.honeyLevel set from storage thewii:vp_library/temp honeyLevel

# Store bees
data modify storage thewii:vp_library/temp item.tag.EntityTag.Item.tag.bees set from storage thewii:vp_library/temp bees


# Store item data
data modify entity @s Item set from storage thewii:vp_library/temp item

# Remove tag
tag @s remove twia.matched_item