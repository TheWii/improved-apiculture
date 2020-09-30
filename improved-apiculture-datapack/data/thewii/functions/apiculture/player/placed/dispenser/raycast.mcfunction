scoreboard players remove #raycast_limit twvp.temp 1
execute if block ~ ~ ~ minecraft:dispenser align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=#thewii:apiculture/custom_block,distance=..0.5,limit=1] run function thewii:apiculture/block/dispenser/place
execute if score #raycast_limit twvp.temp matches 1.. positioned ^ ^ ^0.05 run function thewii:apiculture/player/placed/dispenser/raycast