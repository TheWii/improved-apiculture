# Leave storage
execute at @s run data modify block ~ ~ ~ Bees append from storage thewii:apiculture/temp storageBees[0]
data remove entity @s ArmorItems[3].tag.bees[0]

scoreboard players remove #storage_amount twia.housing 1
scoreboard players add #hive_amount twia.housing 1

#say Moved out