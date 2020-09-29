execute as @e[type=minecraft:item,distance=..0.75,nbt={Age:0s,Item:{id:"minecraft:honeycomb",Count:3b}}] run function thewii:apiculture/player/harvest_honey/found

execute if score #found_item twvp.temp matches 0 positioned ^ ^ ^0.25 if entity @s[distance=..6] run function thewii:apiculture/player/harvest_honey/raycast