# Get honey level
execute at @s run function thewii:apiculture/general/block/honey_level

# Procriate if there's honey
scoreboard players set #procriated twvp.temp 0
execute if score #honey_level twvp.temp matches 1.. if score @s twia.housing matches ..2 at @s run function thewii:apiculture/block/hive/procriate/summon