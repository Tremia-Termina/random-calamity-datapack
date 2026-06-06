scoreboard players set #timer rc.timer 0
execute store result score #event rc.event run random value 1..5
execute if score #event rc.event matches 1 run function calamity:events/blindness_fog
execute if score #event rc.event matches 2 run function calamity:events/mob_ambush
execute if score #event rc.event matches 3 run function calamity:events/gravity_slip
execute if score #event rc.event matches 4 run function calamity:events/weakness_wave
execute if score #event rc.event matches 5 run function calamity:events/lucky_relief
