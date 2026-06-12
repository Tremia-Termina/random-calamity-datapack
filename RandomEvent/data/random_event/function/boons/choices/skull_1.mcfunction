scoreboard players set #pending rc.boon 0
scoreboard players set #m_skull_health rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Wither Survivor selected: +4 max health.","color":"blue"}]
