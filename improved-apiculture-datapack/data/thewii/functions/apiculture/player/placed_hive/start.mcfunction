scoreboard players set #raycast_limit twvp.temp 120
execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/player/placed_hive/raycast
execute if score #raycast_limit twvp.temp matches 0 run function thewii:apiculture/player/placed_hive/grid_y

advancement revoke @s only thewii:apiculture/player/placed_hive