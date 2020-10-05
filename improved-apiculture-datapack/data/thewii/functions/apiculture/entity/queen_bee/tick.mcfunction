#> thewii:apiculture/entity/queen_bee/tick

# Tag self
tag @s add twia.self

# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 100.. run scoreboard players set @s twia.interval 0


# Match entities
scoreboard players operation #id twvp.temp = @s twvp.id
execute at @s as @e[type=#thewii:apiculture/queen_bee_entities,tag=twia.queen_bee,distance=..2] if score @s twvp.id = #id twvp.temp run tag @s add twia.matched


# Rotated armor stand as bee
execute rotated as @e[type=minecraft:bee,tag=twia.matched,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

# If angry
execute store success score #angry twvp.temp if entity @e[type=minecraft:bee,tag=twia.matched,predicate=thewii:apiculture/entity/targeting,limit=1]
execute if score #angry twvp.temp matches 1 at @s run particle dust 0.988 0.384 0.204 1.5 ~ ~ ~ 0.25 0.25 0.25 0 1 normal

# Check if damaged
scoreboard players operation #health twvp.temp = @s twia.health

execute as @e[type=#thewii:apiculture/queen_bee_entities,tag=twia.matched,tag=!twia.self,limit=2] run function thewii:apiculture/entity/queen_bee/parts/tick

execute unless score #health twvp.temp = @s twia.health at @s run function thewii:apiculture/entity/queen_bee/health_changed


# Check if entity parts are still alive
execute at @s unless entity @e[type=minecraft:bee,tag=twia.matched,distance=..1] run function thewii:apiculture/entity/queen_bee/killed
execute at @s unless entity @e[type=minecraft:slime,tag=twia.matched,distance=..1] run function thewii:apiculture/entity/queen_bee/killed


# Remove tags
execute at @s run tag @e[tag=twia.queen_bee,tag=twia.matched,distance=..2] remove twia.matched
tag @s remove twia.self