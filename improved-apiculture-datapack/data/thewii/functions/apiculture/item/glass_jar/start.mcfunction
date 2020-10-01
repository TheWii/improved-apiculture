scoreboard players set #contents twvp.temp 0
execute store result score #contents twvp.temp run data get storage thewii:vp_library/temp mainhand.tag.apic.hasContents

scoreboard players set #sneaking twvp.temp 0
execute if predicate thewii:vp_library/player/is_sneaking run scoreboard players set #sneaking twvp.temp 1

scoreboard players set #fill_nectar twvp.temp 0
execute if score #contents twvp.temp matches 0 run function thewii:apiculture/item/glass_jar/catch/start
execute if score #contents twvp.temp matches 1 if score #sneaking twvp.temp matches 0 at @s run function thewii:apiculture/item/glass_jar/release/start
execute if score #contents twvp.temp matches 2 at @s run function thewii:apiculture/item/glass_jar/nectar/start


# Jar

# If jar empty:
### If not sneaking: Put entity inside jar
### If sneaking:
#### Found entity: Get pollen if bee has pollen
#### Found block: Place block

# If jar has pollen:
## If not sneaking: Find crop
## If sneaking: Place block

# If jar has entity:
## If not sneaking: Take entity out
## If sneaking: Place block