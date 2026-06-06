title @a title {"text":"Mob Ambush","color":"red","bold":true}
title @a subtitle {"text":"Zombies heard the timer.","color":"gold"}
execute at @a run summon minecraft:zombie ~3 ~ ~ {CustomName:'{"text":"Calamity Zombie","color":"red"}',PersistenceRequired:0b}
execute at @a run summon minecraft:zombie ~-3 ~ ~ {CustomName:'{"text":"Calamity Zombie","color":"red"}',PersistenceRequired:0b}
playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 1

