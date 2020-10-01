setblock ~ 255 ~ minecraft:oak_sign

data modify block ~ 255 ~ Text1 set value '[{"text":"Bee(","color":"gray","italic":false},{"nbt":"item.tag.apic.contents.entityData.CustomName","storage":"thewii:vp_library/temp","interpret":true},{"text":")","color":"gray","italic":false,"bold":false,"strikethrough":false,"underlined":false}]'
data modify storage thewii:vp_library/temp item.tag.display.Lore append from block ~ 255 ~ Text1

setblock ~ 255 ~ minecraft:air
