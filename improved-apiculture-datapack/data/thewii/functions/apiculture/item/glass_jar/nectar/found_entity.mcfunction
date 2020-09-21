scoreboard players set #found twvp.temp -1

scoreboard players operation #empty_space twvp.temp = #item.glass_jar.max_nectar twia.data
scoreboard players operation #empty_space twvp.temp -= #amount twvp.temp

execute if score #sneaking twvp.temp matches 1 if score #empty_space twvp.temp >= #item.glass_jar.nectar_per_bee twia.data if data entity @s[tag=!twia.force_find] {HasNectar:1b} run function thewii:apiculture/item/glass_jar/nectar/get_nectar