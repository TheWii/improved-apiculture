# Cancel in love
data modify entity @s InLove set value 0


# Pacify
data modify entity @s AngerTime set value 0
data remove entity @s AngryAt


# Heal
execute store result score #health twvp.temp run data get entity @s Health

scoreboard players set #max_health twvp.temp 0
execute store result score #max_health twvp.temp run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute if score #max_health twvp.temp matches 0 run scoreboard players set #max_health twvp.temp 10

scoreboard players add #health twvp.temp 2
execute store result entity @s Health float 1 run scoreboard players operation #health twvp.temp < #max_health twvp.temp


# Sounds
execute at @s run playsound minecraft:entity.bee.pollinate neutral @a ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:entity.bee.pollinate neutral @a ~ ~ ~ 1 1