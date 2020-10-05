#> thewii:apiculture/entity/queen_bee/parts/tick

# Get health
execute store result score #current_health twvp.temp run data get entity @s Health

# If current health is different from stored health
execute unless score #current_health twvp.temp = @s twia.health run function thewii:apiculture/entity/queen_bee/parts/damaged