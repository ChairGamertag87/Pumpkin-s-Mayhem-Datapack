scoreboard players add @s effect_timer 1

# --- Inferno particles every tick ---
particle minecraft:flame ~ ~1 ~ 2 2 2 0.1 8
particle minecraft:large_smoke ~ ~1.5 ~ 1.5 1 1.5 0.03 5

# ============================================
# RANDOM FIRE 1
# ============================================
summon marker ~ ~ ~ {Tags:["fire_spread"]}

# Radius grows over time
execute if score @s effect_timer matches 1..8 run spreadplayers ~ ~ 0 2 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 9..18 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 19..30 run spreadplayers ~ ~ 0 6 false @n[type=marker,tag=fire_spread]

# Place fire on surface
execute at @n[type=marker,tag=fire_spread] run setblock ~ ~ ~ fire keep
execute at @n[type=marker,tag=fire_spread] run setblock ~ ~1 ~ fire keep

kill @e[type=marker,tag=fire_spread]

# ============================================
# RANDOM FIRE 2
# ============================================
summon marker ~ ~ ~ {Tags:["fire_spread"]}

execute if score @s effect_timer matches 1..8 run spreadplayers ~ ~ 0 2 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 9..18 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 19..30 run spreadplayers ~ ~ 0 6 false @n[type=marker,tag=fire_spread]

execute at @n[type=marker,tag=fire_spread] run setblock ~ ~ ~ fire keep
execute at @n[type=marker,tag=fire_spread] run setblock ~ ~1 ~ fire keep

kill @e[type=marker,tag=fire_spread]

# ============================================
# RANDOM FIRE 3 (extra from tick 8+)
# ============================================
execute if score @s effect_timer matches 8..30 run summon marker ~ ~ ~ {Tags:["fire_spread"]}

execute if score @s effect_timer matches 8..15 run spreadplayers ~ ~ 0 3 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 16..30 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=fire_spread]

execute if score @s effect_timer matches 8..30 at @n[type=marker,tag=fire_spread] run setblock ~ ~ ~ fire keep
execute if score @s effect_timer matches 8..30 at @n[type=marker,tag=fire_spread] run setblock ~ ~1 ~ fire keep

execute if score @s effect_timer matches 8..30 run kill @e[type=marker,tag=fire_spread]

# ============================================
# RANDOM LAVA POCKETS (rare, from tick 15+)
# ============================================
execute if score @s effect_timer matches 15 run summon marker ~ ~ ~ {Tags:["fire_spread"]}
execute if score @s effect_timer matches 15 run spreadplayers ~ ~ 0 3 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 15 at @n[type=marker,tag=fire_spread] run setblock ~ ~-1 ~ lava
execute if score @s effect_timer matches 15 run kill @e[type=marker,tag=fire_spread]

execute if score @s effect_timer matches 22 run summon marker ~ ~ ~ {Tags:["fire_spread"]}
execute if score @s effect_timer matches 22 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=fire_spread]
execute if score @s effect_timer matches 22 at @n[type=marker,tag=fire_spread] run setblock ~ ~-1 ~ lava
execute if score @s effect_timer matches 22 run kill @e[type=marker,tag=fire_spread]

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.8 0.8
execute if score @s effect_timer matches 10 run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.6
execute if score @s effect_timer matches 20 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.6 0.5
execute if score @s effect_timer matches 28 run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.3

# --- Final explosion ---
execute if score @s effect_timer matches 30 run particle minecraft:flame ~ ~1 ~ 6 3 6 0.15 80
execute if score @s effect_timer matches 30 run particle minecraft:lava ~ ~0.5 ~ 5 1 5 0.5 25
execute if score @s effect_timer matches 30 run particle minecraft:soul_fire_flame ~ ~1 ~ 4 2 4 0.05 30

# Kill marker
execute if score @s effect_timer matches 31.. run kill @s