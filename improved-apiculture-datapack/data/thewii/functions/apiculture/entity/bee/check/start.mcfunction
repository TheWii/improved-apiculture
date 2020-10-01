# Get hive pos
data remove storage thewii:vp_library/temp hivePos
data modify storage thewii:vp_library/temp hivePos set from entity @s HivePos

# Proceed if there is a hive
execute if data storage thewii:vp_library/temp hivePos run function thewii:apiculture/entity/bee/check/find_hive

# Force find
execute if entity @s[tag=!twia.found_house,tag=!twia.force_find] run function thewii:apiculture/entity/bee/check/force_find


#execute at @s run particle smoke ~ ~ ~ 0.2 0.2 0.2 0 10 normal