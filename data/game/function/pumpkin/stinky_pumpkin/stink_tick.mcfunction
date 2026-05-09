scoreboard players add @s effect_timer 1

# --- Stink cloud particles every tick ---
particle minecraft:glow_squid_ink ~ ~1 ~ 3 2 3 0.05 12
particle minecraft:glow_squid_ink ~ ~0.5 ~ 4 1 4 0.02 10
particle minecraft:large_smoke ~ ~1 ~ 2 1.5 2 0.03 6
particle minecraft:smoke ~ ~0.5 ~ 3 1 3 0.02 5

# --- Reapply effect every 20 ticks to players in zone ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..4] poison 5 0
execute if score @s effect_timer matches 1 run effect give @a[distance=..4] nausea 5 0
execute if score @s effect_timer matches 20 run effect give @a[distance=..4] poison 5 0
execute if score @s effect_timer matches 20 run effect give @a[distance=..4] nausea 5 0
execute if score @s effect_timer matches 40 run effect give @a[distance=..4] poison 5 0
execute if score @s effect_timer matches 40 run effect give @a[distance=..4] nausea 5 0
execute if score @s effect_timer matches 60 run effect give @a[distance=..4] poison 5 0
execute if score @s effect_timer matches 60 run effect give @a[distance=..4] nausea 5 0
execute if score @s effect_timer matches 80 run effect give @a[distance=..4] poison 5 0
execute if score @s effect_timer matches 80 run effect give @a[distance=..4] nausea 5 0

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.5
execute if score @s effect_timer matches 1 run playsound minecraft:entity.glow_squid.squirt master @a ~ ~ ~ 1 0.8
execute if score @s effect_timer matches 50 run playsound minecraft:entity.glow_squid.squirt master @a ~ ~ ~ 0.8 0.6
execute if score @s effect_timer matches 90 run playsound minecraft:entity.glow_squid.squirt master @a ~ ~ ~ 0.6 0.4

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:glow_squid_ink ~ ~1 ~ 6 3 6 0.1 80
execute if score @s effect_timer matches 100 run particle minecraft:large_smoke ~ ~1 ~ 5 2 5 0.05 50

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
