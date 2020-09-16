# Set a relative beenest
# INPUT: At block, #facing, #honey_level and Bees nbt.

execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 0 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=0]
execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 1 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=1]
execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 2 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=2]
execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 3 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=3]
execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 4 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=4]
execute if score #facing twvp.temp matches 1 if score #honey_level twvp.temp matches 5 run setblock ~ ~ ~ minecraft:bee_nest[facing=north,honey_level=5]

execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 0 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=0]
execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 1 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=1]
execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 2 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=2]
execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 3 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=3]
execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 4 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=4]
execute if score #facing twvp.temp matches 2 if score #honey_level twvp.temp matches 5 run setblock ~ ~ ~ minecraft:bee_nest[facing=south,honey_level=5]

execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 0 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=0]
execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 1 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=1]
execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 2 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=2]
execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 3 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=3]
execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 4 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=4]
execute if score #facing twvp.temp matches 3 if score #honey_level twvp.temp matches 5 run setblock ~ ~ ~ minecraft:bee_nest[facing=east,honey_level=5]

execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 0 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=0]
execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 1 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=1]
execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 2 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=2]
execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 3 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=3]
execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 4 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=4]
execute if score #facing twvp.temp matches 4 if score #honey_level twvp.temp matches 5 run setblock ~ ~ ~ minecraft:bee_nest[facing=west,honey_level=5]

data modify block ~ ~ ~ Bees set from storage thewii:apiculture/temp bees
