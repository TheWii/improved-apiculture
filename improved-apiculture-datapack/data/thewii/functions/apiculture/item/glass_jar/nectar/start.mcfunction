#> thewii:apiculture/item/glass_jar/nectar/start

# nectar ammount
scoreboard players set #amount twvp.temp 0
execute store result score #amount twvp.temp run data get storage thewii:vp_library/temp mainhand.tag.apic.contents.nectarAmount
#tellraw @a {"score":{"name":"#amount","objective": "twvp.temp"}}


# Raycast
scoreboard players set #found twvp.temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function thewii:apiculture/item/glass_jar/nectar/raycast

execute if score #found twvp.temp matches 1.. at @s run function thewii:apiculture/item/glass_jar/modify_hand


# Effects
execute if score #found twvp.temp matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 1 1
execute if score #found twvp.temp matches 2 at @s run playsound minecraft:entity.bee.pollinate player @s ~ ~ ~ 0.75 1