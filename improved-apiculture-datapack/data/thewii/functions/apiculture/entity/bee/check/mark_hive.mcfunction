# Mark hive
execute if block ~ ~ ~ minecraft:bee_nest run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["twia.house","twia.nest"]}
execute if block ~ ~ ~ minecraft:beehive run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["twia.house","twia.hive"]}

scoreboard players set #marked_hive twvp.temp 1