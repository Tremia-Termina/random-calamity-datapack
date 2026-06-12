scoreboard players set #pending rc.boon 0
scoreboard players set #m_nether_reach rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Nether Reach selected: +1 interaction range.","color":"blue"}]
