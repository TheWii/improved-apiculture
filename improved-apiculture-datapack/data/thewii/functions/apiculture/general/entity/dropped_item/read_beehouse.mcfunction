#> thewii:apiculture/general/entity/dropped_item/read_beehouse

# Get bees
data modify storage thewii:apiculture/temp bees set value []
data modify storage thewii:apiculture/temp bees set from entity @s Item.tag.BlockEntityTag.Bees

# Get honey level
data remove storage thewii:apiculture/temp honeyLevel
data modify storage thewii:apiculture/temp honeyLevel set from entity @s Item.tag.BlockStateTag.honey_level