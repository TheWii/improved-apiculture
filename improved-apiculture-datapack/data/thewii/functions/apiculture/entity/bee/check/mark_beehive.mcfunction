# Get block facing direction
function thewii:apiculture/general/block/facing
say mark beehive

# Summon armor stand
summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Small:1b,Invisible:1,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","twia.new_armorstand","twia.tick_2","twia.house","twia.hive","twia.hive.oak"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439000}}]}

execute as @e[type=minecraft:armor_stand,tag=twia.new_armorstand,limit=1] run function thewii:apiculture/block/hive/place2
