# Mark hive
execute if block ~ ~ ~ minecraft:bee_nest run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["global.ignore","global.ignore.kill","global.ignore.pos","twia.tick_2","twia.house","twia.nest"]}
execute if block ~ ~ ~ minecraft:beehive align xyz positioned ~0.5 ~ ~0.5 run function thewii:apiculture/entity/bee/check/mark_beehive

scoreboard players set #marked_hive twvp.temp 1