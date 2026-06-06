scoreboard players set #timer rc.timer 0
execute store result score #event rc.event run random value 1..20
execute if score #event rc.event matches 1 run function calamity:events/blindness_fog
execute if score #event rc.event matches 2 run function calamity:events/mob_ambush
execute if score #event rc.event matches 3 run function calamity:events/gravity_slip
execute if score #event rc.event matches 4 run function calamity:events/weakness_wave
execute if score #event rc.event matches 5 run function calamity:events/starving_curse
execute if score #event rc.event matches 6 run function calamity:events/creeper_drop
execute if score #event rc.event matches 7 run function calamity:events/inventory_weight
execute if score #event rc.event matches 8 run function calamity:events/frozen_feet
execute if score #event rc.event matches 9 run function calamity:events/dark_pulse
execute if score #event rc.event matches 10 run function calamity:events/cobweb_snare
execute if score #event rc.event matches 11 run function calamity:events/fire_panic
execute if score #event rc.event matches 12 run function calamity:events/rotten_snack
execute if score #event rc.event matches 13 run function calamity:events/hostile_bell
execute if score #event rc.event matches 14 run function calamity:events/lucky_relief
execute if score #event rc.event matches 15 run function calamity:events/guardian_blessing
execute if score #event rc.event matches 16 run function calamity:events/swift_wind
execute if score #event rc.event matches 17 run function calamity:events/supply_cache
execute if score #event rc.event matches 18 run function calamity:events/golden_hour
execute if score #event rc.event matches 19 run function calamity:events/miners_grace
execute if score #event rc.event matches 20 run function calamity:events/second_chance
function calamity:internal/update_sidebar
