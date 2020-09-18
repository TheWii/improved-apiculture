# Nbt
data modify storage thewii:apiculture/temp newBee set value {EntityData:{id:"minecraft:bee",Tags:["twia.twia.found_house"],Age:0},MinOccupationTicks:1,TicksInHive:0}

# Copy HivePos
data modify storage thewii:apiculture/temp newBee.EntityData.HivePos.X set from block ~ ~ ~ x
data modify storage thewii:apiculture/temp newBee.EntityData.HivePos.Y set from block ~ ~ ~ y
data modify storage thewii:apiculture/temp newBee.EntityData.HivePos.Z set from block ~ ~ ~ z

# Append bee
data modify block ~ ~ ~ Bees append from storage thewii:apiculture/temp newBee


# Increase housing space
scoreboard players add @s twia.housing 1

# Consume honey
function thewii:apiculture/block/hive/procriate/consume_honey

# Update honey level model
function thewii:apiculture/block/hive/honey_level


# Particles
particle happy_villager ~ ~ ~ 0.3 0.3 0.3 1 25 normal
execute at @s run playsound minecraft:entity.bee.pollinate neutral @a ~ ~ ~ 1 0.6