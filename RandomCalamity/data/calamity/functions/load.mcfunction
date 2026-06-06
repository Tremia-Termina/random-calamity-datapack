scoreboard objectives add rc.timer dummy
scoreboard objectives add rc.enabled dummy
scoreboard objectives add rc.random dummy
scoreboard objectives add rc.event dummy
scoreboard objectives add rc.cooldown dummy
scoreboard objectives add rc_ping trigger
scoreboard objectives add rc_start trigger
scoreboard objectives add rc_stop trigger
scoreboard objectives add rc_force trigger
scoreboard objectives add rc_uninstall trigger
scoreboard players set #timer rc.timer 0
scoreboard players set #enabled rc.enabled 0
scoreboard players set #event rc.event 0
scoreboard players set #cooldown rc.cooldown 1200
function calamity:internal/enable_triggers
tellraw @a [{"text":"[Random Calamity] ","color":"gold"},{"text":"Loaded. Run /function calamity:admin/start to begin.","color":"yellow"}]
