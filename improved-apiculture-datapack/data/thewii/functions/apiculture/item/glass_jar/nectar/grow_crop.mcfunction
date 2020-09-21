execute if block ~ ~ ~ minecraft:wheat run scoreboard players set #crop twvp.temp 0
execute if block ~ ~ ~ minecraft:carrots run scoreboard players set #crop twvp.temp 1
execute if block ~ ~ ~ minecraft:potatoes run scoreboard players set #crop twvp.temp 2
execute if block ~ ~ ~ minecraft:beetroots run scoreboard players set #crop twvp.temp 3
execute if block ~ ~ ~ minecraft:pumpkin_stem run scoreboard players set #crop twvp.temp 4
execute if block ~ ~ ~ minecraft:melon_stem run scoreboard players set #crop twvp.temp 5
execute if block ~ ~ ~ minecraft:sweet_berry_bush run scoreboard players set #crop twvp.temp 6

scoreboard players set #age twvp.temp 0
execute if block ~ ~ ~ #minecraft:bee_growables[age= 0] run scoreboard players set #age twvp.temp 0
execute if block ~ ~ ~ #minecraft:bee_growables[age= 1] run scoreboard players set #age twvp.temp 1
execute if block ~ ~ ~ #minecraft:bee_growables[age= 2] run scoreboard players set #age twvp.temp 2
execute if block ~ ~ ~ #minecraft:bee_growables[age= 3] run scoreboard players set #age twvp.temp 3
execute if block ~ ~ ~ #minecraft:bee_growables[age= 4] run scoreboard players set #age twvp.temp 4
execute if block ~ ~ ~ #minecraft:bee_growables[age= 5] run scoreboard players set #age twvp.temp 5
execute if block ~ ~ ~ #minecraft:bee_growables[age= 6] run scoreboard players set #age twvp.temp 6
execute if block ~ ~ ~ #minecraft:bee_growables[age= 7] run scoreboard players set #age twvp.temp 7

scoreboard players operation #grow twvp.temp = #item.glass_jar.min_grow_rate twia.data
execute if predicate thewii:vp_library/chance/50 run scoreboard players add #grow twvp.temp 1

scoreboard players operation #grew_age twvp.temp = #age twvp.temp
scoreboard players operation #grew_age twvp.temp += #grow twvp.temp

scoreboard players set #found twvp.temp 2

execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:wheat[age= 1]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:wheat[age= 2]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:wheat[age= 3]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:wheat[age= 4]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:wheat[age= 5]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:wheat[age= 6]
execute if score #crop twvp.temp matches 0 if score #grew_age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:wheat[age= 7]
execute if score #crop twvp.temp matches 0 unless score #age twvp.temp matches 0..6 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:carrots[age= 1]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:carrots[age= 2]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:carrots[age= 3]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:carrots[age= 4]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:carrots[age= 5]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:carrots[age= 6]
execute if score #crop twvp.temp matches 1 if score #grew_age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:carrots[age= 7]
execute if score #crop twvp.temp matches 1 unless score #age twvp.temp matches 0..6 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:potatoes[age= 1]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:potatoes[age= 2]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:potatoes[age= 3]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:potatoes[age= 4]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:potatoes[age= 5]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:potatoes[age= 6]
execute if score #crop twvp.temp matches 2 if score #grew_age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:potatoes[age= 7]
execute if score #crop twvp.temp matches 2 unless score #age twvp.temp matches 0..6 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 3 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:beetroots[age= 1]
execute if score #crop twvp.temp matches 3 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:beetroots[age= 2]
execute if score #crop twvp.temp matches 3 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:beetroots[age= 3]
execute if score #crop twvp.temp matches 3 unless score #age twvp.temp matches 0..2 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 1]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 2]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 3]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 4]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 5]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 6]
execute if score #crop twvp.temp matches 4 if score #grew_age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:pumpkin_stem[age= 7]
execute if score #crop twvp.temp matches 4 unless score #age twvp.temp matches 0..6 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:melon_stem[age= 1]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:melon_stem[age= 2]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:melon_stem[age= 3]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 4 run setblock ~ ~ ~ minecraft:melon_stem[age= 4]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 5 run setblock ~ ~ ~ minecraft:melon_stem[age= 5]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 6 run setblock ~ ~ ~ minecraft:melon_stem[age= 6]
execute if score #crop twvp.temp matches 5 if score #grew_age twvp.temp matches 7.. run setblock ~ ~ ~ minecraft:melon_stem[age= 7]
execute if score #crop twvp.temp matches 5 unless score #age twvp.temp matches 0..6 run scoreboard players set #found twvp.temp -1

execute if score #crop twvp.temp matches 6 if score #grew_age twvp.temp matches 1 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 1]
execute if score #crop twvp.temp matches 6 if score #grew_age twvp.temp matches 2 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 2]
execute if score #crop twvp.temp matches 6 if score #grew_age twvp.temp matches 3 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age= 3]
execute if score #crop twvp.temp matches 6 unless score #age twvp.temp matches 0..2 run scoreboard players set #found twvp.temp -1

# Particles
execute if score #found twvp.temp matches 2 align xyz run particle minecraft:happy_villager ~0.5 ~0.5 ~0.5 0.25 0.25 0.25 0 4 normal




