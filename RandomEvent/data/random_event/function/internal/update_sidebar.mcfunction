scoreboard players operation #next rc.value = #cooldown rc.cooldown
scoreboard players operation #next rc.value -= #timer rc.timer
scoreboard players operation #next rc.value /= #tick20 rc.value
execute if score #enabled rc.enabled matches 0 run scoreboard players set #next rc.value 0
team modify rc.line.stage suffix {"text":" Overworld","color":"green"}
execute if score #stage rc.task matches 2 run team modify rc.line.stage suffix {"text":" Nether","color":"red"}
execute if score #stage rc.task matches 3 run team modify rc.line.stage suffix {"text":" Stronghold","color":"gold"}
execute if score #stage rc.task matches 4 run team modify rc.line.stage suffix {"text":" The End","color":"dark_purple"}
execute if score #victory rc.task matches 1 run team modify rc.line.stage suffix {"text":" Victory","color":"yellow"}
team modify rc.line.state suffix {"text":" OFF","color":"red"}
execute if score #enabled rc.enabled matches 1 run team modify rc.line.state suffix {"text":" ON","color":"green"}
execute if score #victory rc.task matches 1 run team modify rc.line.state suffix {"text":" VICTORY","color":"yellow"}
team modify rc.line.event suffix {"text":" None","color":"gray"}
team modify rc.line.event2 suffix {"text":" None","color":"gray"}
execute if score #event2 rc.event matches 0 run scoreboard players set Event rc.display 20
execute if score #event2 rc.event matches 0 run scoreboard players reset Event1 rc.display
execute if score #event2 rc.event matches 0 run scoreboard players reset Event2 rc.display
execute if score #event2 rc.event matches 1.. run scoreboard players reset Event rc.display
execute if score #event2 rc.event matches 1.. run scoreboard players set Event1 rc.display 20
execute if score #event2 rc.event matches 1.. run scoreboard players set Event2 rc.display 19
execute if score #event rc.event matches 1 run team modify rc.line.event suffix {"text":" Blindness Fog","color":"gray"}
execute if score #event rc.event matches 2 run team modify rc.line.event suffix {"text":" Mob Ambush","color":"red"}
execute if score #event rc.event matches 3 run team modify rc.line.event suffix {"text":" Gravity Slip","color":"aqua"}
execute if score #event rc.event matches 4 run team modify rc.line.event suffix {"text":" Weakness Wave","color":"dark_purple"}
execute if score #event rc.event matches 5 run team modify rc.line.event suffix {"text":" Starving Curse","color":"dark_red"}
execute if score #event rc.event matches 6 run team modify rc.line.event suffix {"text":" Creeper Drop","color":"dark_green"}
execute if score #event rc.event matches 7 run team modify rc.line.event suffix {"text":" Inventory Weight","color":"dark_gray"}
execute if score #event rc.event matches 8 run team modify rc.line.event suffix {"text":" Frozen Feet","color":"aqua"}
execute if score #event rc.event matches 9 run team modify rc.line.event suffix {"text":" Dark Pulse","color":"dark_purple"}
execute if score #event rc.event matches 10 run team modify rc.line.event suffix {"text":" Cobweb Snare","color":"white"}
execute if score #event rc.event matches 11 run team modify rc.line.event suffix {"text":" Fire Panic","color":"red"}
execute if score #event rc.event matches 12 run team modify rc.line.event suffix {"text":" Rotten Snack","color":"dark_green"}
execute if score #event rc.event matches 13 run team modify rc.line.event suffix {"text":" Hostile Bell","color":"dark_red"}
execute if score #event rc.event matches 14 run team modify rc.line.event suffix {"text":" Lucky Relief","color":"green"}
execute if score #event rc.event matches 15 run team modify rc.line.event suffix {"text":" Guardian Blessing","color":"blue"}
execute if score #event rc.event matches 16 run team modify rc.line.event suffix {"text":" Swift Wind","color":"white"}
execute if score #event rc.event matches 17 run team modify rc.line.event suffix {"text":" Supply Cache","color":"gold"}
execute if score #event rc.event matches 18 run team modify rc.line.event suffix {"text":" Golden Hour","color":"yellow"}
execute if score #event rc.event matches 19 run team modify rc.line.event suffix {"text":" Miner's Grace","color":"green"}
execute if score #event rc.event matches 20 run team modify rc.line.event suffix {"text":" Second Chance","color":"gold"}
execute if score #event rc.event matches 21 run team modify rc.line.event suffix {"text":" Random Enchantment","color":"light_purple"}
execute if score #event rc.event matches 22 run team modify rc.line.event suffix {"text":" Golden Apple Gift","color":"gold"}
execute if score #event rc.event matches 23 run team modify rc.line.event suffix {"text":" Diamond Spark","color":"aqua"}
execute if score #event rc.event matches 24 run team modify rc.line.event suffix {"text":" Arrow Storm","color":"gray"}
execute if score #event rc.event matches 25 run team modify rc.line.event suffix {"text":" Ender Panic","color":"dark_purple"}
execute if score #event rc.event matches 26 run team modify rc.line.event suffix {"text":" Silverfish Crack","color":"gray"}
execute if score #event rc.event matches 27 run team modify rc.line.event suffix {"text":" Brute Raid","color":"dark_red"}
execute if score #event rc.event matches 28 run team modify rc.line.event suffix {"text":" Sky Return","color":"aqua"}
execute if score #event rc.event matches 29 run team modify rc.line.event suffix {"text":" Ender Pearls","color":"light_purple"}
execute if score #event rc.event matches 30 run team modify rc.line.event suffix {"text":" Ender Swarm","color":"dark_purple"}
execute if score #event rc.event matches 31 run team modify rc.line.event suffix {"text":" Dragon Breath","color":"dark_purple"}
execute if score #event rc.event matches 32 run team modify rc.line.event suffix {"text":" Void Pressure","color":"dark_gray"}
execute if score #event rc.event matches 33 run team modify rc.line.event suffix {"text":" Crystal Pulse","color":"light_purple"}
execute if score #event rc.event matches 34 run team modify rc.line.event suffix {"text":" Feather Fall","color":"aqua"}
execute if score #event rc.event matches 35 run team modify rc.line.event suffix {"text":" End Resistance","color":"gold"}
execute if score #event rc.event matches 36 run team modify rc.line.event suffix {"text":" Arrow Refill","color":"green"}
execute if score #event rc.event matches 37 run team modify rc.line.event suffix {"text":" Lucky Streak","color":"green"}
execute if score #event rc.event matches 38 run team modify rc.line.event suffix {"text":" Misfortune","color":"dark_red"}
execute if score #event2 rc.event matches 1 run team modify rc.line.event2 suffix {"text":" Blindness Fog","color":"gray"}
execute if score #event2 rc.event matches 2 run team modify rc.line.event2 suffix {"text":" Mob Ambush","color":"red"}
execute if score #event2 rc.event matches 3 run team modify rc.line.event2 suffix {"text":" Gravity Slip","color":"aqua"}
execute if score #event2 rc.event matches 4 run team modify rc.line.event2 suffix {"text":" Weakness Wave","color":"dark_purple"}
execute if score #event2 rc.event matches 5 run team modify rc.line.event2 suffix {"text":" Starving Curse","color":"dark_red"}
execute if score #event2 rc.event matches 6 run team modify rc.line.event2 suffix {"text":" Creeper Drop","color":"dark_green"}
execute if score #event2 rc.event matches 7 run team modify rc.line.event2 suffix {"text":" Inventory Weight","color":"dark_gray"}
execute if score #event2 rc.event matches 8 run team modify rc.line.event2 suffix {"text":" Frozen Feet","color":"aqua"}
execute if score #event2 rc.event matches 9 run team modify rc.line.event2 suffix {"text":" Dark Pulse","color":"dark_purple"}
execute if score #event2 rc.event matches 10 run team modify rc.line.event2 suffix {"text":" Cobweb Snare","color":"white"}
execute if score #event2 rc.event matches 11 run team modify rc.line.event2 suffix {"text":" Fire Panic","color":"red"}
execute if score #event2 rc.event matches 12 run team modify rc.line.event2 suffix {"text":" Rotten Snack","color":"dark_green"}
execute if score #event2 rc.event matches 13 run team modify rc.line.event2 suffix {"text":" Hostile Bell","color":"dark_red"}
execute if score #event2 rc.event matches 14 run team modify rc.line.event2 suffix {"text":" Lucky Relief","color":"green"}
execute if score #event2 rc.event matches 15 run team modify rc.line.event2 suffix {"text":" Guardian Blessing","color":"blue"}
execute if score #event2 rc.event matches 16 run team modify rc.line.event2 suffix {"text":" Swift Wind","color":"white"}
execute if score #event2 rc.event matches 17 run team modify rc.line.event2 suffix {"text":" Supply Cache","color":"gold"}
execute if score #event2 rc.event matches 18 run team modify rc.line.event2 suffix {"text":" Golden Hour","color":"yellow"}
execute if score #event2 rc.event matches 19 run team modify rc.line.event2 suffix {"text":" Miner's Grace","color":"green"}
execute if score #event2 rc.event matches 20 run team modify rc.line.event2 suffix {"text":" Second Chance","color":"gold"}
execute if score #event2 rc.event matches 21 run team modify rc.line.event2 suffix {"text":" Random Enchantment","color":"light_purple"}
execute if score #event2 rc.event matches 22 run team modify rc.line.event2 suffix {"text":" Golden Apple Gift","color":"gold"}
execute if score #event2 rc.event matches 23 run team modify rc.line.event2 suffix {"text":" Diamond Spark","color":"aqua"}
execute if score #event2 rc.event matches 24 run team modify rc.line.event2 suffix {"text":" Arrow Storm","color":"gray"}
execute if score #event2 rc.event matches 25 run team modify rc.line.event2 suffix {"text":" Ender Panic","color":"dark_purple"}
execute if score #event2 rc.event matches 26 run team modify rc.line.event2 suffix {"text":" Silverfish Crack","color":"gray"}
execute if score #event2 rc.event matches 27 run team modify rc.line.event2 suffix {"text":" Brute Raid","color":"dark_red"}
execute if score #event2 rc.event matches 28 run team modify rc.line.event2 suffix {"text":" Sky Return","color":"aqua"}
execute if score #event2 rc.event matches 29 run team modify rc.line.event2 suffix {"text":" Ender Pearls","color":"light_purple"}
execute if score #event2 rc.event matches 30 run team modify rc.line.event2 suffix {"text":" Ender Swarm","color":"dark_purple"}
execute if score #event2 rc.event matches 31 run team modify rc.line.event2 suffix {"text":" Dragon Breath","color":"dark_purple"}
execute if score #event2 rc.event matches 32 run team modify rc.line.event2 suffix {"text":" Void Pressure","color":"dark_gray"}
execute if score #event2 rc.event matches 33 run team modify rc.line.event2 suffix {"text":" Crystal Pulse","color":"light_purple"}
execute if score #event2 rc.event matches 34 run team modify rc.line.event2 suffix {"text":" Feather Fall","color":"aqua"}
execute if score #event2 rc.event matches 35 run team modify rc.line.event2 suffix {"text":" End Resistance","color":"gold"}
execute if score #event2 rc.event matches 36 run team modify rc.line.event2 suffix {"text":" Arrow Refill","color":"green"}
execute if score #event2 rc.event matches 38 run team modify rc.line.event2 suffix {"text":" Misfortune","color":"dark_red"}
execute if score #next rc.value matches 0 run team modify rc.line.next suffix {"text":" 0s","color":"yellow"}
execute if score #next rc.value matches 1 run team modify rc.line.next suffix {"text":" 1s","color":"yellow"}
execute if score #next rc.value matches 2 run team modify rc.line.next suffix {"text":" 2s","color":"yellow"}
execute if score #next rc.value matches 3 run team modify rc.line.next suffix {"text":" 3s","color":"yellow"}
execute if score #next rc.value matches 4 run team modify rc.line.next suffix {"text":" 4s","color":"yellow"}
execute if score #next rc.value matches 5 run team modify rc.line.next suffix {"text":" 5s","color":"yellow"}
execute if score #next rc.value matches 6 run team modify rc.line.next suffix {"text":" 6s","color":"yellow"}
execute if score #next rc.value matches 7 run team modify rc.line.next suffix {"text":" 7s","color":"yellow"}
execute if score #next rc.value matches 8 run team modify rc.line.next suffix {"text":" 8s","color":"yellow"}
execute if score #next rc.value matches 9 run team modify rc.line.next suffix {"text":" 9s","color":"yellow"}
execute if score #next rc.value matches 10 run team modify rc.line.next suffix {"text":" 10s","color":"yellow"}
execute if score #next rc.value matches 11 run team modify rc.line.next suffix {"text":" 11s","color":"yellow"}
execute if score #next rc.value matches 12 run team modify rc.line.next suffix {"text":" 12s","color":"yellow"}
execute if score #next rc.value matches 13 run team modify rc.line.next suffix {"text":" 13s","color":"yellow"}
execute if score #next rc.value matches 14 run team modify rc.line.next suffix {"text":" 14s","color":"yellow"}
execute if score #next rc.value matches 15 run team modify rc.line.next suffix {"text":" 15s","color":"yellow"}
execute if score #next rc.value matches 16 run team modify rc.line.next suffix {"text":" 16s","color":"yellow"}
execute if score #next rc.value matches 17 run team modify rc.line.next suffix {"text":" 17s","color":"yellow"}
execute if score #next rc.value matches 18 run team modify rc.line.next suffix {"text":" 18s","color":"yellow"}
execute if score #next rc.value matches 19 run team modify rc.line.next suffix {"text":" 19s","color":"yellow"}
execute if score #next rc.value matches 20 run team modify rc.line.next suffix {"text":" 20s","color":"yellow"}
execute if score #next rc.value matches 21 run team modify rc.line.next suffix {"text":" 21s","color":"yellow"}
execute if score #next rc.value matches 22 run team modify rc.line.next suffix {"text":" 22s","color":"yellow"}
execute if score #next rc.value matches 23 run team modify rc.line.next suffix {"text":" 23s","color":"yellow"}
execute if score #next rc.value matches 24 run team modify rc.line.next suffix {"text":" 24s","color":"yellow"}
execute if score #next rc.value matches 25 run team modify rc.line.next suffix {"text":" 25s","color":"yellow"}
execute if score #next rc.value matches 26 run team modify rc.line.next suffix {"text":" 26s","color":"yellow"}
execute if score #next rc.value matches 27 run team modify rc.line.next suffix {"text":" 27s","color":"yellow"}
execute if score #next rc.value matches 28 run team modify rc.line.next suffix {"text":" 28s","color":"yellow"}
execute if score #next rc.value matches 29 run team modify rc.line.next suffix {"text":" 29s","color":"yellow"}
execute if score #next rc.value matches 30 run team modify rc.line.next suffix {"text":" 30s","color":"yellow"}
execute if score #next rc.value matches 31 run team modify rc.line.next suffix {"text":" 31s","color":"yellow"}
execute if score #next rc.value matches 32 run team modify rc.line.next suffix {"text":" 32s","color":"yellow"}
execute if score #next rc.value matches 33 run team modify rc.line.next suffix {"text":" 33s","color":"yellow"}
execute if score #next rc.value matches 34 run team modify rc.line.next suffix {"text":" 34s","color":"yellow"}
execute if score #next rc.value matches 35 run team modify rc.line.next suffix {"text":" 35s","color":"yellow"}
execute if score #next rc.value matches 36 run team modify rc.line.next suffix {"text":" 36s","color":"yellow"}
execute if score #next rc.value matches 37 run team modify rc.line.next suffix {"text":" 37s","color":"yellow"}
execute if score #next rc.value matches 38 run team modify rc.line.next suffix {"text":" 38s","color":"yellow"}
execute if score #next rc.value matches 39 run team modify rc.line.next suffix {"text":" 39s","color":"yellow"}
execute if score #next rc.value matches 40 run team modify rc.line.next suffix {"text":" 40s","color":"yellow"}
execute if score #next rc.value matches 41 run team modify rc.line.next suffix {"text":" 41s","color":"yellow"}
execute if score #next rc.value matches 42 run team modify rc.line.next suffix {"text":" 42s","color":"yellow"}
execute if score #next rc.value matches 43 run team modify rc.line.next suffix {"text":" 43s","color":"yellow"}
execute if score #next rc.value matches 44 run team modify rc.line.next suffix {"text":" 44s","color":"yellow"}
execute if score #next rc.value matches 45 run team modify rc.line.next suffix {"text":" 45s","color":"yellow"}
execute if score #next rc.value matches 46 run team modify rc.line.next suffix {"text":" 46s","color":"yellow"}
execute if score #next rc.value matches 47 run team modify rc.line.next suffix {"text":" 47s","color":"yellow"}
execute if score #next rc.value matches 48 run team modify rc.line.next suffix {"text":" 48s","color":"yellow"}
execute if score #next rc.value matches 49 run team modify rc.line.next suffix {"text":" 49s","color":"yellow"}
execute if score #next rc.value matches 50 run team modify rc.line.next suffix {"text":" 50s","color":"yellow"}
execute if score #next rc.value matches 51 run team modify rc.line.next suffix {"text":" 51s","color":"yellow"}
execute if score #next rc.value matches 52 run team modify rc.line.next suffix {"text":" 52s","color":"yellow"}
execute if score #next rc.value matches 53 run team modify rc.line.next suffix {"text":" 53s","color":"yellow"}
execute if score #next rc.value matches 54 run team modify rc.line.next suffix {"text":" 54s","color":"yellow"}
execute if score #next rc.value matches 55 run team modify rc.line.next suffix {"text":" 55s","color":"yellow"}
execute if score #next rc.value matches 56 run team modify rc.line.next suffix {"text":" 56s","color":"yellow"}
execute if score #next rc.value matches 57 run team modify rc.line.next suffix {"text":" 57s","color":"yellow"}
execute if score #next rc.value matches 58 run team modify rc.line.next suffix {"text":" 58s","color":"yellow"}
execute if score #next rc.value matches 59 run team modify rc.line.next suffix {"text":" 59s","color":"yellow"}
execute if score #next rc.value matches 60.. run team modify rc.line.next suffix {"text":" 60s","color":"yellow"}
