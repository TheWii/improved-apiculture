#> thewii:apiculture/entity/item/check

# Tag item
tag @s add twia.checked

# Get item data
data remove storage thewii:vp_library/temp item
data modify storage thewii:vp_library/temp item set from entity @s Item


# Check if item is a beehive loot
execute if data storage thewii:vp_library/temp item{id:"minecraft:honeycomb",Count:3b} unless data entity @s Thrower at @s if entity @e[type=#thewii:apiculture/custom_block,tag=twia.house,distance=..0.5] run function thewii:apiculture/entity/item/honeycomb

# Check if item is a beekeeping helmet
execute if data storage thewii:vp_library/temp item{id:"minecraft:warped_fungus_on_a_stick",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_helmet"}}} run function thewii:apiculture/entity/item/beekeeping_helmet