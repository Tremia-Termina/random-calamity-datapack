function calamity:internal/enable_triggers
execute as @a[scores={ping=1..}] run function calamity:admin/ping
scoreboard players reset @a ping
execute as @a[scores={start=1..}] run function calamity:admin/start
scoreboard players reset @a start
execute as @a[scores={stop=1..}] run function calamity:admin/stop
scoreboard players reset @a stop
execute as @a[scores={force_event=1..}] run function calamity:admin/force_event
scoreboard players reset @a force_event
execute as @a[scores={uninstall=1..}] run function calamity:admin/uninstall
execute as @a[scores={rc=1}] run function calamity:admin/ping
execute as @a[scores={rc=2}] run function calamity:admin/start
execute as @a[scores={rc=3}] run function calamity:admin/stop
execute as @a[scores={rc=4}] run function calamity:admin/force_event
execute as @a[scores={rc=1..8}] run scoreboard players reset @s rc
execute as @a[scores={rc=9}] run function calamity:admin/uninstall
execute as @a[scores={rc_ping=1..}] run function calamity:admin/ping
scoreboard players reset @a rc_ping
execute as @a[scores={rc_start=1..}] run function calamity:admin/start
scoreboard players reset @a rc_start
execute as @a[scores={rc_stop=1..}] run function calamity:admin/stop
scoreboard players reset @a rc_stop
execute as @a[scores={rc_force=1..}] run function calamity:admin/force_event
scoreboard players reset @a rc_force
execute as @a[scores={rc_uninstall=1..}] run function calamity:admin/uninstall
