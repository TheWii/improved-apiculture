# Get honey level
# INPUT: At block
# OUTPUT: #honey_level

scoreboard players set #honey_level twvp.temp 0

execute if block ~ ~ ~ #minecraft:beehives[honey_level= 1] run scoreboard players set #honey_level twvp.temp 1
execute if score #honey_level twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[honey_level= 2] run scoreboard players set #honey_level twvp.temp 2
execute if score #honey_level twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[honey_level= 3] run scoreboard players set #honey_level twvp.temp 3
execute if score #honey_level twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[honey_level= 4] run scoreboard players set #honey_level twvp.temp 4
execute if score #honey_level twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[honey_level= 5] run scoreboard players set #honey_level twvp.temp 5