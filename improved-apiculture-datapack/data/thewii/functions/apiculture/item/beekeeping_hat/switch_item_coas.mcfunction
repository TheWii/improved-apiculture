# Get head
data remove storage thewii:vp_library/temp head
data modify storage thewii:vp_library/temp head set from storage thewii:vp_library/temp inventory[{Slot:103b}]

# Edit data
data modify storage thewii:vp_library/temp head.id set value "minecraft:warped_fungus_on_a_stick"
data modify storage thewii:vp_library/temp head.tag.CustomModelData set value 439030

# Place item back to inv
data remove block 29999999 0 4320 Items
data remove storage thewii:vp_library/temp head.Slot
data modify block 29999999 0 4320 Items append from storage thewii:vp_library/temp head

loot replace entity @s armor.head mine 29999999 0 4320 air{drop_contents:1b}

# Remove tag
tag @s remove twia.equip.beekeeping_hat.coas