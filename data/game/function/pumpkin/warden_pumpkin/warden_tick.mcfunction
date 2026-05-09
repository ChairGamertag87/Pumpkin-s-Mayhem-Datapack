scoreboard players add @s effect_timer 1

# --- Sculk particles every tick ---
particle minecraft:sculk_soul ~ ~0.5 ~ 3 1 3 0.03 6
particle minecraft:sculk_charge_pop ~ ~0.3 ~ 2 0.5 2 0.02 4

# --- Darkness to players in zone ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..8] darkness 8 0
execute if score @s effect_timer matches 40 run effect give @a[distance=..8] darkness 8 0
execute if score @s effect_timer matches 80 run effect give @a[distance=..8] darkness 8 0
execute if score @s effect_timer matches 120 run effect give @a[distance=..8] darkness 8 0

# --- Spread sculk blocks progressively ---
summon marker ~ ~ ~ {Tags:["sculk_spread"]}
execute if score @s effect_timer matches 1..60 run spreadplayers ~ ~ 0 3 false @n[type=marker,tag=sculk_spread]
execute if score @s effect_timer matches 61..120 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=sculk_spread]
execute if score @s effect_timer matches 121..160 run spreadplayers ~ ~ 0 6 false @n[type=marker,tag=sculk_spread]

execute at @n[type=marker,tag=sculk_spread] run setblock ~ ~-1 ~ sculk
execute if score @s effect_timer matches 20..160 at @n[type=marker,tag=sculk_spread] run setblock ~ ~ ~ sculk_vein

kill @e[type=marker,tag=sculk_spread]

# --- Extra sculk block from tick 40+ ---
execute if score @s effect_timer matches 40..160 run summon marker ~ ~ ~ {Tags:["sculk_spread"]}
execute if score @s effect_timer matches 40..80 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=sculk_spread]
execute if score @s effect_timer matches 81..160 run spreadplayers ~ ~ 0 6 false @n[type=marker,tag=sculk_spread]
execute if score @s effect_timer matches 40..160 at @n[type=marker,tag=sculk_spread] run setblock ~ ~-1 ~ sculk
execute if score @s effect_timer matches 40..160 run kill @e[type=marker,tag=sculk_spread]

# --- Warden digs back down after 8 seconds ---
execute if score @s effect_timer matches 160 as @e[type=warden,tag=pumpkin_warden,distance=..10] run data merge entity @s {Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:0L}}}}

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1.5 0.6
execute if score @s effect_timer matches 40 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 1
execute if score @s effect_timer matches 80 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.2 0.8
execute if score @s effect_timer matches 120 run playsound minecraft:entity.warden.ambient master @a ~ ~ ~ 1 0.5
execute if score @s effect_timer matches 160 run playsound minecraft:entity.warden.dig master @a ~ ~ ~ 1.5 0.6

# --- Final burst ---
execute if score @s effect_timer matches 200 run particle minecraft:sculk_soul ~ ~1 ~ 6 3 6 0.05 60
execute if score @s effect_timer matches 200 run particle minecraft:sonic_boom ~ ~1 ~ 3 1 3 0.1 10
execute if score @s effect_timer matches 200 run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.5 0.5

# --- Kill warden if still alive and kill marker ---
execute if score @s effect_timer matches 200 run kill @e[type=warden,tag=pumpkin_warden,distance=..10]
execute if score @s effect_timer matches 201.. run kill @s
