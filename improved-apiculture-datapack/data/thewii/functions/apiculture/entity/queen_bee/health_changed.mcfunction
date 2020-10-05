#> thewii:apiculture/entity/queen_bee/health_changed

# If health increased = heal
execute if score #health twvp.temp > @s twia.health run function thewii:apiculture/entity/queen_bee/healed

# If health decreased = take damage
execute if score #health twvp.temp < @s twia.health run function thewii:apiculture/entity/queen_bee/damaged