#> thewii:apiculture/entity/item/check

# Tag item
tag @s add twia.checked

# Check if item is a beehive loot
execute if data entity @s Item{id:"minecraft:honeycomb",Count:3b} unless data entity @s Thrower at @s if entity @e[type=#thewii:apiculture/custom_block,tag=twia.house,distance=..0.5] run function thewii:apiculture/entity/item/honeycomb