scoreboard players set #pending rc.boon 0
scoreboard players set #m_diamond_toughness rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Diamond Core selected: +2 armor toughness.","color":"blue"}]
