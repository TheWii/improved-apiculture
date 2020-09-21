scoreboard players set #model twvp.temp 439001
execute if data storage thewii:apiculture/temp item.tag.apic.contents.entityData.AngryAt run scoreboard players add #model twvp.temp 1
execute if data storage thewii:apiculture/temp item.tag.apic.contents.entityData{HasNectar:1b} run scoreboard players add #model twvp.temp 2
execute if data storage thewii:apiculture/temp item.tag.apic.contents.entityData{HasStung:0b} run scoreboard players add #model twvp.temp 4

execute store result storage thewii:apiculture/temp item.tag.CustomModelData int 1 run scoreboard players get #model twvp.temp