execute as @a run attribute @s minecraft:max_health modifier remove random_event:upgrade_health
execute as @a run attribute @s minecraft:movement_speed modifier remove random_event:upgrade_speed
execute as @a run attribute @s minecraft:armor modifier remove random_event:iron_armor
execute as @a run attribute @s minecraft:max_health modifier remove random_event:iron_health
execute as @a run attribute @s minecraft:attack_damage modifier remove random_event:diamond_damage
execute as @a run attribute @s minecraft:armor_toughness modifier remove random_event:diamond_toughness
execute as @a run attribute @s minecraft:block_interaction_range modifier remove random_event:nether_block_reach
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove random_event:nether_entity_reach
execute as @a run attribute @s minecraft:movement_speed modifier remove random_event:nether_stride_speed
execute as @a run attribute @s minecraft:step_height modifier remove random_event:nether_stride_step
execute as @a run attribute @s minecraft:max_health modifier remove random_event:skull_health
execute as @a run attribute @s minecraft:attack_damage modifier remove random_event:skull_damage
execute as @a run attribute @s minecraft:armor modifier remove random_event:bastion_armor
execute as @a run attribute @s minecraft:movement_speed modifier remove random_event:bastion_speed
execute as @a run attribute @s minecraft:knockback_resistance modifier remove random_event:bastion_knockback
execute as @a run attribute @s minecraft:max_health modifier remove random_event:eye_health
execute as @a run attribute @s minecraft:armor_toughness modifier remove random_event:eye_toughness
execute as @a run attribute @s minecraft:knockback_resistance modifier remove random_event:eye_knockback
tag @a remove rc_m_upgrade_health
tag @a remove rc_m_upgrade_speed
tag @a remove rc_m_iron_armor
tag @a remove rc_m_iron_health
tag @a remove rc_m_diamond_damage
tag @a remove rc_m_diamond_toughness
tag @a remove rc_m_nether_reach
tag @a remove rc_m_nether_stride
tag @a remove rc_m_skull_health
tag @a remove rc_m_skull_damage
tag @a remove rc_m_bastion_armor
tag @a remove rc_m_bastion_momentum
tag @a remove rc_m_eye_health
tag @a remove rc_m_eye_dragon
scoreboard players set #m_upgrade_health rc.boon 0
scoreboard players set #m_upgrade_speed rc.boon 0
scoreboard players set #m_iron_armor rc.boon 0
scoreboard players set #m_iron_health rc.boon 0
scoreboard players set #m_diamond_damage rc.boon 0
scoreboard players set #m_diamond_toughness rc.boon 0
scoreboard players set #m_nether_reach rc.boon 0
scoreboard players set #m_nether_stride rc.boon 0
scoreboard players set #m_skull_health rc.boon 0
scoreboard players set #m_skull_damage rc.boon 0
scoreboard players set #m_bastion_armor rc.boon 0
scoreboard players set #m_bastion_momentum rc.boon 0
scoreboard players set #m_eye_health rc.boon 0
scoreboard players set #m_eye_dragon rc.boon 0

