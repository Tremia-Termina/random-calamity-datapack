scoreboard players set #pending rc.boon 0
scoreboard players set #m_eye_dragon rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Dragon Stance selected: toughness and knockback resistance.","color":"blue"}]
