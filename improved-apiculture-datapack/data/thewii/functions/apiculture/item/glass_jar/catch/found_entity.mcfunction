execute if score #sneaking twvp.temp matches 0 run function thewii:apiculture/item/glass_jar/catch/put_entity_in
execute if score #sneaking twvp.temp matches 1 if data entity @s[tag=!twia.force_find] {HasNectar:1b} run function thewii:apiculture/item/glass_jar/nectar/get_nectar

execute if score #found twvp.temp matches 0 run scoreboard players set #found twvp.temp -1