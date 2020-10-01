#> thewii:apiculture/player/equip_armorstand/beekeeping_hat

# Reset triggers
advancement revoke @s only thewii:apiculture/player/equip_armorstand/beekeeping_hat

# As nearby armor stands with a beekeeping helmet in their head
execute as @e[type=minecraft:armor_stand,tag=!global.ignore,distance=..6,nbt={ArmorItems:[{},{},{},{id:"minecraft:chainmail_helmet",tag:{ctc:{from:"thewii:apiculture",id:"beekeeping_hat"}}}]}] run function thewii:apiculture/player/equip_armorstand/beekeeping_hat2