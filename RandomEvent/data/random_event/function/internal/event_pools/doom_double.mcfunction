scoreboard players set #event2 rc.event 0
scoreboard players set #event_first rc.event 0
scoreboard players remove #doom_count rc.event 1
execute if score #stage rc.task matches 1 run function random_event:internal/event_pools/negative_overworld
execute if score #stage rc.task matches 1 run scoreboard players operation #event_first rc.event = #event rc.event
execute if score #stage rc.task matches 1 run function random_event:internal/event_pools/negative_overworld
execute if score #stage rc.task matches 1 run scoreboard players operation #event2 rc.event = #event rc.event
execute if score #stage rc.task matches 1 run scoreboard players operation #event rc.event = #event_first rc.event
execute if score #stage rc.task matches 2 run function random_event:internal/event_pools/negative_nether
execute if score #stage rc.task matches 2 run scoreboard players operation #event_first rc.event = #event rc.event
execute if score #stage rc.task matches 2 run function random_event:internal/event_pools/negative_nether
execute if score #stage rc.task matches 2 run scoreboard players operation #event2 rc.event = #event rc.event
execute if score #stage rc.task matches 2 run scoreboard players operation #event rc.event = #event_first rc.event
execute if score #stage rc.task matches 3 run function random_event:internal/event_pools/negative_stronghold
execute if score #stage rc.task matches 3 run scoreboard players operation #event_first rc.event = #event rc.event
execute if score #stage rc.task matches 3 run function random_event:internal/event_pools/negative_stronghold
execute if score #stage rc.task matches 3 run scoreboard players operation #event2 rc.event = #event rc.event
execute if score #stage rc.task matches 3 run scoreboard players operation #event rc.event = #event_first rc.event
execute if score #stage rc.task matches 4 run function random_event:internal/event_pools/negative_end
execute if score #stage rc.task matches 4 run scoreboard players operation #event_first rc.event = #event rc.event
execute if score #stage rc.task matches 4 run function random_event:internal/event_pools/negative_end
execute if score #stage rc.task matches 4 run scoreboard players operation #event2 rc.event = #event rc.event
execute if score #stage rc.task matches 4 run scoreboard players operation #event rc.event = #event_first rc.event
