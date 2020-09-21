# Get info from dropped items by age(usually used to get the item that dropped from a destroyed block)

# INPUT: As dropped item 
         # score/#mode: Item id(to avoid nbt checks)
         # score/#max_age: Maximum matching age
         # score/#kill: If item should be killed
         # nbt/item: Item nbt to replace

# OUTPUT: # nbt/honey_level
          # nbt/bees: All bees inside the destroyed house


# Calculate 
execute store result score #age twvp.temp run data get entity @s Age

scoreboard players set #break twvp.temp 0
execute store success score #break twvp.temp if score #age twvp.temp > #max_age twvp.temp

execute if score #break twvp.temp matches 0 run tag @s add twia.matched_item