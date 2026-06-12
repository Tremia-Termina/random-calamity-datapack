scoreboard players set #pending rc.boon 0
scoreboard players set #m_nether_stride rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Blazing Stride selected: speed and step height.","color":"blue"}]
