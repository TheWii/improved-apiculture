# Set block
setblock ~ ~ ~ minecraft:lantern[hanging=false,waterlogged=false]

# Summon armor stand
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1,Tags:["twia.tick_2","twia.candle"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:439070}}]}

# Sound
playsound minecraft:block.wool.place block @a ~ ~ ~ 1 0.8
playsound minecraft:block.lantern.place block @a ~ ~ ~ 1 0.8