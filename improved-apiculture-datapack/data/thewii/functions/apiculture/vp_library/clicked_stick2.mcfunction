data remove storage thewii:apiculture/temp mainhand
data modify storage thewii:apiculture/temp mainhand set from storage thewii:vp_library/temp mainhand

execute if data storage thewii:apiculture/temp mainhand.tag.ctc{id:"glass_jar"} run function thewii:apiculture/item/glass_jar/start