# Modify data
data modify entity @s HasStung set value 0b

# Effect
execute at @s run playsound minecraft:entity.zombie.infect neutral @a ~ ~ ~ 1 0
execute at @s run particle minecraft:firework ~ ~0.25 ~ 0.15 0.15 0.15 0.05 3 normal 