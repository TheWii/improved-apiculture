# Get coords
execute store result score #x twvp.temp run data get storage thewii:vp_library/temp flowerPos.X 10
execute store result score #y twvp.temp run data get storage thewii:vp_library/temp flowerPos.Y 10
execute store result score #z twvp.temp run data get storage thewii:vp_library/temp flowerPos.Z 10

# At coord
function thewii:apiculture/general/find_coord
execute at @e[type=minecraft:area_effect_cloud,tag=twia.find_coord,limit=1] positioned ~0.5 ~0.5 ~0.5 run function thewii:apiculture/entity/bee/flower/at_flower
kill @e[type=minecraft:area_effect_cloud,tag=twia.find_coord,limit=1]