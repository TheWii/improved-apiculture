#> thewii:apiculture/entity/queen_bee/killed

# Effects
execute at @s run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.05 10 normal
execute at @s run playsound minecraft:entity.bee.death neutral @a ~ ~ ~ 1.25 0

# Kill entity parts
execute at @s run tp @e[type=#thewii:apiculture/queen_bee_entities,tag=twia.queen_bee,tag=twia.matched] ~ ~-1000 ~
kill @e[tag=twia.queen_bee,tag=twia.matched]