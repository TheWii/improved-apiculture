# Destroyed
execute at @s unless block ~ ~ ~ minecraft:bee_nest run function thewii:apiculture/block/hive/destroyed


# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 51.. run scoreboard players set @s twia.interval 1


# 20 ticks
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #10 twvp.math

# Count bees
execute if score #interval twvp.temp matches 0 if score #leave_hives twvp.temp matches 0 at @s run function thewii:apiculture/block/hive/count_bees


#
#execute at @s run particle smoke ~ ~ ~ 0.275 0.275 0.275 0.025 2 normal