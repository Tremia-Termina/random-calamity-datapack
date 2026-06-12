scoreboard players set #timer rc.timer 0
scoreboard players set #event2 rc.event 0
scoreboard players set #event_first rc.event 0
scoreboard players set #routed rc.event 0
function random_event:internal/set_random_cooldown
function random_event:tasks/update_stage
execute if score #lucky_next rc.event matches 1 run scoreboard players set #routed rc.event 1
execute if score #lucky_next rc.event matches 1 run function random_event:internal/event_pools/positive_boost
execute if score #routed rc.event matches 0 if score #doom_count rc.event matches 1.. run scoreboard players set #routed rc.event 2
execute if score #routed rc.event matches 2 run function random_event:internal/event_pools/doom_double
execute if score #stage rc.task matches 1 if score #routed rc.event matches 0 run function random_event:internal/event_pools/overworld
execute if score #stage rc.task matches 2 if score #routed rc.event matches 0 run function random_event:internal/event_pools/nether
execute if score #stage rc.task matches 3 if score #routed rc.event matches 0 run function random_event:internal/event_pools/stronghold
execute if score #stage rc.task matches 4 if score #routed rc.event matches 0 run function random_event:internal/event_pools/end
function random_event:internal/update_sidebar
