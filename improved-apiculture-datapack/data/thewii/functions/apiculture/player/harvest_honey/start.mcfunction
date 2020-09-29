# Player used shears in a block(mostly bee nests or beehives)

# Reset triggers
advancement revoke @s only thewii:apiculture/player/harvest_honey

# Raycast
scoreboard players set #found_item twvp.temp 0
#execute anchored eyes positioned ^ ^ ^ run function thewii:apiculture/player/harvest_honey/raycast