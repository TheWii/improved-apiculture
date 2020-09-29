#> thewii:apiculture/block/place

# Place blocks
execute if entity @s[tag=twia.hive] positioned ~ ~-0.5 ~ run function thewii:apiculture/block/hive/place
execute if entity @s[tag=twia.large_hive] positioned ~ ~-0.5 ~ run function thewii:apiculture/block/large_hive/place
execute if entity @s[tag=twia.candle] run function thewii:apiculture/block/candle/place