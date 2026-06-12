scoreboard players set #pending rc.boon 0
scoreboard players set #m_skull_damage rc.boon 1
function random_event:boons/apply_active_modifiers
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Battle Focus selected: +2 attack damage.","color":"blue"}]
