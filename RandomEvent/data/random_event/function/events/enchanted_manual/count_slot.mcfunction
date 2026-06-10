scoreboard players set @s rc.random 0
$execute if items entity @s $(slot) #random_event:enchanted_manual/targets run function random_event:events/enchanted_manual/test_slot {slot:"$(slot)"}
execute if score @s rc.random matches 1 run scoreboard players add @s rc.value 1
