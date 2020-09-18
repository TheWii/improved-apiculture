# Get hive pos
data remove storage thewii:apiculture/temp flowerPos
data modify storage thewii:apiculture/temp flowerPos set from entity @s FlowerPos

# Proceed if there is a hive
execute if data storage thewii:apiculture/temp flowerPos run function thewii:apiculture/entity/bee/flower/find_flower

# Raining
execute if score #rain twvp.temp matches 1 at @s if blocks ~ ~1 ~ ~ 255 ~ ~ 255 ~ masked run function thewii:apiculture/entity/bee/rain/main
