# Daytime
execute store result score #daytime twvp.temp run time query daytime

# Check if bees can leave their hives
scoreboard players set #rain twvp.temp 0
execute unless predicate thewii:apiculture/weather/clear run scoreboard players set #rain twvp.temp 1

scoreboard players set #leave_hives twvp.temp 1
execute if score #daytime twvp.temp matches 12542..23460 run scoreboard players set #leave_hives twvp.temp 0
execute if score #rain twvp.temp matches 1 run scoreboard players set #leave_hives twvp.temp 0


# Players
execute as @a run function thewii:apiculture/player/tick_1


# Procriation time
execute if score #daytime twvp.temp matches 1 as @e[type=#thewii:apiculture/custom_block,tag=twia.house] run function thewii:apiculture/block/hive/procriate/start