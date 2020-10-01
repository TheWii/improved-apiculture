scoreboard players set #amount twvp.temp 0
execute store result score #amount twvp.temp run data get storage thewii:vp_library/temp item.tag.apic.contents.nectarAmount

execute store result storage thewii:vp_library/temp item.tag.apic.contents.nectarAmount byte 1 run scoreboard players add #amount twvp.temp 2
data modify storage thewii:vp_library/temp item.tag.apic.contents.id set value "apiculture:nectar"