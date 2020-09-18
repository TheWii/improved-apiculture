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


# Get beehouse score/#honey_level and nbt/bees
execute if score #break twvp.temp matches 0 if data storage thewii:apiculture/temp {mode:['read_beehouse']} run function thewii:apiculture/general/entity/dropped_item/read_beehouse

# Replace dropped item nbt/Item from nbt/item
execute if score #break twvp.temp matches 0 if data storage thewii:apiculture/temp {mode:['replace_item']} run data modify entity @s Item set from storage thewii:apiculture/temp item

# Store beehouse data from score/#honey_level and nbt/bees
execute if score #break twvp.temp matches 0 if data storage thewii:apiculture/temp {mode:['store_beehouse']} run function thewii:apiculture/general/entity/dropped_item/store_beehouse

# Kill
execute if score #break twvp.temp matches 0 if score #kill twvp.temp matches 1 run kill @s