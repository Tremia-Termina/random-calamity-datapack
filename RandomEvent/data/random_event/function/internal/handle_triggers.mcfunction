function random_event:internal/enable_triggers
execute as @a[scores={ping=1..}] run function random_event:admin/ping
execute as @a[scores={ping=1..}] run scoreboard players reset @s ping
execute as @a[scores={start=1..}] run function random_event:admin/start
execute as @a[scores={start=1..}] run scoreboard players reset @s start
execute as @a[scores={stop=1..}] run function random_event:admin/stop
execute as @a[scores={stop=1..}] run scoreboard players reset @s stop
execute as @a[scores={event=1..}] run function random_event:admin/event
execute as @a[scores={event=1..}] run scoreboard players reset @s event
execute as @a[scores={uninstall=1..}] run function random_event:admin/uninstall
