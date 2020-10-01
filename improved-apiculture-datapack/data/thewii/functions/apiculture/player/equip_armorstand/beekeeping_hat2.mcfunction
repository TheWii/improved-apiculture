#> thewii:apiculture/player/equip_armorstand/beekeeping_hat2

# Get head
data remove storage thewii:vp_library/temp head
data modify storage thewii:vp_library/temp head set from entity @s ArmorItems[3]

# Edit data
data modify storage thewii:vp_library/temp head.id set value "minecraft:warped_fungus_on_a_stick"
data modify storage thewii:vp_library/temp head.tag.CustomModelData set value 439030
data modify storage thewii:vp_library/temp head.tag.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;195155489,-1610529010,-1096228359,-239126416],Slot:"head"}]

# Place item in the head
data modify entity @s ArmorItems[3] set from storage thewii:vp_library/temp head