# Reset triggers
advancement revoke @s only thewii:apiculture/player/placed/nest

# Raycast to find block
scoreboard players set #raycast_limit twvp.temp 120
execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/player/placed/nest/raycast

# If no block was found, scan 17x17x17 area around player
execute if score #raycast_limit twvp.temp matches 0 run function thewii:apiculture/player/placed/nest/grid_y