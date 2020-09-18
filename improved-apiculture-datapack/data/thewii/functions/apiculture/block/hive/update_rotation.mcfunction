# Get rotation
execute at @s run function thewii:apiculture/general/block/facing

# Update pose
execute unless score @s twia.facing = #facing twvp.temp run function thewii:apiculture/general/entity/facing_pose


scoreboard players operation @s twia.facing = #facing twvp.temp