# Destroyed
execute at @s unless block ~ ~ ~ minecraft:beehive run function thewii:apiculture/block/large_hive/destroyed


# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 50.. run scoreboard players set @s twia.interval 0


# 20 ticks
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #10 twvp.math

# Manage bees
execute if score #interval twvp.temp matches 0 run function thewii:apiculture/block/large_hive/count_bees

# Update honey level
execute if score #interval twvp.temp matches 3 run function thewii:apiculture/block/large_hive/honey_level

# Update model rotation
execute if score #interval twvp.temp matches 6 run function thewii:apiculture/block/large_hive/update_rotation

# Bee ticks in storage(every 100 ticks)
execute if score @s twia.interval matches 1 run function thewii:apiculture/block/large_hive/housing/ticks_in_storage

#
#execute at @s run particle smoke ~ ~ ~ 0.275 0.275 0.275 0.025 2 normal