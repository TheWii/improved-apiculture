# Get coords
execute store result score #x twvp.temp run data get storage thewii:apiculture/temp hivePos.X 10
execute store result score #y twvp.temp run data get storage thewii:apiculture/temp hivePos.Y 10
execute store result score #z twvp.temp run data get storage thewii:apiculture/temp hivePos.Z 10

scoreboard players add #x twvp.temp 5
scoreboard players add #y twvp.temp 5
scoreboard players add #z twvp.temp 5

# At coord
function thewii:apiculture/general/find_coord
execute as @e[type=minecraft:area_effect_cloud,tag=twia.find_coord,limit=1] at @s run function thewii:apiculture/entity/bee/check/at_hive

#execute if score #marked_hive twvp.temp matches 1 run tellraw @a ["Marked a new hive at ",{"score":{"name":"#x","objective":"twvp.temp"}}," ",{"score":{"name":"#y","objective":"twvp.temp"}}," ",{"score":{"name":"#z","objective":"twvp.temp"}},"."]

# Tag
tag @s add twia.checked