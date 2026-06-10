scoreboard players set @s rc.value 0
scoreboard players set @s rc.cooldown 0
function random_event:events/enchanted_manual/count_inventory
execute if score @s rc.value matches 1.. store result score @s rc.event run random value 1..1000000
execute if score @s rc.value matches 1.. run scoreboard players operation @s rc.event %= @s rc.value
execute if score @s rc.value matches 1.. run scoreboard players add @s rc.event 1
execute if score @s rc.value matches 1.. run function random_event:events/enchanted_manual/scan_inventory
execute unless score @s rc.cooldown matches 1 run give @s minecraft:enchanted_book[stored_enchantments={"minecraft:mending":1}] 1
