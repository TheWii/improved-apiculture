#> thewii:apiculture/block/hive/tick_2

# Destroyed
execute if entity @s[tag=twia.nest] at @s unless block ~ ~ ~ minecraft:bee_nest run function thewii:apiculture/block/hive/destroyed
execute if entity @s[tag=twia.hive] at @s unless block ~ ~ ~ minecraft:beehive run function thewii:apiculture/block/hive/destroyed


# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 51.. run scoreboard players set @s twia.interval 1


# 20 ticks
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #10 twvp.math

# Count bees
execute if score #interval twvp.temp matches 0 if score #leave_hives twvp.temp matches 0 run function thewii:apiculture/block/hive/count_bees

# Update honey level
execute if score #interval twvp.temp matches 3 run function thewii:apiculture/block/hive/honey_level

# Update model rotation
execute if score #interval twvp.temp matches 6 run function thewii:apiculture/block/hive/update_rotation

#
#execute at @s run particle smoke ~ ~ ~ 0.275 0.275 0.275 0.025 2 normal