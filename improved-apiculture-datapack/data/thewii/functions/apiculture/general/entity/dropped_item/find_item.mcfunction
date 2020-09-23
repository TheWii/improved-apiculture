#> thewii:apiculture/general/entity/dropped_item/find_item

# Tag item if its age is less or equal to #age


# Calculate 
execute store result score #age twvp.temp run data get entity @s Age

execute if score #age twvp.temp <= #max_age twvp.temp run tag @s add twia.matched_item