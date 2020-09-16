# Get direction
function thewii:apiculture/general/block/facing

# Consume
scoreboard players remove #honey_level twvp.temp 1

# Store bees
data modify storage thewii:apiculture/temp bees set from block ~ ~ ~ Bees


# Setblock bee nest/hive
execute if block ~ ~ ~ minecraft:bee_nest run function thewii:apiculture/general/block/set_beenest
execute if block ~ ~ ~ minecraft:beehive run function thewii:apiculture/general/block/set_beehive