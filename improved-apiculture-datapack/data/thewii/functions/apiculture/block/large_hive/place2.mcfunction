# Facing direction
function thewii:apiculture/general/entity/facing_pose
scoreboard players operation @s twia.facing = #facing twvp.temp

# Update honey level
function thewii:apiculture/block/large_hive/honey_level

# Copy storage bees
data modify entity @s ArmorItems[3].tag.bees set from storage thewii:apiculture/temp storageBees

# Count bees
function thewii:apiculture/block/large_hive/count_bees

# Max housing
scoreboard players operation @s twia.max_housing = #block.large_beehive.max_housing twia.data

# Remove tag
tag @s remove twia.new_armorstand