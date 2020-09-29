### Improved Apiculture v0.0.1 ###
# Only modify this file if you
# know what you are doing.

# ENTITIES

    ## Bee

        ### Time to regenerate stinger(1 = 0.5s)
        scoreboard players set #bee.stinger_regen_time twia.data 10



# ITEMS

    ## Glass jar

        ###
        data modify storage thewii:apiculture/data item.oak_beehive set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Glass Jar","italic":false}',Lore:['{"text":"Empty","color":"gray","italic":false}']},Unbreakable:1b,HideFlags:127,apic:{hasContents:0b},ctc:{id:"glass_jar",from:"thewii:apiculture",traits:{"item":1b}}}}

        ### Max nectar capacity:
        scoreboard players set #item.glass_jar.max_nectar twia.data 16

        ### Nectar amount extracted per bee:
        scoreboard players set #item.glass_jar.nectar_per_bee twia.data 2

        ### Minimum age grown per use:
        scoreboard players set #item.glass_jar.min_nectar_growth twia.data 2

        ### Maximum age grown per use:
        scoreboard players set #item.glass_jar.max_nectar_growth twia.data 5


# BLOCKS

    ## Large Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.large_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439050,display:{Name:'{"text":"Large Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.large_hive"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],storageBees:[],CustomModelData:430000}}}}}

        ### Max housing capacity:
        scoreboard players set #block.large_beehive.max_housing twia.data 5
    
    ## Oak Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.oak_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439000,display:{Name:'{"text":"Oak Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Spruce Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.spruce_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439010,display:{Name:'{"text":"Spruce Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.spruce"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Birch Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.birch_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439020,display:{Name:'{"text":"Birch Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.birch"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Jungle beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.jungle_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439030,display:{Name:'{"text":"Jungle Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.jungle"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Acacia Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.acacia_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439040,display:{Name:'{"text":"Acacia Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.acacia"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}
        
    ## Dark Oak Beehive

        ### Nbt
        data modify storage thewii:apiculture/data item.dark_oak_beehive set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439050,display:{Name:'{"text":"Dark Oak Beehive","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.hive","twia.hive.dark_oak"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430000}}}}}

    ##
        ### Nbt
        data modify storage thewii:apiculture/data item.candle set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:439070,display:{Name:'{"text":"Candle","italic":false}'},EntityTag:{Tags:["twvp.place_block","twia.candle"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Item:{id:"minecraft:stone_button",Count:1b,tag:{honeyLevel:0,bees:[],CustomModelData:430070}}}}}