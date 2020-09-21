# Raycast
scoreboard players set #found twvp.temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function thewii:apiculture/item/glass_jar/catch/raycast

execute if score #found twvp.temp matches 1 at @s run function thewii:apiculture/item/glass_jar/modify_hand


# Effects
execute if score #found twvp.temp matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 1 1