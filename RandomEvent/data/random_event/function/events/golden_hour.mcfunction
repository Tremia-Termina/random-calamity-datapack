title @a title {"text":"Golden Hour","color":"yellow","bold":true}
title @a subtitle {"text":"15s regeneration and luck, plus a golden carrot.","color":"gold"}
effect give @a minecraft:regeneration 15 0 true
effect give @a minecraft:luck 15 0 true
give @a minecraft:golden_carrot 1
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
