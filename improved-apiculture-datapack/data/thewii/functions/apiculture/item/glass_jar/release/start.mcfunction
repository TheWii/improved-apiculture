# Get entity nbt
data remove storage thewii:vp_library/temp entity
data modify storage thewii:vp_library/temp entity set from storage thewii:vp_library/temp mainhand.tag.apic.contents

# Summon entity
scoreboard players set #found twvp.temp 0
execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/item/glass_jar/release/raycast

# Modify entity data
execute if data storage thewii:vp_library/temp entity{id:"minecraft:bee"} as @e[type=minecraft:bee,limit=1,tag=twia.new_entity] run function thewii:apiculture/general/entity/store_nbt/bee


# Modify hand
execute at @s run function thewii:apiculture/item/glass_jar/modify_hand


# Effects
execute if score #found twvp.temp matches 1.. at @s run playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 1 0.8