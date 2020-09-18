# Get block honey level
execute at @s run function thewii:apiculture/general/block/honey_level

# Update model if honey level changed
execute unless score @s twia.honey = #honey_level twvp.temp if entity @s[tag=twia.hive] run function thewii:apiculture/block/hive/update_model
scoreboard players operation @s twia.honey = #honey_level twvp.temp