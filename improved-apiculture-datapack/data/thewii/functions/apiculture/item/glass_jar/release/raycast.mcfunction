execute unless entity @s[distance=..2.5] run scoreboard players set #found twvp.temp 1
execute unless block ~ ~ ~ #thewii:apiculture/air run scoreboard players set #found twvp.temp 2

execute if score #found twvp.temp matches 1.. positioned ^ ^ ^-0.5 run function thewii:apiculture/item/glass_jar/release/found
execute if score #found twvp.temp matches 0 positioned ^ ^ ^0.05 run function thewii:apiculture/item/glass_jar/release/raycast