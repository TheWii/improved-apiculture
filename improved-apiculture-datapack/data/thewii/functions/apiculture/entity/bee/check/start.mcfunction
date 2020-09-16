# Get hive pos
data remove storage thewii:apiculture/temp hivePos
data modify storage thewii:apiculture/temp hivePos set from entity @s HivePos

# Proceed if there is a hive
execute if data storage thewii:apiculture/temp hivePos run function thewii:apiculture/entity/bee/check/find_hive