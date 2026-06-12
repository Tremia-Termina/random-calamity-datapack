scoreboard players set #lucky_next rc.event 0
execute store result score #roll rc.random run random value 1..14
execute if score #roll rc.random matches 1 run scoreboard players set #event rc.event 14
execute if score #roll rc.random matches 2 run scoreboard players set #event rc.event 15
execute if score #roll rc.random matches 3 run scoreboard players set #event rc.event 16
execute if score #roll rc.random matches 4 run scoreboard players set #event rc.event 17
execute if score #roll rc.random matches 5 run scoreboard players set #event rc.event 18
execute if score #roll rc.random matches 6 run scoreboard players set #event rc.event 19
execute if score #roll rc.random matches 7 run scoreboard players set #event rc.event 20
execute if score #roll rc.random matches 8 run scoreboard players set #event rc.event 21
execute if score #roll rc.random matches 9 run scoreboard players set #event rc.event 22
execute if score #roll rc.random matches 10 run scoreboard players set #event rc.event 23
execute if score #roll rc.random matches 11 run scoreboard players set #event rc.event 29
execute if score #roll rc.random matches 12 run scoreboard players set #event rc.event 34
execute if score #roll rc.random matches 13 run scoreboard players set #event rc.event 35
execute if score #roll rc.random matches 14 run scoreboard players set #event rc.event 36
function random_event:internal/run_boosted_positive_event
