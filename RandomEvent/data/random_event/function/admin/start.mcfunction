scoreboard players set #enabled rc.enabled 1
scoreboard players set #timer rc.timer 0
scoreboard players set #event2 rc.event 0
scoreboard players set #event_first rc.event 0
scoreboard players set #routed rc.event 0
scoreboard players set #lucky_next rc.event 0
scoreboard players set #doom_count rc.event 0
scoreboard players set #victory rc.task 0
function random_event:tasks/reset
function random_event:boons/reset
function random_event:internal/set_random_cooldown
function random_event:tasks/show_menu
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Challenge started. Random events trigger every 15-60 seconds.","color":"green"}]

