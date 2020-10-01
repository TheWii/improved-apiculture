#> thewii:apiculture/general/entity/dropped_item/read_beehouse

# Get bees
data modify storage thewii:vp_library/temp bees set value []
data modify storage thewii:vp_library/temp bees set from entity @s Item.tag.BlockEntityTag.Bees

# Get honey level
data remove storage thewii:vp_library/temp honeyLevel
data modify storage thewii:vp_library/temp honeyLevel set from entity @s Item.tag.BlockStateTag.honey_level