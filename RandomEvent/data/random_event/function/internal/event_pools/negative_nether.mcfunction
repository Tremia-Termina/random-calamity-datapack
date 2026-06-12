execute store result score #roll rc.random run random value 1..10
execute if score #roll rc.random matches 1 run scoreboard players set #event rc.event 2
execute if score #roll rc.random matches 2 run scoreboard players set #event rc.event 4
execute if score #roll rc.random matches 3 run scoreboard players set #event rc.event 5
execute if score #roll rc.random matches 4 run scoreboard players set #event rc.event 9
execute if score #roll rc.random matches 5 run scoreboard players set #event rc.event 11
execute if score #roll rc.random matches 6 run scoreboard players set #event rc.event 12
execute if score #roll rc.random matches 7 run scoreboard players set #event rc.event 13
execute if score #roll rc.random matches 8 run scoreboard players set #event rc.event 24
execute if score #roll rc.random matches 9 run scoreboard players set #event rc.event 27
execute if score #roll rc.random matches 10 run scoreboard players set #event rc.event 28
function random_event:internal/run_selected_event
