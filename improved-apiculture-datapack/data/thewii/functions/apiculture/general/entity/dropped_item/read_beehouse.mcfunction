# Get bees
data modify storage thewii:apiculture/temp bees set value []
data modify storage thewii:apiculture/temp bees set from entity @s Item.tag.BlockEntityTag.Bees

# Get honey level
data remove storage thewii:apiculture/temp honey_level
data modify storage thewii:apiculture/temp honey_level set from entity @s Item.tag.BlockStateTag.honey_level