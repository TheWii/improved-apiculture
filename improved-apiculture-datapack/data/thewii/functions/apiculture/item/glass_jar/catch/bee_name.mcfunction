data remove block 29999999 0 4321 Text1

data modify block 29999999 0 4321 Text1 set value '[{"text":"Bee(","color":"gray","italic":false},{"nbt":"item.tag.apic.contents.entityData.CustomName","storage":"thewii:vp_library/temp","interpret":true},{"text":")","color":"gray","italic":false,"bold":false,"strikethrough":false,"underlined":false}]'
data modify storage thewii:vp_library/temp item.tag.display.Lore append from block 29999999 0 4321 Text1
