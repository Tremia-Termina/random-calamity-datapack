execute if score #m_upgrade_health rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:max_health modifier value get random_event:upgrade_health 1
execute if score #m_upgrade_health rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_upgrade_health
execute if score #m_upgrade_speed rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:movement_speed modifier value get random_event:upgrade_speed 1
execute if score #m_upgrade_speed rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_upgrade_speed
execute if score #m_iron_armor rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:armor modifier value get random_event:iron_armor 1
execute if score #m_iron_armor rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_iron_armor
execute if score #m_iron_health rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:max_health modifier value get random_event:iron_health 1
execute if score #m_iron_health rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_iron_health
execute if score #m_diamond_damage rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:attack_damage modifier value get random_event:diamond_damage 1
execute if score #m_diamond_damage rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_diamond_damage
execute if score #m_diamond_toughness rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:armor_toughness modifier value get random_event:diamond_toughness 1
execute if score #m_diamond_toughness rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_diamond_toughness
execute if score #m_nether_reach rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:block_interaction_range modifier value get random_event:nether_block_reach 1
execute if score #m_nether_reach rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_nether_reach
execute if score #m_nether_reach rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:entity_interaction_range modifier value get random_event:nether_entity_reach 1
execute if score #m_nether_reach rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_nether_reach
execute if score #m_nether_stride rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:movement_speed modifier value get random_event:nether_stride_speed 1
execute if score #m_nether_stride rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_nether_stride
execute if score #m_nether_stride rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:step_height modifier value get random_event:nether_stride_step 1
execute if score #m_nether_stride rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_nether_stride
execute if score #m_skull_health rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:max_health modifier value get random_event:skull_health 1
execute if score #m_skull_health rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_skull_health
execute if score #m_skull_damage rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:attack_damage modifier value get random_event:skull_damage 1
execute if score #m_skull_damage rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_skull_damage
execute if score #m_bastion_armor rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:armor modifier value get random_event:bastion_armor 1
execute if score #m_bastion_armor rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_bastion_armor
execute if score #m_bastion_momentum rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:movement_speed modifier value get random_event:bastion_speed 1
execute if score #m_bastion_momentum rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_bastion_momentum
execute if score #m_bastion_momentum rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:knockback_resistance modifier value get random_event:bastion_knockback 1
execute if score #m_bastion_momentum rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_bastion_momentum
execute if score #m_eye_health rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:max_health modifier value get random_event:eye_health 1
execute if score #m_eye_health rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_eye_health
execute if score #m_eye_dragon rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:armor_toughness modifier value get random_event:eye_toughness 1
execute if score #m_eye_dragon rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_eye_dragon
execute if score #m_eye_dragon rc.boon matches 1 as @a store success score @s rc.attr_ok run attribute @s minecraft:knockback_resistance modifier value get random_event:eye_knockback 1
execute if score #m_eye_dragon rc.boon matches 1 as @a if score @s rc.attr_ok matches 0 run tag @s remove rc_m_eye_dragon
