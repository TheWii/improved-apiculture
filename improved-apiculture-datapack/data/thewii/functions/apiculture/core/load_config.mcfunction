### Improved Apiculture v0.0.1 ###
# Only modify this file if you
# know what you are doing.

# ENTITIES

    ## Bee

        ### Time to regenerate stinger(1 = 0.5s)
        scoreboard players set #bee.stinger_regen_time twia.data 10



# ITEMS

    ## Glass jar

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

        ### Max housing capacity:
        scoreboard players set #block.large_beehive.max_housing twia.data 5