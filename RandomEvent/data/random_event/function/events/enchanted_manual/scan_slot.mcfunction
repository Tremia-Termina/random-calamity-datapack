$execute unless score @s rc.cooldown matches 1 if items entity @s $(slot) #random_event:enchanted_manual/targets run function random_event:events/enchanted_manual/select_slot {slot:"$(slot)"}
