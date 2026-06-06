function calamity:internal/handle_triggers
execute if score #enabled rc.enabled matches 1 run scoreboard players add #timer rc.timer 1
execute if score #enabled rc.enabled matches 1 if score #timer rc.timer >= #cooldown rc.cooldown run function calamity:internal/trigger_event
