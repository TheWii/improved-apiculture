# Reset triggers
advancement revoke @s only thewii:apiculture/player/placed_frame
scoreboard players reset @s twia.placed

# Player cardinal direction
function thewii:apiculture/general/detect_cardinal

# Find item frame
execute at @s as @e[type=minecraft:item_frame,tag=twia.place,distance=..16] at @s run function thewii:apiculture/player/placed/validate
