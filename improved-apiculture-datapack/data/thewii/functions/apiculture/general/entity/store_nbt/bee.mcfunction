# Modify self nbt from storage entity
function thewii:apiculture/general/entity/store_nbt/generic

data modify entity @s LoveCause set from storage thewii:apiculture/temp entity.entityData.LoveCause

data modify entity @s HivePos set from storage thewii:apiculture/temp entity.entityData.HivePos
data modify entity @s HasNectar set from storage thewii:apiculture/temp entity.entityData.HasNectar
data modify entity @s HasStung set from storage thewii:apiculture/temp entity.entityData.HasStung

data modify entity @s TicksSincePollination set from storage thewii:apiculture/temp entity.entityData.TicksSincePollination
data modify entity @s CannotEnterHiveTicks set from storage thewii:apiculture/temp entity.entityData.CannotEnterHiveTicks
data modify entity @s CropsGrownSincePollination set from storage thewii:apiculture/temp entity.entityData.CropsGrownSincePollination

data modify entity @s AngerTime set from storage thewii:apiculture/temp entity.entityData.AngerTime
data modify entity @s AngryAt set from storage thewii:apiculture/temp entity.entityData.AngryAt