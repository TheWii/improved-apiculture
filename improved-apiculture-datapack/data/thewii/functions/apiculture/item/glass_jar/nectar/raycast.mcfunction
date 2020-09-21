# Raycast
execute as @e[type=minecraft:bee,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function thewii:apiculture/item/glass_jar/nectar/found_entity
execute if score #found twvp.temp matches 0 unless block ~ ~ ~ #thewii:apiculture/air run function thewii:apiculture/item/glass_jar/nectar/found_block

execute if score #found twvp.temp matches 0 positioned ^ ^ ^0.05 if entity @s[distance=..3] run function thewii:apiculture/item/glass_jar/nectar/raycast