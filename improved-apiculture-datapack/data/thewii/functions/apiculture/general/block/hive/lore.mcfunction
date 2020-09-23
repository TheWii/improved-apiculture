# Lore
setblock ~ 255 ~ minecraft:oak_sign

data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#lore_bees","objective":"twvp.temp"},"color":"dark_gray","italic":false},{"text":"x ","color":"dark_gray","italic":false},{"text":"Bees","color":"gray","italic":false}]'

data remove storage thewii:apiculture/temp lore
data modify storage thewii:apiculture/temp lore set from block ~ 255 ~ Text1

setblock ~ 255 ~ minecraft:air