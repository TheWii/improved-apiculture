# Lore
data remove storage thewii:vp_library/temp lore
execute in minecraft:overworld run data remove block 29999999 0 4321 Text1

# Honey
execute in minecraft:overworld run data modify block 29999999 0 4321 Text1 set value '[{"text":"Honey: ","color":"gray","italic":false}, {"nbt":"honeyLevel","storage":"thewii:vp_library/temp","color":"dark_gray","italic":false}]'
execute unless data storage thewii:vp_library/temp {honeyLevel:'0'} in minecraft:overworld run data modify storage thewii:vp_library/temp lore append from block 29999999 0 4321 Text1

# Bees
execute in minecraft:overworld run data modify block 29999999 0 4321 Text1 set value '[{"text":"Bees: ","color":"gray","italic":false},{"score":{"name":"#lore_bees","objective":"twvp.temp"},"color":"dark_gray","italic":false}]'
execute if score #lore_bees twvp.temp matches 1.. in minecraft:overworld run data modify storage thewii:vp_library/temp lore append from block 29999999 0 4321 Text1