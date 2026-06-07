title @a title {"text":"Golden Apple Gift","color":"gold","bold":true}
title @a subtitle {"text":"A rare apple reward appears.","color":"yellow"}
execute store result score #reward rc.random run random value 1..20
execute if score #reward rc.random matches 1 run give @a minecraft:enchanted_golden_apple 1
execute unless score #reward rc.random matches 1 run give @a minecraft:golden_apple 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2

