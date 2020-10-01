scoreboard players set #storage_amount twvp.temp 0

# Get angry nbt
data remove storage thewii:vp_library/temp angryAt
execute at @s run data modify storage thewii:vp_library/temp angryAt set from entity @e[type=minecraft:bee,limit=1,sort=nearest,distance=..5] AngryAt

# Array
data remove storage thewii:vp_library/temp array
data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/temp storageBees

# Loop
scoreboard players set #length twvp.temp 0
execute store result score #length twvp.temp if data storage thewii:vp_library/temp array[]

execute if score #length twvp.temp matches 1.. run function thewii:apiculture/block/large_hive/leave/loop