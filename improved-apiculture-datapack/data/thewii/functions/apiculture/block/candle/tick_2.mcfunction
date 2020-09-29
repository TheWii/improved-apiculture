# Destroyed
execute at @s unless block ~ ~ ~ minecraft:lantern run function thewii:apiculture/block/candle/destroyed

# Particle
execute if predicate thewii:vp_library/chance/25 at @s run particle minecraft:smoke ~ ~0.25 ~ 0.025 0.025 0.025 0.0125 1 normal 