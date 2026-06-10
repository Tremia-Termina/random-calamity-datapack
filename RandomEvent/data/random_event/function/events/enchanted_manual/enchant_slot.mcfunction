item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2] container.0 with minecraft:air
item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2] container.1 with minecraft:air
kill @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2]
scoreboard players set @s rc.value 0
execute if data entity @s SelectedItem run scoreboard players set @s rc.value 1
summon minecraft:chest_minecart ~ ~ ~ {Tags:["rc.enchant_tmp"],NoGravity:1b,Invulnerable:1b,Silent:1b}
execute if score @s rc.value matches 1 run item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
$item replace entity @s weapon.mainhand from entity @s $(slot)
scoreboard players set @s rc.random 0
function random_event:events/enchanted_manual/try_mainhand
execute if score @s rc.random matches 1 run item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.1 from entity @s weapon.mainhand
execute if score @s rc.value matches 1 run item replace entity @s weapon.mainhand from entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.0
execute if score @s rc.value matches 0 run item replace entity @s weapon.mainhand with minecraft:air
$execute if score @s rc.random matches 1 run item replace entity @s $(slot) from entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.1
item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.0 with minecraft:air
item replace entity @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2,limit=1,sort=nearest] container.1 with minecraft:air
kill @e[type=minecraft:chest_minecart,tag=rc.enchant_tmp,distance=..2]
