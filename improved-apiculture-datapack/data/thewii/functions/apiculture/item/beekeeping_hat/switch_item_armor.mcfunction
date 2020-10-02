#> thewii:apiculture/item/beekeeping_hat/switch_item_armor

# Get item
data remove storage thewii:vp_library/temp item
data modify storage thewii:vp_library/temp item set from storage thewii:vp_library/temp inventory[{id:"minecraft:warped_fungus_on_a_stick",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_hat"}}}]


# Edit data
data modify storage thewii:vp_library/temp item.id set value "minecraft:chainmail_helmet"
data modify storage thewii:vp_library/temp item.tag.CustomModelData set value 439000


# Get slot
scoreboard players set #slot twvp.temmp 0
execute store result score #slot twvp.temp run data get storage thewii:vp_library/temp item.Slot

data remove storage thewii:vp_library/temp item.Slot


# Place item back to inv
data remove block 29999999 0 4320 Items
data modify block 29999999 0 4320 Items append from storage thewii:vp_library/temp item

function thewii:apiculture/general/player/replace_in_inventory

# Remove tag
tag @s remove twia.equip.beekeeping_hat.armor