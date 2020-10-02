# Run dropped item function
scoreboard players set #max_age twvp.temp 1
data modify storage thewii:vp_library/temp item set from storage thewii:apiculture/data item.candle

execute as @e[type=minecraft:item,tag=!global.ignore,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:lantern",Count:1b}}] run function thewii:apiculture/general/entity/dropped_item/find_item
execute as @e[type=minecraft:item,tag=twia.matched_item,limit=1] run function thewii:apiculture/block/candle/drop_item

# Sound
playsound minecraft:block.wool.break block @a ~ ~ ~ 1 0.8

# Kill armor stand
kill @s