scoreboard players add @s effect_timer 1

# --- Particles every tick (growing inferno) ---
particle minecraft:flame ~ ~1 ~ 2 2 2 0.1 8
particle minecraft:large_smoke ~ ~1.5 ~ 1 1 1 0.03 4

# === Wave 1: Small fire center (ticks 1-5) ===
execute if score @s effect_timer matches 1 run setblock ~ ~1 ~ fire keep
execute if score @s effect_timer matches 2 run setblock ~1 ~1 ~ fire keep
execute if score @s effect_timer matches 2 run setblock ~-1 ~1 ~ fire keep
execute if score @s effect_timer matches 3 run setblock ~ ~1 ~1 fire keep
execute if score @s effect_timer matches 3 run setblock ~ ~1 ~-1 fire keep
execute if score @s effect_timer matches 4 run setblock ~1 ~1 ~1 fire keep
execute if score @s effect_timer matches 4 run setblock ~-1 ~1 ~-1 fire keep
execute if score @s effect_timer matches 5 run setblock ~-1 ~1 ~1 fire keep
execute if score @s effect_timer matches 5 run setblock ~1 ~1 ~-1 fire keep
execute if score @s effect_timer matches 3 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.6 0.8

# === Wave 2: Expanding ring (ticks 7-12) ===
execute if score @s effect_timer matches 7 run setblock ~2 ~1 ~ fire keep
execute if score @s effect_timer matches 7 run setblock ~-2 ~1 ~ fire keep
execute if score @s effect_timer matches 8 run setblock ~ ~1 ~2 fire keep
execute if score @s effect_timer matches 8 run setblock ~ ~1 ~-2 fire keep
execute if score @s effect_timer matches 9 run setblock ~2 ~1 ~1 fire keep
execute if score @s effect_timer matches 9 run setblock ~-2 ~1 ~-1 fire keep
execute if score @s effect_timer matches 10 run setblock ~1 ~1 ~2 fire keep
execute if score @s effect_timer matches 10 run setblock ~-1 ~1 ~-2 fire keep
execute if score @s effect_timer matches 11 run setblock ~2 ~1 ~-1 fire keep
execute if score @s effect_timer matches 11 run setblock ~-2 ~1 ~1 fire keep
execute if score @s effect_timer matches 12 run setblock ~2 ~1 ~2 fire keep
execute if score @s effect_timer matches 12 run setblock ~-2 ~1 ~-2 fire keep
execute if score @s effect_timer matches 8 run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.8 0.6

# === Wave 3: Outer ring (ticks 14-20) ===
execute if score @s effect_timer matches 14 run setblock ~3 ~1 ~ fire keep
execute if score @s effect_timer matches 14 run setblock ~-3 ~1 ~ fire keep
execute if score @s effect_timer matches 15 run setblock ~ ~1 ~3 fire keep
execute if score @s effect_timer matches 15 run setblock ~ ~1 ~-3 fire keep
execute if score @s effect_timer matches 16 run setblock ~3 ~1 ~1 fire keep
execute if score @s effect_timer matches 16 run setblock ~-3 ~1 ~-1 fire keep
execute if score @s effect_timer matches 17 run setblock ~1 ~1 ~3 fire keep
execute if score @s effect_timer matches 17 run setblock ~-1 ~1 ~-3 fire keep
execute if score @s effect_timer matches 18 run setblock ~3 ~1 ~-1 fire keep
execute if score @s effect_timer matches 18 run setblock ~-3 ~1 ~1 fire keep
execute if score @s effect_timer matches 19 run setblock ~3 ~1 ~2 fire keep
execute if score @s effect_timer matches 19 run setblock ~-3 ~1 ~-2 fire keep
execute if score @s effect_timer matches 20 run setblock ~2 ~1 ~3 fire keep
execute if score @s effect_timer matches 20 run setblock ~-2 ~1 ~-3 fire keep
execute if score @s effect_timer matches 15 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 0.5

# === Wave 4: Big outer (ticks 22-28) ===
execute if score @s effect_timer matches 22 run setblock ~4 ~1 ~ fire keep
execute if score @s effect_timer matches 22 run setblock ~-4 ~1 ~ fire keep
execute if score @s effect_timer matches 23 run setblock ~ ~1 ~4 fire keep
execute if score @s effect_timer matches 23 run setblock ~ ~1 ~-4 fire keep
execute if score @s effect_timer matches 24 run setblock ~3 ~1 ~3 fire keep
execute if score @s effect_timer matches 24 run setblock ~-3 ~1 ~-3 fire keep
execute if score @s effect_timer matches 25 run setblock ~4 ~1 ~1 fire keep
execute if score @s effect_timer matches 25 run setblock ~-4 ~1 ~-1 fire keep
execute if score @s effect_timer matches 26 run setblock ~1 ~1 ~4 fire keep
execute if score @s effect_timer matches 26 run setblock ~-1 ~1 ~-4 fire keep
execute if score @s effect_timer matches 27 run setblock ~4 ~1 ~2 fire keep
execute if score @s effect_timer matches 27 run setblock ~-4 ~1 ~-2 fire keep
execute if score @s effect_timer matches 28 run setblock ~3 ~1 ~-3 fire keep
execute if score @s effect_timer matches 28 run setblock ~-3 ~1 ~3 fire keep
execute if score @s effect_timer matches 25 run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.3

# Final explosion of particles
execute if score @s effect_timer matches 28 run particle minecraft:flame ~ ~1 ~ 5 3 5 0.15 60
execute if score @s effect_timer matches 28 run particle minecraft:lava ~ ~0.5 ~ 4 1 4 0.5 20
execute if score @s effect_timer matches 28 run particle minecraft:soul_fire_flame ~ ~1 ~ 4 2 4 0.05 30

# Kill marker after effect ends
execute if score @s effect_timer matches 30.. run kill @s