execute store result score #ambush_count rc.random run random value 6..8
execute at @a run summon minecraft:zombie ~ ~ ~ {Tags:["rc.mob"],PersistenceRequired:0b}
execute at @a run summon minecraft:skeleton ~ ~ ~ {Tags:["rc.mob"],HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.0f,0.0f],PersistenceRequired:0b}
execute at @a run summon minecraft:spider ~ ~ ~ {Tags:["rc.mob"],PersistenceRequired:0b}
execute at @a run summon minecraft:zombie ~ ~ ~ {Tags:["rc.mob"],PersistenceRequired:0b}
execute at @a run summon minecraft:skeleton ~ ~ ~ {Tags:["rc.mob"],HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.0f,0.0f],PersistenceRequired:0b}
execute at @a run summon minecraft:spider ~ ~ ~ {Tags:["rc.mob"],PersistenceRequired:0b}
execute if score #ambush_count rc.random matches 7.. at @a run summon minecraft:skeleton ~ ~ ~ {Tags:["rc.mob"],HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.0f,0.0f],PersistenceRequired:0b}
execute if score #ambush_count rc.random matches 8 at @a run summon minecraft:zombie ~ ~ ~ {Tags:["rc.mob"],PersistenceRequired:0b}
function random_event:internal/spread_mobs
