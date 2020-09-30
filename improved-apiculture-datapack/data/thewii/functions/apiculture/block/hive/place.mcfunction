# Clear storage
data remove storage thewii:apiculture/temp bees
data remove storage thewii:apiculture/temp honeyLevel

# Invert direction
scoreboard players operation #input twvp.temp = #direction twvp.temp
function thewii:apiculture/general/block/invert_direction
scoreboard players operation #facing twvp.temp = #output twvp.temp


# Set block
data modify storage thewii:apiculture/temp bees set from entity @s Item.tag.bees

scoreboard players set #honey_level twvp.temp 0
data modify storage thewii:apiculture/temp honeyLevel set from entity @s Item.tag.honeyLevel

execute if data storage thewii:apiculture/temp {honeyLevel:'1'} run scoreboard players set #honey_level twvp.temp 1
execute if data storage thewii:apiculture/temp {honeyLevel:'2'} run scoreboard players set #honey_level twvp.temp 2
execute if data storage thewii:apiculture/temp {honeyLevel:'3'} run scoreboard players set #honey_level twvp.temp 3
execute if data storage thewii:apiculture/temp {honeyLevel:'4'} run scoreboard players set #honey_level twvp.temp 4
execute if data storage thewii:apiculture/temp {honeyLevel:'5'} run scoreboard players set #honey_level twvp.temp 5

function thewii:apiculture/general/block/set_beehive


# Summon armor stand
execute if entity @s[tag=twia.hive.oak] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.oak"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439000}}]}
execute if entity @s[tag=twia.hive.spruce] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.spruce"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439010}}]}
execute if entity @s[tag=twia.hive.birch] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.birch"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439020}}]}
execute if entity @s[tag=twia.hive.jungle] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.jungle"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439030}}]}
execute if entity @s[tag=twia.hive.acacia] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.acacia"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439040}}]}
execute if entity @s[tag=twia.hive.dark_oak] run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.dark_oak"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439050}}]}

execute as @e[type=minecraft:armor_stand,tag=twia.new_armorstand,limit=1] run function thewii:apiculture/block/hive/place2


# Effects
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8


# Kill item frame
kill @s