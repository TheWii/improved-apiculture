#> thewii:apiculture/player/hurt_bee
# This function is supposed to fix a bug that happened with the Beekeeping Helmet.
# Bees tick loop is slow(every 10 ticks) and when a beekeeper hurts a bee, some
# bees that are near enough could attack the player before the weakness effect is applied.

# Reset trigger
advancement revoke @s only thewii:apiculture/player/hurt_bee

# Check if bees are targeting beekeeper
execute as @e[type=minecraft:bee,tag=!global.ignore,distance=..3] if predicate thewii:apiculture/entity/targeting_beekeeper run effect give @s minecraft:weakness 1 255 true