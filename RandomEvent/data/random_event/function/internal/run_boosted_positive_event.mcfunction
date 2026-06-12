execute if score #event rc.event matches 14 run title @a actionbar [{"text":"Lucky Relief x2: ","color":"green","bold":true},{"text":"90s regeneration and saturation, plus bread.","color":"yellow"}]
execute if score #event rc.event matches 14 run effect give @a minecraft:regeneration 90 0 true
execute if score #event rc.event matches 14 run effect give @a minecraft:saturation 90 0 true
execute if score #event rc.event matches 14 run give @a minecraft:bread 4
execute if score #event rc.event matches 15 run title @a actionbar [{"text":"Guardian Blessing x2: ","color":"blue","bold":true},{"text":"90s resistance and absorption.","color":"aqua"}]
execute if score #event rc.event matches 15 run effect give @a minecraft:resistance 90 0 true
execute if score #event rc.event matches 15 run effect give @a minecraft:absorption 90 0 true
execute if score #event rc.event matches 16 run title @a actionbar [{"text":"Swift Wind x2: ","color":"white","bold":true},{"text":"90s speed and haste.","color":"green"}]
execute if score #event rc.event matches 16 run effect give @a minecraft:speed 90 1 true
execute if score #event rc.event matches 16 run effect give @a minecraft:haste 90 0 true
execute if score #event rc.event matches 17 run title @a actionbar [{"text":"Supply Cache x2: ","color":"gold","bold":true},{"text":"32 golden carrots appear in your pack.","color":"yellow"}]
execute if score #event rc.event matches 17 run give @a minecraft:golden_carrot 32
execute if score #event rc.event matches 18 run title @a actionbar [{"text":"Golden Hour x2: ","color":"yellow","bold":true},{"text":"90s regeneration and luck, plus golden carrots.","color":"gold"}]
execute if score #event rc.event matches 18 run effect give @a minecraft:regeneration 90 0 true
execute if score #event rc.event matches 18 run effect give @a minecraft:luck 90 0 true
execute if score #event rc.event matches 18 run give @a minecraft:golden_carrot 2
execute if score #event rc.event matches 19 run title @a actionbar [{"text":"Miner's Grace x2: ","color":"green","bold":true},{"text":"90s haste and night vision, plus torches.","color":"yellow"}]
execute if score #event rc.event matches 19 run effect give @a minecraft:haste 90 1 true
execute if score #event rc.event matches 19 run effect give @a minecraft:night_vision 90 0 true
execute if score #event rc.event matches 19 run give @a minecraft:torch 24
execute if score #event rc.event matches 20 run title @a actionbar [{"text":"Second Chance x2: ","color":"gold","bold":true},{"text":"90s regeneration, resistance, and slow falling.","color":"yellow"}]
execute if score #event rc.event matches 20 run effect give @a minecraft:regeneration 90 1 true
execute if score #event rc.event matches 20 run effect give @a minecraft:resistance 90 0 true
execute if score #event rc.event matches 20 run effect give @a minecraft:slow_falling 90 0 true
execute if score #event rc.event matches 21 run title @a actionbar [{"text":"Random Enchantment x2: ","color":"light_purple","bold":true},{"text":"Two eligible items gain enchantments.","color":"gold"}]
execute if score #event rc.event matches 21 as @a at @s run function random_event:events/random_enchantment/player
execute if score #event rc.event matches 21 as @a at @s run function random_event:events/random_enchantment/player
execute if score #event rc.event matches 22 run title @a actionbar [{"text":"Golden Apple Gift x2: ","color":"gold","bold":true},{"text":"A stronger apple reward appears.","color":"yellow"}]
execute if score #event rc.event matches 22 store result score #reward rc.random run random value 1..10
execute if score #event rc.event matches 22 if score #reward rc.random matches 1 run give @a minecraft:enchanted_golden_apple 1
execute if score #event rc.event matches 22 unless score #reward rc.random matches 1 run give @a minecraft:golden_apple 2
execute if score #event rc.event matches 23 run title @a actionbar [{"text":"Diamond Spark x2: ","color":"aqua","bold":true},{"text":"Eight diamonds appear in your pack.","color":"white"}]
execute if score #event rc.event matches 23 run give @a minecraft:diamond 8
execute if score #event rc.event matches 29 run title @a actionbar [{"text":"Ender Pearls x2: ","color":"light_purple","bold":true},{"text":"Four ender pearls appear in your pack.","color":"aqua"}]
execute if score #event rc.event matches 29 run give @a minecraft:ender_pearl 4
execute if score #event rc.event matches 34 run title @a actionbar [{"text":"Feather Fall x2: ","color":"aqua","bold":true},{"text":"90s slow falling.","color":"white"}]
execute if score #event rc.event matches 34 run effect give @a minecraft:slow_falling 90 0 true
execute if score #event rc.event matches 35 run title @a actionbar [{"text":"End Resistance x2: ","color":"gold","bold":true},{"text":"90s resistance and 20s regeneration.","color":"yellow"}]
execute if score #event rc.event matches 35 run effect give @a minecraft:resistance 90 0 true
execute if score #event rc.event matches 35 run effect give @a minecraft:regeneration 20 0 true
execute if score #event rc.event matches 36 run title @a actionbar [{"text":"Arrow Refill x2: ","color":"green","bold":true},{"text":"Take the crystals down.","color":"white"}]
execute if score #event rc.event matches 36 run give @a minecraft:arrow 64
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.7
