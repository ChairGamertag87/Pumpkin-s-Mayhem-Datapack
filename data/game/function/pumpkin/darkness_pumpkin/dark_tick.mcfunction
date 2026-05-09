scoreboard players add @s effect_timer 1

# --- Dark cloud particles every tick ---
particle minecraft:sculk_soul ~ ~0.5 ~ 2 1 2 0.02 6
particle minecraft:large_smoke ~ ~0.5 ~ 3 1.5 3 0.01 8
particle minecraft:smoke ~ ~1 ~ 2 2 2 0.03 5
particle minecraft:squid_ink ~ ~0.5 ~ 2 1 2 0.05 4

# --- Reapply effect every 20 ticks to players in zone ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..5] darkness 5 0
execute if score @s effect_timer matches 20 run effect give @a[distance=..5] darkness 5 0
execute if score @s effect_timer matches 40 run effect give @a[distance=..5] darkness 5 0
execute if score @s effect_timer matches 60 run effect give @a[distance=..5] darkness 5 0
execute if score @s effect_timer matches 80 run effect give @a[distance=..5] darkness 5 0

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.warden.ambient master @a ~ ~ ~ 1 0.5
execute if score @s effect_timer matches 1 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 1
execute if score @s effect_timer matches 40 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.2 0.8
execute if score @s effect_timer matches 80 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1 0.6

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:squid_ink ~ ~1 ~ 5 3 5 0.1 60
execute if score @s effect_timer matches 100 run particle minecraft:sculk_soul ~ ~1 ~ 4 2 4 0.05 40

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
