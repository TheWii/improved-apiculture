# Increase ticks by 100
scoreboard players set #ticks twvp.temp 0
execute store result score #ticks twvp.temp run data get storage thewii:apiculture/temp array[0].TicksInHive
execute store result storage thewii:apiculture/temp array[0].TicksInHive int 1 run scoreboard players add #ticks twvp.temp 100

# Loop
data modify storage thewii:apiculture/temp array append from storage thewii:apiculture/temp array[0]
data remove storage thewii:apiculture/temp array[0]

scoreboard players remove #length twvp.temp 1
execute if score #length twvp.temp matches 1.. run function thewii:apiculture/block/large_hive/housing/loop_through_bees