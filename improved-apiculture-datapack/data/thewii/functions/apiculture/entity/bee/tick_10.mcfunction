# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 21.. run scoreboard players set @s twia.interval 1


# Impossible to breed
execute store result score #in_love twvp.temp run data get entity @s InLove
execute if score #in_love twvp.temp matches 1.. run function thewii:apiculture/entity/bee/fed

# Find bee house
execute unless entity @s[tag=twia.found_house] run function thewii:apiculture/entity/bee/check/start

# Has regeneration
scoreboard players set #regen twvp.temp 0
scoreboard players set #regen_time twvp.temp 0
execute if predicate thewii:apiculture/entity/has_regeneration run scoreboard players set #regen twvp.temp 1

execute if score #regen twvp.temp matches 1 if data entity @s {HasStung:1b} run function thewii:apiculture/entity/bee/regen/main
execute if score @s twia.regen matches 1.. if score #regen_time twvp.temp matches 0 run scoreboard players reset @s twia.regen


# Flower
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #10 twvp.math
#execute if score #interval twvp.temp matches 0 run function thewii:apiculture/entity/bee/flower/start
#execute if entity @s[tag=twia.found_house] if score #interval twvp.temp matches 0 run function thewii:apiculture/entity/bee/check/start


# Targeting entity
execute if predicate thewii:apiculture/entity/targeting_beekeeper run function thewii:apiculture/entity/bee/targeting/beekeeper
#execute if predicate thewii:apiculture/entity/targeting at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 5 normal 