# Impossible to breed
execute store result score #in_love twvp.temp run data get entity @s InLove
execute if score #in_love twvp.temp matches 1.. run function thewii:apiculture/entity/bee/fed

# Find bee house
execute unless entity @s[tag=twia.found_house] run function thewii:apiculture/entity/bee/check/start