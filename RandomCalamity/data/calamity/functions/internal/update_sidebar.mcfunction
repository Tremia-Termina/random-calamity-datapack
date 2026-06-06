scoreboard players operation State rc.sidebar = #enabled rc.enabled
scoreboard players operation Event rc.sidebar = #event rc.event
scoreboard players operation NextSec rc.sidebar = #cooldown rc.cooldown
scoreboard players operation NextSec rc.sidebar -= #timer rc.timer
scoreboard players operation NextSec rc.sidebar /= #tick20 rc.sidebar
execute if score #enabled rc.enabled matches 0 run scoreboard players set NextSec rc.sidebar 0

