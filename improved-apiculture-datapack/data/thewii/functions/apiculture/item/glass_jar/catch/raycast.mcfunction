#> thewii:apiculture/item/glass_jar/catch/raycast

# Raycast
#particle smoke ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=minecraft:bee,dx=0,tag=!global.ignore,tag=!global.ignore.kill] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function thewii:apiculture/item/glass_jar/catch/found_entity
execute if score #found twvp.temp matches 0 unless block ~ ~ ~ #thewii:apiculture/air positioned ^ ^ ^-0.05 run scoreboard players set #found twvp.temp 2

execute if score #found twvp.temp matches 0 positioned ^ ^ ^0.05 if entity @s[distance=..3] run function thewii:apiculture/item/glass_jar/catch/raycast