scoreboard players add @a rc.deaths 0
scoreboard players add @a rc.death_seen 0
execute as @a unless score @s rc.deaths = @s rc.death_seen run function random_event:boons/refresh_player
execute as @a run scoreboard players operation @s rc.death_seen = @s rc.deaths
function random_event:boons/check_modifiers
function random_event:boons/apply_active_modifiers
