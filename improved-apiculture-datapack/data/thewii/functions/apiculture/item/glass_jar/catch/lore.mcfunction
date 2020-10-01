data remove storage thewii:vp_library/temp item.tag.display.Lore

execute unless data storage thewii:vp_library/temp item.tag.apic.contents.entityData.CustomName run data modify storage thewii:vp_library/temp item.tag.display.Lore append value '{"text":"Bee","color":"gray","italic":false}'
execute if data storage thewii:vp_library/temp item.tag.apic.contents.entityData.CustomName run function thewii:apiculture/item/glass_jar/catch/bee_name

execute if data storage thewii:vp_library/temp item.tag.apic.contents.entityData.AngryAt run data modify storage thewii:vp_library/temp item.tag.display.Lore append value '{"text":"Angry","color":"red","italic":false}'
execute if data storage thewii:vp_library/temp item.tag.apic.contents.entityData{HasNectar:1b} run data modify storage thewii:vp_library/temp item.tag.display.Lore append value '{"text":"Has Nectar","color":"white","italic":false}'
execute if data storage thewii:vp_library/temp item.tag.apic.contents.entityData{HasStung:1b} run data modify storage thewii:vp_library/temp item.tag.display.Lore append value '{"text":"Has Stung","color":"dark_gray","italic":false}'
