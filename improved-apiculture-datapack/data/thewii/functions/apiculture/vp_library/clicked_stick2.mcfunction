data remove storage thewii:vp_library/temp mainhand
data modify storage thewii:vp_library/temp mainhand set from storage thewii:vp_library/temp mainhand

execute if data storage thewii:vp_library/temp mainhand.tag.ctc{id:"glass_jar"} run function thewii:apiculture/item/glass_jar/start