# Block placement validation
scoreboard players set #valid twvp.temp 1


# The block must be valid
execute unless block ~ ~ ~ #thewii:apiculture/valid_to_place run scoreboard players set #valid twvp.temp 0

# No significant entities near
execute align xyz if entity @e[type=!#thewii:apiculture/ignore_to_place,dx=0] run scoreboard players set #valid twvp.temp 0


# Continue if both are true
execute if score #valid twvp.temp matches 1 run function thewii:apiculture/block/place

# Drop if any is false
execute if score #valid twvp.temp matches 0 align xyz run function thewii:apiculture/player/placed/drop