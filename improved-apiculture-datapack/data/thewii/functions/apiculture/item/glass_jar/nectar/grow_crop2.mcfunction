#> thewii:apiculture/item/glass_jar/nectar/grow_crop2

# Grow amount
scoreboard players operation #min twvp.math = #item.glass_jar.min_nectar_growth twia.data
scoreboard players operation #max twvp.math = #item.glass_jar.max_nectar_growth twia.data
function thewii:vp_library/math/lcg/ranged_rng
scoreboard players operation #age twvp.temp += #result twvp.math


# Set block
scoreboard players set #found twvp.temp 2

execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:wheat[age= 1]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:wheat[age= 2]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:wheat[age= 3]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:wheat[age= 4]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:wheat[age= 5]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:wheat[age= 6]
execute if score #crop twvp.temp matches 0 if score #age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:wheat[age= 7]

execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:carrots[age= 1]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:carrots[age= 2]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:carrots[age= 3]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:carrots[age= 4]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:carrots[age= 5]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:carrots[age= 6]
execute if score #crop twvp.temp matches 1 if score #age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:carrots[age= 7]

execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:potatoes[age= 1]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:potatoes[age= 2]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:potatoes[age= 3]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:potatoes[age= 4]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:potatoes[age= 5]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:potatoes[age= 6]
execute if score #crop twvp.temp matches 2 if score #age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:potatoes[age= 7]

execute if score #crop twvp.temp matches 3 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:beetroots[age= 1]
execute if score #crop twvp.temp matches 3 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:beetroots[age= 2]
execute if score #crop twvp.temp matches 3 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:beetroots[age= 3]

execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 1]
execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 2]
execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 3]
execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 4]
execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 5]
execute if score #crop twvp.temp matches 4 if score #age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 6]

execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:melon_stem[age= 1]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:melon_stem[age= 2]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:melon_stem[age= 3]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:melon_stem[age= 4]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:melon_stem[age= 5]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:melon_stem[age= 6]
execute if score #crop twvp.temp matches 5 if score #age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:melon_stem[age= 7]

execute if score #crop twvp.temp matches 6 if score #age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 1]
execute if score #crop twvp.temp matches 6 if score #age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 2]
execute if score #crop twvp.temp matches 6 if score #age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 3]


# Particles
execute if score #found twvp.temp matches 2 align xyz run particle minecraft:happy_villager ~0.5 ~0.5 ~0.5 0.25 0.25 0.25 0 4 normal