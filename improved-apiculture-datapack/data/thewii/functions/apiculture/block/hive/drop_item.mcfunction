# Run dropped item function
scoreboard players set #max_age twvp.temp 1
execute if entity @s[tag=twia.hive.oak] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Oak Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
execute if entity @s[tag=twia.hive.spruce] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439010,display:{Name:'{"text":"Spruce Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.spruce"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
execute if entity @s[tag=twia.hive.birch] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439020,display:{Name:'{"text":"Birch Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.birch"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
execute if entity @s[tag=twia.hive.jungle] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439030,display:{Name:'{"text":"Jungle Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.jungle"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
execute if entity @s[tag=twia.hive.acacia] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439040,display:{Name:'{"text":"Acacia Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.acacia"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
execute if entity @s[tag=twia.hive.dark_oak] run data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439050,display:{Name:'{"text":"Dark Oak Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.hive","twia.hive.dark_oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}

execute as @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:beehive",Count:1b}}] run function thewii:apiculture/general/entity/dropped_item/find_item
execute as @e[type=minecraft:item,tag=twia.matched_item,limit=1] run function thewii:apiculture/block/hive/drop_item2