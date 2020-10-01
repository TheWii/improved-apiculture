setblock ~ 255 ~ minecraft:oak_sign

data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#amount","objective":"twvp.temp"},"color":"dark_gray","italic":false},{"text":"x ","color":"dark_gray"},{"text":"Nectar","color":"gray"}]'
data modify storage thewii:vp_library/temp item.tag.display.Lore[0] set from block ~ 255 ~ Text1

setblock ~ 255 ~ minecraft:air