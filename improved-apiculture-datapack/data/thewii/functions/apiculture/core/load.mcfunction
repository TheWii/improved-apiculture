# Clear schedules
schedule clear thewii:apiculture/core/tick_2
schedule clear thewii:apiculture/core/tick_5
schedule clear thewii:apiculture/core/tick_10
schedule clear thewii:apiculture/core/tick_20
schedule clear thewii:apiculture/core/tick_100


# Check dependencies
scoreboard players set #load thewii.load 1

# Vanilla+ Lib Modules
execute unless score #vplib.math thewii.load matches 010000 run scoreboard players set #load thewii.load -1
execute unless score #vplib.click_detections thewii.load matches 010000 run scoreboard players set #load thewii.load -1
execute unless score #vplib.block_placement thewii.load matches 010000 run scoreboard players set #load thewii.load -1

# 1.16
scoreboard players set #1.16 thewii.load 0
function thewii:apiculture/core/check_116
execute unless score #1.16 thewii.load matches 1 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:apiculture/core/load2

# Fail load messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Improved Apiculture failed to load. It requires Minecraft 1.16 or above.","color":"white","bold":false}]
execute if score #load thewii.load matches -1 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Improved Apiculture failed to load. Library files are either missing or there are incompatibilities between installed datapacks. Please, download the latest version.","color":"white","bold":false}]
