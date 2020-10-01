# Get bees from storage
data remove storage thewii:vp_library/temp storageBees
data modify storage thewii:vp_library/temp storageBees set from entity @s ArmorItems[3].tag.bees

# Drop item
scoreboard players set #max_age twvp.temp 1
execute as @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:beehive",Count:1b}}] run function thewii:apiculture/general/entity/dropped_item/find_item

execute as @e[type=minecraft:item,tag=twia.matched_item,limit=1] run function thewii:apiculture/block/large_hive/drop_item

# Kill self
kill @s