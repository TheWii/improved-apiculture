### Improved Apiculture v0.1.0 ###
# Only modify this file if you know what you are doing.
#

# ENTITIES

    ## Bee

        ### Regen stinger with Regeneration Effect
        scoreboard players set #bee.regen_stinger twia.data 1

        ### Time to regenerate stinger(1 = 0.5s)
        scoreboard players set #bee.stinger_regen_time twia.data 10
    
    ## Queen bee

        ### Max health
        scoreboard players set #queen_bee.max_health twia.data 100



# ITEMS

    ## Glass jar

        ### Nbt
        data modify storage thewii:apiculture/data item.glass_jar set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Glass Jar","italic":false}',Lore:['{"text":"Empty","color":"gray","italic":false}']},Unbreakable:1b,HideFlags:127,apic:{hasContents:0b},ctc:{id:"glass_jar",from:"thewii:apiculture",traits:{"item":1b}}}}

        ### Max nectar capacity:
        scoreboard players set #item.glass_jar.max_nectar twia.data 16

        ### Nectar amount extracted per bee:
        scoreboard players set #item.glass_jar.nectar_per_bee twia.data 2

        ### Minimum age grown per use:
        scoreboard players set #item.glass_jar.min_nectar_growth twia.data 2

        ### Maximum age grown per use:
        scoreboard players set #item.glass_jar.max_nectar_growth twia.data 5

    ## Beekeeping hat 

        ###
        data modify storage thewii:apiculture/data item.beekeeping_hat set value {id:"minecraft:chainmail_helmet",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Beekeeping Hat","italic":false}'},HideFlags:127,ctc:{id:"beekeeping_hat",from:"thewii:apiculture",traits:{"item":1b,"armor":1b,"armor/head":1b}},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;195155489,-1610529010,-1096228359,-239126416],Slot:"head"}]}}
    
    ## Beekeeping Tunic

        ###
        data modify storage thewii:apiculture/data item.beekeeping_tunic set value {id:"minecraft:leather_tunic",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Beekeeping Tunic","italic":false}'},HideFlags:127,ctc:{id:"beekeeping_tunic",from:"thewii:apiculture",traits:{"item":1b,"armor":1b,"armor/chest":1b}}}}
    
    ## Beekeeping Pants

        ###
        data modify storage thewii:apiculture/data item.beekeeping_pants set value {id:"minecraft:leather_leggings",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Beekeeping Pants","italic":false}'},HideFlags:127,ctc:{id:"beekeeping_pants",from:"thewii:apiculture",traits:{"item":1b,"armor":1b,"armor/legs":1b}}}}
    
    ## Beekeeping Boots

        ###
        data modify storage thewii:apiculture/data item.beekeeping_boots set value {id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Beekeeping Boots","italic":false}'},HideFlags:127,ctc:{id:"beekeeping_boots",from:"thewii:apiculture",traits:{"item":1b,"armor":1b,"armor/feet":1b}}}}


# BLOCKS

    ## Large Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.large_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439060,ctc:{from:"thewii:apiculture",id:"large_beehive",traits:{"block":1b,"beehive":1b}},display:{Name:'{"text":"Large Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.large_hive"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:"0",bees:[],storageBees:[],CustomModelData:430000}}}}}

        ### Max housing capacity:
        scoreboard players set #block.large_beehive.max_housing twia.data 5
    
    ## Oak Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.oak_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439000,ctc:{from:"thewii:apiculture",id:"oak_beehive",traits:{"block":1b,"beehive":1b,"wood/oak":1b}},display:{Name:'{"text":"Oak Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Spruce Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.spruce_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439010,ctc:{from:"thewii:apiculture",id:"spruce_beehive",traits:{"block":1b,"beehive":1b,"wood/spruce":1b}},display:{Name:'{"text":"Spruce Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.spruce"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Birch Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.birch_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439020,ctc:{from:"thewii:apiculture",id:"birch_beehive",traits:{"block":1b,"beehive":1b,"wood/birch":1b}},display:{Name:'{"text":"Birch Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.birch"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Jungle beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.jungle_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439030,ctc:{from:"thewii:apiculture",id:"jungle_beehive",traits:{"block":1b,"beehive":1b,"wood/jungle":1b}},display:{Name:'{"text":"Jungle Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.jungle"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Acacia Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.acacia_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439040,ctc:{from:"thewii:apiculture",id:"acacia_beehive",traits:{"block":1b,"beehive":1b,"wood/acacia":1b}},display:{Name:'{"text":"Acacia Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.acacia"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Dark Oak Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.dark_oak_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439050,ctc:{from:"thewii:apiculture",id:"dark_oak_beehive",traits:{"block":1b,"beehive":1b,"wood/dark_oak":1b}},display:{Name:'{"text":"Dark Oak Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.dark_oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}

    ## Candle

        ### Nbt
        data modify storage thewii:apiculture/data item.candle set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439070,ctc:{from:"thewii:apiculture",id:"candle",traits:{"block":1b}},display:{Name:'{"text":"Candle","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.candle"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}}

        ### Disable smoke
        scoreboard players set #block.candle.disable_smoke twia.data 0
