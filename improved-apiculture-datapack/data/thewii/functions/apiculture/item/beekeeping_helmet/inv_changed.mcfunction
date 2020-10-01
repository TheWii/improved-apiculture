#> thewii:apiculture/item/beekeeping_helmet/inv_changed

# Reset targets
advancement revoke @s only thewii:apiculture/player/inventory_changed/has_beekeeping_helmet


# Copy inventory
data remove storage thewii:vp_library/temp inventory
data modify storage thewii:vp_library/temp inventory set from entity @s Inventory


# Check if player wore the helmet
data remove storage thewii:vp_library/temp head
data modify storage thewii:vp_library/temp head set from storage thewii:vp_library/temp inventory[{Slot:103b}]
execute if data storage thewii:vp_library/temp head{id:"minecraft:chainmail_helmet",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_helmet"}}} run tag @s add twia.equip.beekeeping_helmet.coas


# Check if player removed armor
data remove storage thewii:vp_library/temp item
data modify storage thewii:vp_library/temp item set from storage thewii:vp_library/temp inventory[{id:"minecraft:warped_fungus_on_a_stick",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_helmet"}}}]
execute if data storage thewii:vp_library/temp item{Slot:103b} run data remove storage thewii:vp_library/temp item

execute if data storage thewii:vp_library/temp item run tag @s add twia.equip.beekeeping_helmet.armor


# Add tag to check players later on
execute if entity @s[tag=twia.equip.beekeeping_helmet.armor] run tag @s add twia.equip.beekeeping_helmet
execute if entity @s[tag=twia.equip.beekeeping_helmet.coas] run tag @s add twia.equip.beekeeping_helmet
