$function random_event:events/enchanted_manual/test_slot {slot:"$(slot)"}
execute if score @s rc.random matches 1 run scoreboard players remove @s rc.event 1
$execute if score @s rc.random matches 1 if score @s rc.event matches 0 run function random_event:events/enchanted_manual/enchant_slot {slot:"$(slot)"}
execute if score @s rc.random matches 1 if score @s rc.event matches 0 run scoreboard players set @s rc.cooldown 1
