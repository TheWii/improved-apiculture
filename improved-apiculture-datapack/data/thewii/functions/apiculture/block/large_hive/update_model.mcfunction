# Set base model
scoreboard players set #model twvp.temp 439060

# Add honey level to base model and store into CustomModelData tag
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation #model twvp.temp += #honey_level twvp.temp