#> thewii:apiculture/entity/bee/tick_10

# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 21.. run scoreboard players set @s twia.interval 1


# Bee was fed by a player
execute store result score #feed twvp.temp run data get entity @s InLove
execute if score #feed twvp.temp matches 1.. run function thewii:apiculture/entity/bee/feed/main


# Find bee house
execute unless entity @s[tag=twia.found_house] run function thewii:apiculture/entity/bee/check/start


# Regenerate stinger
execute if score #bee.regen_stinger twia.data matches 1 run function thewii:apiculture/entity/bee/regen/main


# Flower
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #10 twvp.math
#execute if score #interval twvp.temp matches 0 run function thewii:apiculture/entity/bee/flower/start
#execute if entity @s[tag=twia.found_house] if score #interval twvp.temp matches 0 run function thewii:apiculture/entity/bee/check/start


# Targeting entity
#execute if predicate thewii:apiculture/entity/targeting at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 5 normal 