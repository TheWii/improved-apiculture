# Set base model
execute if entity @s[tag=twia.hive.oak] run scoreboard players set #model twvp.temp 439000
execute if entity @s[tag=twia.hive.spruce] run scoreboard players set #model twvp.temp 439010
execute if entity @s[tag=twia.hive.birch] run scoreboard players set #model twvp.temp 439020
execute if entity @s[tag=twia.hive.jungle] run scoreboard players set #model twvp.temp 439030
execute if entity @s[tag=twia.hive.acacia] run scoreboard players set #model twvp.temp 439040
execute if entity @s[tag=twia.hive.dark_oak] run scoreboard players set #model twvp.temp 439050

# Add honey level to base model and store into CustomModelData tag
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation #model twvp.temp += #honey_level twvp.temp