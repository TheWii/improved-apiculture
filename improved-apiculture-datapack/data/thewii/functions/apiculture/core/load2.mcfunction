#> thewii:apiculture/core/load2

# Datapack version
scoreboard players set $improved_apiculture thewii.load 000100

# Install
execute unless data storage thewii:apiculture/data installed run function thewii:apiculture/core/install

# Confirm if Vanilla+ Library modules are installed
execute unless data storage thewii:vp_library/data modules.math run function thewii:vp_library/math/add
execute unless data storage thewii:vp_library/data modules.click_detections run function thewii:vp_library/click_detections/add
execute unless data storage thewii:vp_library/data modules.block_placement run function thewii:vp_library/block_placement/add
execute unless data storage thewii:vp_library/data modules.loaded_chunk run function thewii:vp_library/loaded_chunk/add

# Set config
function thewii:apiculture/core/load_config

# Update
execute store result score $version.merged twia.data run data get storage thewii:apiculture/data version.merged
execute if score $improved_apiculture thewii.load > $version.merged twia.data run function thewii:apiculture/core/update

# Schedules
schedule function thewii:apiculture/core/tick/2 1t
schedule function thewii:apiculture/core/tick/5 2t
schedule function thewii:apiculture/core/tick/10 1t
#schedule function thewii:apiculture/core/tick/20 2t
#schedule function thewii:apiculture/core/tick/100 4t



# Declarations
#define objective thewii.load

#define objective twvp.data
#define objective twvp.temp
#define objective twvp.math

#define score_holder #bee.regen_stinger
#define score_holder #bee.sting_regen_time

#define score_holder #item.glass_jar.max_nectar
#define score_holder #item.glass_jar.nectar_per_bee
#define score_holder #item.glass_jar.min_nectar_growth
#define score_holder #item.glass_jar.max_nectar_growth

#define score_holder #block.large_beehive.max_housing

#define score_holder #block.candle.disable_smoke

#define score_holder $improved_apiculture

#define score_holder #x
#define score_holder #y
#define score_holder #z

#define score_holder #sneaking
#define score_holder #found

#define score_holder #interval

#define score_holder #bee_amount
#define score_holder #hive_amount
#define score_holder #storage_amount
#define score_holder #marked_hive
#define score_holder #honey_level
#define score_holder #leave_hives

#define storage thewii:apiculture/data

#define storage thewii:vp_library/data
#define storage thewii:vp_library/temp

#define tag twia.checked
#define tag twia.find_coord

#define tag twia.house

#define tag twia.nest

#define tag twia.hive

#define tag twia.hive.oak
#define tag twia.hive.spruce
#define tag twia.hive.birch
#define tag twia.hive.jungle
#define tag twia.hive.acacia
#define tag twia.hive.dark_oak