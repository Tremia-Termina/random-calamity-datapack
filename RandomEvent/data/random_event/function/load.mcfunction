scoreboard objectives add rc.timer dummy
scoreboard objectives add rc.enabled dummy
scoreboard objectives add rc.random dummy
scoreboard objectives add rc.event dummy
scoreboard objectives add rc.cooldown dummy
scoreboard objectives add rc.value dummy
scoreboard objectives add rc.task dummy
scoreboard objectives add rc.boon dummy
scoreboard objectives add rc.deaths deathCount
scoreboard objectives add rc.death_seen dummy
scoreboard objectives add rc.attr_ok dummy
scoreboard objectives add rc.display dummy "Random Event"
scoreboard objectives add ping trigger
scoreboard objectives add start trigger
scoreboard objectives add stop trigger
scoreboard objectives add event trigger
scoreboard objectives add uninstall trigger
scoreboard objectives add boon trigger
scoreboard objectives remove task_nether_15
scoreboard objectives remove task_nether_20
scoreboard objectives remove task_nether_30
scoreboard objectives remove task_stronghold_30
scoreboard objectives remove task_stronghold_40
scoreboard objectives remove task_stronghold_60
scoreboard objectives remove task_crystal_2
scoreboard objectives remove task_crystal_4
scoreboard objectives remove task_crystal_6
scoreboard objectives add task trigger
scoreboard players set #timer rc.timer 0
scoreboard players set #enabled rc.enabled 0
scoreboard players set #event rc.event 0
scoreboard players set #event2 rc.event 0
scoreboard players set #event_first rc.event 0
scoreboard players set #routed rc.event 0
scoreboard players set #lucky_next rc.event 0
scoreboard players set #doom_count rc.event 0
scoreboard players set #cooldown rc.cooldown 1200
scoreboard players set #tick20 rc.value 20
scoreboard players set #next rc.value 60
scoreboard players set #stage rc.task 1
scoreboard players set #victory rc.task 0
function random_event:tasks/reset
function random_event:boons/reset
scoreboard players set Stage rc.display 40
scoreboard players set State rc.display 30
scoreboard players set Event rc.display 20
scoreboard players set Next rc.display 10
scoreboard players reset Event1 rc.display
scoreboard players reset Event2 rc.display
team add rc.line.stage
team add rc.line.state
team add rc.line.event
team add rc.line.event2
team add rc.line.next
team join rc.line.stage Stage
team join rc.line.state State
team join rc.line.event Event
team join rc.line.event Event1
team join rc.line.event2 Event2
team join rc.line.next Next
team modify rc.line.stage color green
team modify rc.line.state color gold
team modify rc.line.event color aqua
team modify rc.line.event2 color dark_aqua
team modify rc.line.next color yellow
team modify rc.line.stage suffix {"text":" Overworld","color":"green"}
team modify rc.line.state suffix {"text":" OFF","color":"red"}
team modify rc.line.event suffix {"text":" None","color":"gray"}
team modify rc.line.event2 suffix {"text":" None","color":"gray"}
team modify rc.line.next suffix {"text":" 15-60s","color":"yellow"}
scoreboard objectives modify rc.display numberformat blank
scoreboard objectives setdisplay sidebar rc.display
function random_event:internal/enable_triggers
function random_event:internal/update_sidebar
tellraw @a [{"text":"[Random Event] ","color":"gold"},{"text":"Loaded. Use /trigger start to begin.","color":"yellow"}]

