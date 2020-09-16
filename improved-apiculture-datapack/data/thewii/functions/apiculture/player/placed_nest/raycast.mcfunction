scoreboard players remove #raycast_limit twvp.temp 1
execute if block ~ ~ ~ minecraft:bee_nest align xyz positioned ~0.5 ~0.5 ~0.5 run function thewii:apiculture/entity/bee/check/at_hive
execute if score #raycast_limit twvp.temp matches 1.. positioned ^ ^ ^0.05 run function thewii:apiculture/player/placed_nest/raycast