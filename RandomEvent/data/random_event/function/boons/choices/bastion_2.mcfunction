scoreboard players set #pending rc.boon 0
scoreboard players set #m_bastion_momentum rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Bastion Momentum selected: speed and knockback resistance.","color":"blue"}]
