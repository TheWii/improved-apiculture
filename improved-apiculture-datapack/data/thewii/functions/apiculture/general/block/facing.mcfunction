# Get facing direction
# INPUT: At block
# OUTPUT: #facing

scoreboard players set #facing twvp.temp 0

execute if block ~ ~ ~ #minecraft:beehives[facing=north] run scoreboard players set #facing twvp.temp 1
execute if score #facing twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[facing=south] run scoreboard players set #facing twvp.temp 2
execute if score #facing twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[facing=east] run scoreboard players set #facing twvp.temp 3
execute if score #facing twvp.temp matches 0 if block ~ ~ ~ #minecraft:beehives[facing=west] run scoreboard players set #facing twvp.temp 4
