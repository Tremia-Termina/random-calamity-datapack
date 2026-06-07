scoreboard players set #timer rc.timer 0
execute store result score #event rc.event run random value 1..20
execute if score #event rc.event matches 1 run function random_event:events/blindness_fog
execute if score #event rc.event matches 2 run function random_event:events/mob_ambush
execute if score #event rc.event matches 3 run function random_event:events/gravity_slip
execute if score #event rc.event matches 4 run function random_event:events/weakness_wave
execute if score #event rc.event matches 5 run function random_event:events/starving_curse
execute if score #event rc.event matches 6 run function random_event:events/creeper_drop
execute if score #event rc.event matches 7 run function random_event:events/inventory_weight
execute if score #event rc.event matches 8 run function random_event:events/frozen_feet
execute if score #event rc.event matches 9 run function random_event:events/dark_pulse
execute if score #event rc.event matches 10 run function random_event:events/cobweb_snare
execute if score #event rc.event matches 11 run function random_event:events/fire_panic
execute if score #event rc.event matches 12 run function random_event:events/rotten_snack
execute if score #event rc.event matches 13 run function random_event:events/hostile_bell
execute if score #event rc.event matches 14 run function random_event:events/lucky_relief
execute if score #event rc.event matches 15 run function random_event:events/guardian_blessing
execute if score #event rc.event matches 16 run function random_event:events/swift_wind
execute if score #event rc.event matches 17 run function random_event:events/supply_cache
execute if score #event rc.event matches 18 run function random_event:events/golden_hour
execute if score #event rc.event matches 19 run function random_event:events/miners_grace
execute if score #event rc.event matches 20 run function random_event:events/second_chance
function random_event:internal/update_sidebar
