# Mark hive if it's not marked yet
scoreboard players set #marked_hive twvp.temp 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=twia.house,limit=1,distance=..0.5] run function thewii:apiculture/entity/bee/check/mark_hive