#> thewii:apiculture/entity/bee/regen/main

# Check if bee has regeneration
scoreboard players set #regen twvp.temp 0
scoreboard players set #active twvp.temp 0

execute if predicate thewii:apiculture/entity/has_regeneration run scoreboard players set #regen twvp.temp 1


# Start regeneration process if bee has regen and has stung
execute if score #regen twvp.temp matches 1 if data entity @s {HasStung:1b} run function thewii:apiculture/entity/bee/regen/active

# If regeneration process is cancelled reset score(If bee recovers its stinger with a third method or the regeneration effect is over)
execute if score @s twia.regen matches 1.. if score #active twvp.temp matches 0 run scoreboard players reset @s twia.regen