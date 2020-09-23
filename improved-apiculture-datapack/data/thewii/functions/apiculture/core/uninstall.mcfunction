# Objectives
scoreboard objectives remove twia.data

scoreboard objectives remove twia.interval
scoreboard objectives remove twia.housing
scoreboard objectives remove twia.facing
scoreboard objectives remove twia.honey
scoreboard objectives remove twia.regen
scoreboard objectives remove twia.max_housing

# Vanilla+ Lib modules
execute if data storage thewii:apiculture/data installed run function thewii:vp_library/math/remove
execute if data storage thewii:apiculture/data installed run function thewii:vp_library/click_detections/remove
execute if data storage thewii:apiculture/data installed run function thewii:vp_library/block_placement/remove

# Clear storages
data remove storage thewii:apiculture/data version
data remove storage thewii:apiculture/data installed

function thewii:apiculture/core/clear_storage

# Clear schedules
schedule clear thewii:apiculture/core/tick_2
schedule clear thewii:apiculture/core/tick_5
schedule clear thewii:apiculture/core/tick_10
schedule clear thewii:apiculture/core/tick_20
schedule clear thewii:apiculture/core/tick_100

# Clear versioning
scoreboard players reset #improved_apiculture thewii.load

# Uninstalled message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Improved Apiculture was uninstalled. Disable the datapack to complete uninstallation.","color":"white","bold":false}]