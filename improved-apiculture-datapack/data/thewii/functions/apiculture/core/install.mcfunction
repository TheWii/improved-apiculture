#> thewii:apiculture/core/install

# Objectives
scoreboard objectives add twia.data dummy

scoreboard objectives add twia.interval dummy
scoreboard objectives add twia.housing dummy
scoreboard objectives add twia.facing dummy
scoreboard objectives add twia.honey dummy
scoreboard objectives add twia.regen dummy
scoreboard objectives add twia.max_housing dummy

# Vanilla+ Lib modules
execute unless data storage thewii:apiculture/data installed run function thewii:vp_library/math/add
execute unless data storage thewii:apiculture/data installed run function thewii:vp_library/click_detections/add
execute unless data storage thewii:apiculture/data installed run function thewii:vp_library/block_placement/add
execute unless data storage thewii:apiculture/data installed run function thewii:vp_library/loaded_chunk/add

# Installed
data modify storage thewii:apiculture/data installed set value 1b

# Versioning
function thewii:apiculture/core/version

# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Improved Apiculture v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twia.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twia.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twia.data"},"color":"white","bold":false},{"text":" was installed!","color":"white","bold":false}]