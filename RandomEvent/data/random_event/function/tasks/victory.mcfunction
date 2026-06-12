scoreboard players set #victory rc.task 1
scoreboard players set #enabled rc.enabled 0
scoreboard players set #timer rc.timer 0
schedule clear random_event:internal/return_from_sky
tag @a remove rc.sky
kill @e[type=minecraft:marker,tag=rc.return]
function random_event:boons/remove_modifiers
title @a title {"text":"Victory","color":"gold","bold":true}
title @a subtitle {"text":"The Ender Dragon is defeated. Random Event has stopped.","color":"yellow"}
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Victory! The Ender Dragon has been defeated and events are stopped.","color":"yellow"}]
function random_event:internal/update_sidebar

