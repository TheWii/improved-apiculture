#> thewii:apiculture/entity/queen_bee/damaged

# Effects
playsound minecraft:entity.bee.hurt neutral @a ~ ~ ~ 1.25 0
particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0 5 normal

# Update health
scoreboard players operation @s twia.health = #health twvp.temp

# Check if killed
execute if score @s twia.health matches ..0 run function thewii:apiculture/entity/queen_bee/killed