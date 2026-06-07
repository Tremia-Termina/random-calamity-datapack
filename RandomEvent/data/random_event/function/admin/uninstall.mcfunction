scoreboard objectives remove rc.timer
scoreboard objectives remove rc.enabled
scoreboard objectives remove rc.random
scoreboard objectives remove rc.event
scoreboard objectives remove rc.cooldown
scoreboard objectives remove rc.value
scoreboard objectives remove rc.display
scoreboard objectives remove ping
scoreboard objectives remove start
scoreboard objectives remove stop
scoreboard objectives remove event
scoreboard objectives remove uninstall
team remove rc.line.state
team remove rc.line.event
team remove rc.line.next
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Scoreboards removed. You can now delete the datapack folder if desired.","color":"yellow"}]
