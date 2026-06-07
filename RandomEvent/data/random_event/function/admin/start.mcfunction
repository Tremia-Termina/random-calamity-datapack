scoreboard players set #enabled rc.enabled 1
scoreboard players set #timer rc.timer 0
function random_event:internal/set_random_cooldown
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Challenge started. Random events trigger every 15-60 seconds.","color":"green"}]
