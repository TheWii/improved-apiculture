#define objective thewii.load

#define objective twvp.data
#define objective twvp.temp
#define objective twvp.math

#define score_holder #improved_apiculture

#define score_holder #x
#define score_holder #y
#define score_holder #z

#define score_holder #interval

#define score_holder #bee_amount
#define score_holder #marked_hive
#define score_holder #honey_level
#define score_holder #leave_hives

#define storage thewii:apiculture/data
#define storage thewii:apiculture/temp

#define tag twia.checked
#define tag twia.find_coord
#define tag twia.hive


# Install
scoreboard objectives add twia.data dummy
scoreboard objectives add twvp.temp dummy
scoreboard objectives add twvp.math dummy

scoreboard objectives add twia.interval dummy
scoreboard objectives add twia.housing dummy

scoreboard players set #-1 twvp.math -1
scoreboard players set #5 twvp.math 5
scoreboard players set #10 twvp.math 10
scoreboard players set #20 twvp.math 20


# Schedules
schedule function thewii:apiculture/core/tick_2 1t
schedule function thewii:apiculture/core/tick_5 2t
schedule function thewii:apiculture/core/tick_10 1t
schedule function thewii:apiculture/core/tick_20 2t
schedule function thewii:apiculture/core/tick_100 4t

tellraw @a [{"text":"Apiculture loaded."}]


# Load
scoreboard players set #improved_apiculture thewii.load 000001