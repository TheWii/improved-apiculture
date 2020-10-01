# Get inventory
data remove storage thewii:vp_library/temp inventory
data modify storage thewii:vp_library/temp inventory set from entity @s Inventory

# Equip
execute if entity @s[tag=twia.equip.beekeeping_helmet.coas] run function thewii:apiculture/item/beekeeping_helmet/switch_item_coas

# Unequip
execute if entity @s[tag=twia.equip.beekeeping_helmet.armor] run function thewii:apiculture/item/beekeeping_helmet/switch_item_armor

# Remove tag
tag @s remove twia.equip.beekeeping_helmet