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


# Vanilla+ Lib math scores
scoreboard players set #-1 twvp.math -1
scoreboard players set #5 twvp.math 5
scoreboard players set #10 twvp.math 10
scoreboard players set #20 twvp.math 20

team add twia.nocollision "twia.nocollision"
team modify twia.nocollision collisionRule never


# Version
data merge storage thewii:apiculture/data {version:"0.0.1",installed:1b}

# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Improved Apiculture was installed!","color":"white","bold":false}]