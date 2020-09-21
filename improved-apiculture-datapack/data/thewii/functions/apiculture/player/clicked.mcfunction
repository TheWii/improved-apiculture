data remove storage thewii:apiculture/temp mainhand
data modify storage thewii:apiculture/temp mainhand set from entity @s SelectedItem

execute if data storage thewii:apiculture/temp mainhand.tag.ctc{id:"glass_jar",from:"thewii:apiculture"} run function thewii:apiculture/item/glass_jar/start

scoreboard players reset @s twia.clicked2