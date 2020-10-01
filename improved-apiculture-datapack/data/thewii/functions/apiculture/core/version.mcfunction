#> thewii:apiculture/core/version

# Reset scores
scoreboard players set $version.merged twia.data 0
scoreboard players set $version.major twia.data 0
scoreboard players set $version.minor twia.data 0
scoreboard players set $version.patch twia.data 0


# Merged 010203
scoreboard players operation $version.merged twia.data = $improved_apiculture thewii.load

# Major 01XXXX
scoreboard players operation $version.major twia.data = $improved_apiculture thewii.load
scoreboard players operation $version.major twia.data /= #10000 twvp.math

# Minor XX02XX
scoreboard players operation $version.minor twia.data = $improved_apiculture thewii.load
scoreboard players operation $version.minor twia.data /= #100 twvp.math
scoreboard players operation $version.minor twia.data %= #100 twvp.math

# Patch XXXX03
scoreboard players operation $version.patch twia.data = $improved_apiculture thewii.load
scoreboard players operation $version.patch twia.data %= #100 twvp.math


# Store integers to storage
execute store result storage thewii:apiculture/data version.merged int 1 run scoreboard players get $version.merged twia.data
execute store result storage thewii:apiculture/data version.major int 1 run scoreboard players get $version.major twia.data
execute store result storage thewii:apiculture/data version.minor int 1 run scoreboard players get $version.minor twia.data
execute store result storage thewii:apiculture/data version.patch int 1 run scoreboard players get $version.patch twia.data
