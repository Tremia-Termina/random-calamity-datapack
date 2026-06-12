scoreboard players set #pending rc.boon 0
function random_event:events/enchanted_manual
experience add @a 16 levels
give @a minecraft:lapis_lazuli 24
tellraw @a [{"text":"[Milestone Boon] ","color":"aqua"},{"text":"Enchant Rush selected.","color":"gold"}]
