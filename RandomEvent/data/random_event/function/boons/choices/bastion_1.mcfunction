scoreboard players set #pending rc.boon 0
scoreboard players set #m_bastion_armor rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Ancient Plate selected: +4 armor.","color":"blue"}]
