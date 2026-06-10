title @a title {"text":"Crystal Pulse","color":"light_purple","bold":true}
title @a subtitle {"text":"The crystals shove your aim off line.","color":"red"}
effect give @a minecraft:levitation 4 0 true
effect give @a minecraft:glowing 15 0 true
execute at @a run particle minecraft:end_rod ~ ~1 ~ 1.5 0.7 1.5 0.03 80 force @a
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.4
