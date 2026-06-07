title @a title {"text":"Mob Ambush","color":"red","bold":true}
title @a subtitle {"text":"A random hostile wave spreads out nearby.","color":"gold"}
execute store result score #ambush rc.random run random value 1..4
execute if score #ambush rc.random matches 1 run function random_event:events/mob_ambush/cave_spiders
execute if score #ambush rc.random matches 2 run function random_event:events/mob_ambush/chicken_jockeys
execute if score #ambush rc.random matches 3 run function random_event:events/mob_ambush/wither_skeletons
execute if score #ambush rc.random matches 4 run function random_event:events/mob_ambush/mixed_wave
playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 1

