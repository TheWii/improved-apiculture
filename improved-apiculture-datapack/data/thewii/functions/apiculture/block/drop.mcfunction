#> thewii:apiculture/block/drop

# Drop hive
execute if entity @s[tag=twia.hive] run function thewii:apiculture/block/hive/drop_frame
execute if entity @s[tag=twia.large_hive] run function thewii:apiculture/block/large_hive/drop_frame
execute if entity @s[tag=twia.candle] run function thewii:apiculture/block/candle/drop_frame