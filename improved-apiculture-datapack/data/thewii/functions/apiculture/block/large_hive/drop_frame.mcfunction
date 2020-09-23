# Copy item fram data
data remove storage thewii:apiculture/temp bees
data modify storage thewii:apiculture/temp bees set from entity @s Item.tag.bees

data remove storage thewii:apiculture/temp storageBees
data modify storage thewii:apiculture/temp storageBees set from entity @s Item.tag.storageBees

data remove storage thewii:apiculture/temp honeyLevel
data modify storage thewii:apiculture/temp honeyLevel set from entity @s Item.tag.honeyLevel


# Drop loot
loot spawn ~ ~ ~ loot thewii:apiculture/block/large_beehive

execute as @e[type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s}] run function thewii:apiculture/block/large_hive/drop_frame2