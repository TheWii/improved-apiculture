#> thewii:apiculture/item/beekeeping_helmet/switch_item_armor

# Get item
data remove storage thewii:vp_library/temp item
data modify storage thewii:vp_library/temp item set from storage thewii:vp_library/temp inventory[{id:"minecraft:warped_fungus_on_a_stick",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_helmet"}}}]

# Edit data
data modify storage thewii:vp_library/temp item.id set value "chainmail_helmet"
data modify storage thewii:vp_library/temp item.tag.CustomModelData set value 439030

# Get slot
scoreboard players set #slot twvp.temmp 0
execute store result score #slot twvp.temp run data get storage thewii:vp_library/temp item.Slot
data remove storage thewii:vp_library/temp item.Slot

# Place item back to inv
data remove block 29999999 0 4320 Items
data modify block 29999999 0 4320 Items append from storage thewii:vp_library/temp item

execute if score #slot twvp.temp matches 0 run loot replace entity @s hotbar.0 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 1 run loot replace entity @s hotbar.1 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 2 run loot replace entity @s hotbar.2 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 3 run loot replace entity @s hotbar.3 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 4 run loot replace entity @s hotbar.4 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 5 run loot replace entity @s hotbar.5 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 6 run loot replace entity @s hotbar.6 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 7 run loot replace entity @s hotbar.7 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 8 run loot replace entity @s hotbar.8 1 mine 29999999 0 4320 air{drop_contents:1b}

execute if score #slot twvp.temp matches 9 run loot replace entity @s inventory.0 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 10 run loot replace entity @s inventory.1 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 11 run loot replace entity @s inventory.2 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 12 run loot replace entity @s inventory.3 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 13 run loot replace entity @s inventory.4 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 14 run loot replace entity @s inventory.5 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 15 run loot replace entity @s inventory.6 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 16 run loot replace entity @s inventory.7 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 17 run loot replace entity @s inventory.8 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 18 run loot replace entity @s inventory.9 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 19 run loot replace entity @s inventory.10 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 20 run loot replace entity @s inventory.11 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 21 run loot replace entity @s inventory.12 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 22 run loot replace entity @s inventory.13 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 23 run loot replace entity @s inventory.14 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 24 run loot replace entity @s inventory.15 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 25 run loot replace entity @s inventory.16 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 26 run loot replace entity @s inventory.17 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 27 run loot replace entity @s inventory.18 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 28 run loot replace entity @s inventory.19 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 29 run loot replace entity @s inventory.20 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 30 run loot replace entity @s inventory.21 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 31 run loot replace entity @s inventory.22 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 32 run loot replace entity @s inventory.23 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 33 run loot replace entity @s inventory.24 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 34 run loot replace entity @s inventory.25 1 mine 29999999 0 4320 air{drop_contents:1b}
execute if score #slot twvp.temp matches 35 run loot replace entity @s inventory.26 1 mine 29999999 0 4320 air{drop_contents:1b}

execute if score #slot twvp.temp matches 100 run loot replace entity @s armor.feet 1 mine ~ 255 ~ air{drop_contents:1b}
execute if score #slot twvp.temp matches 101 run loot replace entity @s armor.legs 1 mine ~ 255 ~ air{drop_contents:1b}
execute if score #slot twvp.temp matches 102 run loot replace entity @s armor.chest 1 mine ~ 255 ~ air{drop_contents:1b}
execute if score #slot twvp.temp matches 103 run loot replace entity @s armor.head 1 mine ~ 255 ~ air{drop_contents:1b}

# Remove tag
tag @s remove twia.equip.beekeeping_helmet.armor