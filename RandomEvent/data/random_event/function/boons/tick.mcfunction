execute if score #pending rc.boon matches 0 if score #upgrade_done rc.boon matches 0 if entity @a[advancements={minecraft:story/upgrade_tools=true}] run function random_event:boons/nodes/upgrade
execute if score #pending rc.boon matches 0 if score #iron_done rc.boon matches 0 if entity @a[advancements={minecraft:story/smelt_iron=true}] run function random_event:boons/nodes/iron
execute if score #pending rc.boon matches 0 if score #diamond_done rc.boon matches 0 if entity @a[advancements={minecraft:story/mine_diamond=true}] run function random_event:boons/nodes/diamond
execute if score #pending rc.boon matches 0 if score #nether_done rc.boon matches 0 if entity @a[advancements={minecraft:story/enter_the_nether=true}] run function random_event:boons/nodes/nether
execute if score #pending rc.boon matches 0 if score #skull_done rc.boon matches 0 if entity @a[advancements={minecraft:nether/get_wither_skull=true}] run function random_event:boons/nodes/skull
execute if score #pending rc.boon matches 0 if score #bastion_done rc.boon matches 0 if entity @a[advancements={minecraft:nether/find_bastion=true}] run function random_event:boons/nodes/bastion
execute if score #pending rc.boon matches 0 if score #eye_done rc.boon matches 0 if entity @a[advancements={minecraft:story/follow_ender_eye=true}] run function random_event:boons/nodes/eye

