title @a title {"text":"Lucky Relief","color":"green","bold":true}
title @a subtitle {"text":"15s regeneration and saturation, plus bread.","color":"yellow"}
effect give @a minecraft:regeneration 15 0 true
effect give @a minecraft:saturation 15 0 true
give @a minecraft:bread 2
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1
