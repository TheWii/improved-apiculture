#> thewii:apiculture/entity/queen_bee/parts/damaged

# Calculate damage taken
scoreboard players operation #damaged twvp.temp = @s twia.health
scoreboard players operation #damaged twvp.temp -= #current_health twvp.temp

# Discount from mob health
scoreboard players operation #health twvp.temp -= #damaged twvp.temp

# Reset health
scoreboard players set @s twia.health 1000
data modify entity @s Health set value 1000.0f