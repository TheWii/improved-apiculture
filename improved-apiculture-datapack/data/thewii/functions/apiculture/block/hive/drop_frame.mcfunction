# Copy item fram data
data remove storage thewii:vp_library/temp bees
data modify storage thewii:vp_library/temp bees set from entity @s Item.tag.bees

data remove storage thewii:vp_library/temp honeyLevel
data modify storage thewii:vp_library/temp honeyLevel set from entity @s Item.tag.honeyLevel


# Drop loot
execute if entity @s[tag=twia.hive.oak] run loot spawn ~ ~ ~ loot thewii:apiculture/block/oak_beehive
execute if entity @s[tag=twia.hive.spruce] run loot spawn ~ ~ ~ loot thewii:apiculture/block/spruce_beehive
execute if entity @s[tag=twia.hive.birch] run loot spawn ~ ~ ~ loot thewii:apiculture/block/birch_beehive
execute if entity @s[tag=twia.hive.jungle] run loot spawn ~ ~ ~ loot thewii:apiculture/block/jungle_beehive
execute if entity @s[tag=twia.hive.acacia] run loot spawn ~ ~ ~ loot thewii:apiculture/block/acacia_beehive
execute if entity @s[tag=twia.hive.dark_oak] run loot spawn ~ ~ ~ loot thewii:apiculture/block/dark_oak_beehive

execute as @e[type=minecraft:item,tag=!global.ignore,distance=..1,limit=1,sort=nearest,nbt={Age:0s}] run function thewii:apiculture/block/hive/drop_frame2