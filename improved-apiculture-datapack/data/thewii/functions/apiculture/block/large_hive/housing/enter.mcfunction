# Move to storage
data modify entity @s ArmorItems[3].tag.bees append from storage thewii:vp_library/temp hiveBees[-1]
execute at @s run data remove block ~ ~ ~ Bees[-1]

data modify storage thewii:vp_library/temp storageBees append from storage thewii:vp_library/temp hiveBees[-1]
data remove storage thewii:vp_library/temp hiveBees[-1]

scoreboard players remove #hive_amount twvp.temp 1
scoreboard players add #storage_amount twvp.temp 1

#say Moved in