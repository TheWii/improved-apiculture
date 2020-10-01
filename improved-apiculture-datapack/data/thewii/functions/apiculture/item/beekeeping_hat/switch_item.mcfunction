# Get inventory
data remove storage thewii:vp_library/temp inventory
data modify storage thewii:vp_library/temp inventory set from entity @s Inventory

# Equip
execute if entity @s[tag=twia.equip.beekeeping_hat.coas] run function thewii:apiculture/item/beekeeping_hat/switch_item_coas

# Unequip
execute if entity @s[tag=twia.equip.beekeeping_hat.armor] run function thewii:apiculture/item/beekeeping_hat/switch_item_armor

# Remove tag
tag @s remove twia.equip.beekeeping_hat