scoreboard players set #found twvp.temp 1

# Entity id
execute if entity @s[type=minecraft:bee] run data modify storage thewii:apiculture/temp contents.id set value "minecraft:bee"

# Entity Data
data modify storage thewii:apiculture/temp contents.entityData set from entity @s

# Kill entity
data merge entity @s {Health:0.0f,DeathTime:19s,DeathLootTable:"minecraft:air",ActiveEffects:[{Id:14b,Duration:20,Amplifier:0b,ShowParticles:0b}]} 