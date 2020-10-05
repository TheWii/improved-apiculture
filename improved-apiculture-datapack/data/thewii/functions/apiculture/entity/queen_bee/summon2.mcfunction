#> thewii:apiculture/entity/queen_bee/summon2

# Generate id
execute store result score @s twvp.id run scoreboard players add #global_id twvp.data 1

scoreboard players operation @e[type=minecraft:bee,tag=twia.queen_bee.new,limit=1] twvp.id = @s twvp.id
scoreboard players operation @e[type=minecraft:slime,tag=twia.queen_bee.new,limit=1] twvp.id = @s twvp.id

# Health
execute as @e[type=#thewii:apiculture/queen_bee_entities,tag=twia.queen_bee.new] store result score @s twia.health run data get entity @s Health
scoreboard players operation @s twia.health = #queen_bee.max_health twia.data

# Weakness effect
effect give @e[type=#thewii:apiculture/queen_bee_entities,tag=twia.queen_bee.new] minecraft:weakness 1000000 255 true

# Remove tag
tag @e[tag=twia.queen_bee.new] remove twia.queen_bee.new