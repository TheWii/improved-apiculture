# Reset triggers
advancement revoke @s only thewii:apiculture/player/placed/dispenser

# Raycast
scoreboard players set #raycast_limit twvp.temp 120
execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/player/placed/dispenser/raycast

# If no block was found, scan 17x17x17 area around player
execute if score #raycast_limit twvp.temp matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function thewii:apiculture/player/placed/dispenser/grid_y