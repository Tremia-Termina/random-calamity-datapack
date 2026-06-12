function random_event:boons/remove_modifiers
scoreboard objectives remove rc.timer
scoreboard objectives remove rc.enabled
scoreboard objectives remove rc.random
scoreboard objectives remove rc.event
scoreboard objectives remove rc.cooldown
scoreboard objectives remove rc.value
scoreboard objectives remove rc.task
scoreboard objectives remove rc.boon
scoreboard objectives remove rc.deaths
scoreboard objectives remove rc.death_seen
scoreboard objectives remove rc.attr_ok
scoreboard objectives remove rc.display
scoreboard objectives remove ping
scoreboard objectives remove start
scoreboard objectives remove stop
scoreboard objectives remove event
scoreboard objectives remove uninstall
scoreboard objectives remove boon
scoreboard objectives remove task
scoreboard objectives remove task_nether_15
scoreboard objectives remove task_nether_20
scoreboard objectives remove task_nether_30
scoreboard objectives remove task_stronghold_30
scoreboard objectives remove task_stronghold_40
scoreboard objectives remove task_stronghold_60
scoreboard objectives remove task_crystal_2
scoreboard objectives remove task_crystal_4
scoreboard objectives remove task_crystal_6
team remove rc.line.stage
team remove rc.line.state
team remove rc.line.event
team remove rc.line.event2
team remove rc.line.next
schedule clear random_event:internal/return_from_sky
tag @a remove rc.sky
kill @e[type=minecraft:marker,tag=rc.return]
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Scoreboards removed. You can now delete the datapack folder if desired.","color":"yellow"}]

