# Copy mainhand to temp storage
data modify storage thewii:vp_library/temp item set from storage thewii:vp_library/temp mainhand


# Check operations

# Jar is empty / Found entity / Not sneaking = Catch entity
execute if score #contents twvp.temp matches 0 if score #found twvp.temp matches 1 if score #sneaking twvp.temp matches 0 run data modify storage thewii:vp_library/temp item.tag.apic.contents set from storage thewii:vp_library/temp contents

# Sneaking / Had nectar = Fill with nectar
execute if score #fill_nectar twvp.temp matches 1 run function thewii:apiculture/item/glass_jar/nectar/fill_nectar

# Found crop = Grow crop
execute if score #found twvp.temp matches 2 run function thewii:apiculture/item/glass_jar/nectar/consume_nectar

# Jar has entity / Not sneaking = Release entity
execute if score #contents twvp.temp matches 1 if score #sneaking twvp.temp matches 0 run data remove storage thewii:vp_library/temp item.tag.apic.contents


# Switch hasContents
execute unless data storage thewii:vp_library/temp item.tag.apic.contents run data modify storage thewii:vp_library/temp item.tag.apic.hasContents set value 0b
execute if data storage thewii:vp_library/temp item.tag.apic.contents run data modify storage thewii:vp_library/temp item.tag.apic.hasContents set value 1b
execute if data storage thewii:vp_library/temp item.tag.apic.contents{id:"apiculture:nectar"} run data modify storage thewii:vp_library/temp item.tag.apic.hasContents set value 2b


# Model
execute unless data storage thewii:vp_library/temp item.tag.apic.contents run data modify storage thewii:vp_library/temp item.tag.CustomModelData set value 439000
execute if data storage thewii:vp_library/temp item.tag.apic.contents{id:"minecraft:bee"} run function thewii:apiculture/item/glass_jar/catch/bee_model
execute if data storage thewii:vp_library/temp item.tag.apic.contents{id:"apiculture:nectar"} run function thewii:apiculture/item/glass_jar/nectar/nectar_model


# Lore
execute unless data storage thewii:vp_library/temp item.tag.apic.contents run data modify storage thewii:vp_library/temp item.tag.display.Lore set value ['{"text":"Empty","color":"gray","italic":false}']
execute if data storage thewii:vp_library/temp item.tag.apic.contents{id:"minecraft:bee"} run function thewii:apiculture/item/glass_jar/catch/lore
execute if data storage thewii:vp_library/temp item.tag.apic.contents{id:"apiculture:nectar"} run function thewii:apiculture/item/glass_jar/nectar/lore


# Replace mainhand
data remove block 29999999 0 4320 Items
data modify block 29999999 0 4320 Items append from storage thewii:vp_library/temp item
loot replace entity @s weapon.mainhand 1 mine 29999999 0 4320 minecraft:air{drop_contents:1b}