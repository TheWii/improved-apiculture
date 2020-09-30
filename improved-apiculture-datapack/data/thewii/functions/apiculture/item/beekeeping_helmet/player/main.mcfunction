# Interval
scoreboard players add @s twia.interval 1
execute if score @s twia.interval matches 100.. run scoreboard players set @s twia.interval 0


# 5 Interval
scoreboard players operation #interval twvp.temp = @s twia.interval
scoreboard players operation #interval twvp.temp %= #5 twvp.math