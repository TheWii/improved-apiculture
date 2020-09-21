scoreboard players set #found twvp.temp 1

# Entity id
execute if entity @s[type=minecraft:bee] run data modify storage thewii:apiculture/temp contents.id set value "minecraft:bee"

# Entity Data
data modify storage thewii:apiculture/temp contents.entityData set from entity @s

# Kill entity
tp @s ~ ~-1000 ~
kill @s