function random_event:internal/handle_triggers
function random_event:boons/maintain_modifiers
execute if score #enabled rc.enabled matches 1 run scoreboard players add #timer rc.timer 1
execute if score #enabled rc.enabled matches 1 if score #timer rc.timer >= #cooldown rc.cooldown run function random_event:internal/trigger_event
execute if score #enabled rc.enabled matches 1 run function random_event:boons/tick
execute if score #enabled rc.enabled matches 1 run function random_event:tasks/tick
function random_event:internal/update_sidebar

