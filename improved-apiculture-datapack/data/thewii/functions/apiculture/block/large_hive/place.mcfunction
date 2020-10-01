# Clear storage
data remove storage thewii:vp_library/temp bees
data remove storage thewii:vp_library/temp honeyLevel
data remove storage thewii:vp_library/temp storageBees

# Invert direction
scoreboard players operation #input twvp.temp = #direction twvp.temp
function thewii:apiculture/general/block/invert_direction
scoreboard players operation #facing twvp.temp = #output twvp.temp


# Set block
data modify storage thewii:vp_library/temp bees set from entity @s Item.tag.bees

scoreboard players set #honey_level twvp.temp 0
data modify storage thewii:vp_library/temp honeyLevel set from entity @s Item.tag.honeyLevel

execute if data storage thewii:vp_library/temp {honeyLevel:'1'} run scoreboard players set #honey_level twvp.temp 1
execute if data storage thewii:vp_library/temp {honeyLevel:'2'} run scoreboard players set #honey_level twvp.temp 2
execute if data storage thewii:vp_library/temp {honeyLevel:'3'} run scoreboard players set #honey_level twvp.temp 3
execute if data storage thewii:vp_library/temp {honeyLevel:'4'} run scoreboard players set #honey_level twvp.temp 4
execute if data storage thewii:vp_library/temp {honeyLevel:'5'} run scoreboard players set #honey_level twvp.temp 5

function thewii:apiculture/general/block/set_beehive


# Summon armor stand
summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.new_armorstand","twia.tick_2","twia.house","twia.large_hive"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439060,bees:[]}}]}

#tellraw @a {"score":{"name":"#facing","objective":"twvp.temp"}}
data modify storage thewii:vp_library/temp storageBees set from entity @s Item.tag.storageBees

execute as @e[type=minecraft:armor_stand,tag=twia.new_armorstand,limit=1] run function thewii:apiculture/block/large_hive/place2


# Effects
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8


# Kill item frame
kill @s