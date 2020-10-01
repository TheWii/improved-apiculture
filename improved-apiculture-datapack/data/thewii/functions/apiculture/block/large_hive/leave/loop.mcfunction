# Modify entityData
data modify storage thewii:vp_library/temp entity.entityData set from storage thewii:vp_library/temp array[0].EntityData

data modify storage thewii:vp_library/temp entity.entityData.AngryAt set from storage thewii:vp_library/temp angryAt
data modify storage thewii:vp_library/temp entity.entityData.AngerTime set value 600

# Summon bee
execute at @s run summon bee ~ ~ ~ {Tags:["twia.new_bee"]}
execute as @e[type=minecraft:bee,tag=twia.new_bee,limit=1] run function thewii:apiculture/block/large_hive/leave/summon


# Loop
data remove storage thewii:vp_library/temp array[0]

scoreboard players remove #length twvp.temp 1
execute if score #length twvp.temp matches 1.. run function thewii:apiculture/block/large_hive/leave/loop