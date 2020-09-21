# Get entity nbt
data modify storage thewii:apiculture/temp entity set from storage thewii:apiculture/temp mainhand.tag.apic.contents

# Summon entity
scoreboard players set #found twvp.temp 0
execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/item/glass_jar/release/raycast

# Modify entity data
execute if data storage thewii:apiculture/temp entity{id:"minecraft:bee"} as @e[type=minecraft:bee,limit=1,tag=twia.new_entity] run function thewii:apiculture/general/entity/store_nbt/bee


# Modify hand
execute at @s run function thewii:apiculture/item/glass_jar/modify_hand


# Effects
execute if score #found twvp.temp matches 1 if score #sneaking twvp.temp matches 0 at @s run playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 1 0.8