title @a title {"text":"Enchanted Manual","color":"light_purple","bold":true}
title @a subtitle {"text":"A powerful enchanted book appears.","color":"gold"}
execute store result score #reward rc.random run random value 1..2
execute if score #reward rc.random matches 1 run give @a minecraft:enchanted_book[stored_enchantments={levels:{"minecraft:sharpness":5}}] 1
execute if score #reward rc.random matches 2 run give @a minecraft:enchanted_book[stored_enchantments={levels:{"minecraft:protection":4}}] 1
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1

