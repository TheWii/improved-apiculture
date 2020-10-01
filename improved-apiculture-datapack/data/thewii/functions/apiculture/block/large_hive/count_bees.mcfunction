data remove storage thewii:vp_library/temp hiveBees
data remove storage thewii:vp_library/temp storageBees

# Get hive
execute at @s run data modify storage thewii:vp_library/temp hiveBees set from block ~ ~ ~ Bees

# Get storage
data modify storage thewii:vp_library/temp storageBees set from entity @s ArmorItems[3].tag.bees


# Count in-hive amount
scoreboard players set #hive_amount twvp.temp 0
execute store result score #hive_amount twvp.temp if data storage thewii:vp_library/temp hiveBees[]

# Count in-storage amount
scoreboard players set #storage_amount twvp.temp 0
execute store result score #storage_amount twvp.temp if data storage thewii:vp_library/temp storageBees[]

# Get max in-storage
scoreboard players operation #max twvp.temp = @s twia.max_housing
scoreboard players remove #max twvp.temp 3


# Move third bee to storage
execute if score #hive_amount twvp.temp matches 3 if score #storage_amount twvp.temp < #max twvp.temp run function thewii:apiculture/block/large_hive/housing/enter

# Move out if there is less than two bees in hive and there is at least one bee in storage
execute if score #hive_amount twvp.temp matches ..1 if score #storage_amount twvp.temp matches 1.. run function thewii:apiculture/block/large_hive/housing/leave


#tellraw @a ["Hive: ",{"score":{"name":"#hive_amount","objective":"twvp.temp"}}," Storage: ",{"score":{"name":"#storage_amount","objective":"twvp.temp"}}]

# Housing space
scoreboard players operation #hive_amount twvp.temp += #storage_amount twvp.temp
execute if score #leave_hives twvp.temp matches 0 run scoreboard players operation @s twia.housing = #hive_amount twvp.temp