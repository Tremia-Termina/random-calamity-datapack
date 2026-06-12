scoreboard players set #pending rc.boon 0
function random_event:events/enchanted_manual
give @a minecraft:lapis_lazuli 16
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Enchant Prep selected.","color":"gold"}]
