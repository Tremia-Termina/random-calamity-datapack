function calamity:internal/enable_triggers
execute as @a[scores={rc_ping=1..}] run function calamity:admin/ping
scoreboard players reset @a rc_ping
execute as @a[scores={rc_start=1..}] run function calamity:admin/start
scoreboard players reset @a rc_start
execute as @a[scores={rc_stop=1..}] run function calamity:admin/stop
scoreboard players reset @a rc_stop
execute as @a[scores={rc_force=1..}] run function calamity:admin/force_event
scoreboard players reset @a rc_force
execute as @a[scores={rc_uninstall=1..}] run function calamity:admin/uninstall

