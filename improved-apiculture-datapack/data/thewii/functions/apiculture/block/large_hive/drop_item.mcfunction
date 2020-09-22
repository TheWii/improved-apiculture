# Default item nbt
data modify storage thewii:apiculture/temp item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439050,display:{Name:'{"text":"Large Beehive","italic":false}'},EntityTag:{Tags:["twia.place","twia.large_hive"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}

# Read beehouse
function thewii:apiculture/general/entity/dropped_item/read_beehouse


# Storage bees
scoreboard players set #storage_amount twvp.temp 0
execute store result score #storage_amount twvp.temp if data storage thewii:apiculture/temp storageBees[]

execute if data storage thewii:apiculture/temp bees[0] if data storage thewii:apiculture/temp storageBees[0] run data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.storageBees set from storage thewii:apiculture/temp storageBees
execute unless data storage thewii:apiculture/temp bees[0] if data storage thewii:apiculture/temp storageBees[0] run function thewii:apiculture/block/large_hive/leave/start


# Lore(Total bees in hive + storage)
scoreboard players set #hive_amount twvp.temp 0
execute store result score #hive_amount twvp.temp if data storage thewii:apiculture/temp bees[]
scoreboard players operation #hive_amount twvp.temp += #storage_amount twvp.temp

setblock ~ 255 ~ minecraft:oak_sign

data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#hive_amount","objective":"twvp.temp"},"color":"dark_gray","italic":false},{"text":"x ","color":"dark_gray","italic":false},{"text":"Bees","color":"gray","italic":false}]'
execute if score #hive_amount twvp.temp matches 1.. run data modify storage thewii:apiculture/temp item.tag.display.Lore append from block ~ 255 ~ Text1

setblock ~ 255 ~ minecraft:air


# Store honey level
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.honeyLevel set from storage thewii:apiculture/temp honeyLevel

# Store bees
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.bees set from storage thewii:apiculture/temp bees


# Store item data
data modify entity @s Item set from storage thewii:apiculture/temp item

# Remove tag
tag @s remove twia.matched_item