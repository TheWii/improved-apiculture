# Read beehouse
function thewii:apiculture/general/entity/dropped_item/read_beehouse


# Lore
scoreboard players set #bees twvp.temp 0
execute store result score #bees twvp.temp if data storage thewii:apiculture/temp bees[]

setblock ~ 255 ~ minecraft:oak_sign

data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#bees","objective":"twvp.temp"},"color":"dark_gray","italic":false},{"text":"x ","color":"dark_gray","italic":false},{"text":"Bees","color":"gray","italic":false}]'
data modify storage thewii:apiculture/temp item.tag.display.Lore append from block ~ 255 ~ Text1

setblock ~ 255 ~ minecraft:air


# Store honey level
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.honey_level set from storage thewii:apiculture/temp honey_level

# Store bees
data modify storage thewii:apiculture/temp item.tag.EntityTag.Item.tag.Bees set from storage thewii:apiculture/temp bees


# Store item data
data modify entity @s Item set from storage thewii:apiculture/temp item

# Remove tag
tag @s remove twia.matched_item