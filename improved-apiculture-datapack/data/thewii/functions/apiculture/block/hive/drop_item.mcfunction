# Run dropped item function
scoreboard players set #max_age twvp.temp 1
execute if entity @s[tag=twia.hive.oak] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.oak_beehive
execute if entity @s[tag=twia.hive.spruce] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.spruce_beehive
execute if entity @s[tag=twia.hive.birch] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.birch_beehive
execute if entity @s[tag=twia.hive.jungle] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.jungle_beehive
execute if entity @s[tag=twia.hive.acacia] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.acacia_beehive
execute if entity @s[tag=twia.hive.dark_oak] run data modify storage thewii:apiculture/temp item set from storage thewii:apiculture/data item.dark_oak_beehive

execute as @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:beehive",Count:1b}}] run function thewii:apiculture/general/entity/dropped_item/find_item
execute as @e[type=minecraft:item,tag=twia.matched_item,limit=1] run function thewii:apiculture/block/hive/drop_item2