title @a title {"text":"Hostile Bell","color":"dark_red","bold":true}
title @a subtitle {"text":"A small hostile wave arrives.","color":"red"}
execute at @a run summon minecraft:skeleton ~-2 ~ ~2 {PersistenceRequired:0b}
execute at @a run summon minecraft:zombie ~2 ~ ~-2 {PersistenceRequired:0b}

