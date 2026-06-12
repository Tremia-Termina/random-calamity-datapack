scoreboard players set #pending rc.boon 0
scoreboard players set #m_upgrade_speed rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Nimble Hands selected: +5% movement speed.","color":"blue"}]
