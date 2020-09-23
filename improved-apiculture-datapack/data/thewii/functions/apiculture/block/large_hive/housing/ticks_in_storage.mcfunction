# Set array
data remove storage thewii:apiculture/temp array
data modify storage thewii:apiculture/temp array set from entity @s ArmorItems[3].tag.bees


# Loop
scoreboard players set #length twvp.temp 0
execute store result score #length twvp.temp if data storage thewii:apiculture/temp array[]

function thewii:apiculture/block/large_hive/housing/loop_through_bees


# Store bees
data modify entity @s ArmorItems[3].tag.bees set from storage thewii:apiculture/temp array