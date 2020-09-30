#> thewii:apiculture/block/dispenser/place

# Break out of loop
scoreboard players set #raycast_limit twvp.temp -1

# Summon area effect cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags: ["twia.tick_5","twia.dispenser"]}