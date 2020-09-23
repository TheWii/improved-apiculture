#> thewii:apiculture/item/glass_jar/nectar/grow_crop

# Get crop type
execute if block ~ ~ ~ minecraft:wheat run scoreboard players set #crop twvp.temp 0
execute if block ~ ~ ~ minecraft:carrots run scoreboard players set #crop twvp.temp 1
execute if block ~ ~ ~ minecraft:potatoes run scoreboard players set #crop twvp.temp 2
execute if block ~ ~ ~ minecraft:beetroots run scoreboard players set #crop twvp.temp 3
execute if block ~ ~ ~ minecraft:pumpkin_stem run scoreboard players set #crop twvp.temp 4
execute if block ~ ~ ~ minecraft:melon_stem run scoreboard players set #crop twvp.temp 5
execute if block ~ ~ ~ minecraft:sweet_berry_bush run scoreboard players set #crop twvp.temp 6

# Get crop age
scoreboard players set #age twvp.temp 0
execute if block ~ ~ ~ #minecraft:bee_growables[age= 0] run scoreboard players set #age twvp.temp 0
execute if block ~ ~ ~ #minecraft:bee_growables[age= 1] run scoreboard players set #age twvp.temp 1
execute if block ~ ~ ~ #minecraft:bee_growables[age= 2] run scoreboard players set #age twvp.temp 2
execute if block ~ ~ ~ #minecraft:bee_growables[age= 3] run scoreboard players set #age twvp.temp 3
execute if block ~ ~ ~ #minecraft:bee_growables[age= 4] run scoreboard players set #age twvp.temp 4
execute if block ~ ~ ~ #minecraft:bee_growables[age= 5] run scoreboard players set #age twvp.temp 5
execute if block ~ ~ ~ #minecraft:bee_growables[age= 6] run scoreboard players set #age twvp.temp 6
execute if block ~ ~ ~ #minecraft:bee_growables[age= 7] run scoreboard players set #age twvp.temp 7


# Cancel if crop is fully grown already
scoreboard players set #grown twvp.temp 0
execute if score #crop twvp.temp matches 0..2 unless score #age twvp.temp matches 0..6 run scoreboard players set #grown twvp.temp 1
execute if score #crop twvp.temp matches 3 unless score #age twvp.temp matches 0..2 run scoreboard players set #grown twvp.temp 1
execute if score #crop twvp.temp matches 4..5 unless score #age twvp.temp matches 0..6 run scoreboard players set #grown twvp.temp 1
execute if score #crop twvp.temp matches 6 unless score #age twvp.temp matches 0..2 run scoreboard players set #grown twvp.temp 1

# Proceed if not fully grown
execute if score #grown twvp.temp matches 0 run function thewii:apiculture/item/glass_jar/nectar/grow_crop2