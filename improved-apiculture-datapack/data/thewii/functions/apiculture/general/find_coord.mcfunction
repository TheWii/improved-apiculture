execute at @e[limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["twia.find_coord"],Duration:1}

execute as @e[type=minecraft:area_effect_cloud,tag=twia.find_coord,limit=1] run function thewii:apiculture/general/find_coord2