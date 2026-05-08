scoreboard players add @s effect_timer 1

# --- Particles every tick (blizzard growing) ---
particle minecraft:snowflake ~ ~1 ~ 2 2 2 0.05 8
particle minecraft:cloud ~ ~0.5 ~ 1 0.5 1 0.02 3

# === Wave 1: Center snow (ticks 1-6) ===
execute if score @s effect_timer matches 1 run setblock ~ ~ ~ snow keep
execute if score @s effect_timer matches 2 run setblock ~1 ~ ~ snow keep
execute if score @s effect_timer matches 2 run setblock ~-1 ~ ~ snow keep
execute if score @s effect_timer matches 3 run setblock ~ ~ ~1 snow keep
execute if score @s effect_timer matches 3 run setblock ~ ~ ~-1 snow keep
execute if score @s effect_timer matches 4 run setblock ~1 ~ ~1 snow keep
execute if score @s effect_timer matches 4 run setblock ~-1 ~ ~-1 snow keep
execute if score @s effect_timer matches 5 run setblock ~-1 ~ ~1 snow keep
execute if score @s effect_timer matches 5 run setblock ~1 ~ ~-1 snow keep
execute if score @s effect_timer matches 6 run setblock ~ ~1 ~ snow keep

# === Wave 2: Ice ring (ticks 8-15) ===
execute if score @s effect_timer matches 8 run setblock ~2 ~ ~ ice keep
execute if score @s effect_timer matches 8 run setblock ~-2 ~ ~ ice keep
execute if score @s effect_timer matches 9 run setblock ~ ~ ~2 ice keep
execute if score @s effect_timer matches 9 run setblock ~ ~ ~-2 ice keep
execute if score @s effect_timer matches 10 run setblock ~2 ~ ~1 ice keep
execute if score @s effect_timer matches 10 run setblock ~-2 ~ ~-1 ice keep
execute if score @s effect_timer matches 11 run setblock ~1 ~ ~2 ice keep
execute if score @s effect_timer matches 11 run setblock ~-1 ~ ~-2 ice keep
execute if score @s effect_timer matches 12 run setblock ~2 ~ ~-1 ice keep
execute if score @s effect_timer matches 12 run setblock ~-2 ~ ~1 ice keep
execute if score @s effect_timer matches 13 run setblock ~-1 ~ ~2 ice keep
execute if score @s effect_timer matches 13 run setblock ~1 ~ ~-2 ice keep
execute if score @s effect_timer matches 14 run setblock ~2 ~ ~2 ice keep
execute if score @s effect_timer matches 14 run setblock ~-2 ~ ~-2 ice keep
execute if score @s effect_timer matches 15 run setblock ~2 ~ ~-2 ice keep
execute if score @s effect_timer matches 15 run setblock ~-2 ~ ~2 ice keep
execute if score @s effect_timer matches 10 run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 1.8

# === Wave 3: Packed ice (ticks 17-24) ===
execute if score @s effect_timer matches 17 run setblock ~3 ~ ~ packed_ice keep
execute if score @s effect_timer matches 17 run setblock ~-3 ~ ~ packed_ice keep
execute if score @s effect_timer matches 18 run setblock ~ ~ ~3 packed_ice keep
execute if score @s effect_timer matches 18 run setblock ~ ~ ~-3 packed_ice keep
execute if score @s effect_timer matches 19 run setblock ~3 ~ ~1 packed_ice keep
execute if score @s effect_timer matches 19 run setblock ~-3 ~ ~-1 packed_ice keep
execute if score @s effect_timer matches 20 run setblock ~1 ~ ~3 packed_ice keep
execute if score @s effect_timer matches 20 run setblock ~-1 ~ ~-3 packed_ice keep
execute if score @s effect_timer matches 21 run setblock ~3 ~ ~-1 packed_ice keep
execute if score @s effect_timer matches 21 run setblock ~-3 ~ ~1 packed_ice keep
execute if score @s effect_timer matches 22 run setblock ~-1 ~ ~3 packed_ice keep
execute if score @s effect_timer matches 22 run setblock ~1 ~ ~-3 packed_ice keep
execute if score @s effect_timer matches 23 run setblock ~3 ~ ~2 packed_ice keep
execute if score @s effect_timer matches 23 run setblock ~-3 ~ ~-2 packed_ice keep
execute if score @s effect_timer matches 24 run setblock ~2 ~ ~3 packed_ice keep
execute if score @s effect_timer matches 24 run setblock ~-2 ~ ~-3 packed_ice keep
execute if score @s effect_timer matches 20 run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.4 2.0

# === Wave 4: Blue ice outer rim (ticks 26-35) ===
execute if score @s effect_timer matches 26 run setblock ~4 ~ ~ blue_ice keep
execute if score @s effect_timer matches 26 run setblock ~-4 ~ ~ blue_ice keep
execute if score @s effect_timer matches 27 run setblock ~ ~ ~4 blue_ice keep
execute if score @s effect_timer matches 27 run setblock ~ ~ ~-4 blue_ice keep
execute if score @s effect_timer matches 28 run setblock ~3 ~ ~3 blue_ice keep
execute if score @s effect_timer matches 28 run setblock ~-3 ~ ~-3 blue_ice keep
execute if score @s effect_timer matches 29 run setblock ~3 ~ ~-3 blue_ice keep
execute if score @s effect_timer matches 29 run setblock ~-3 ~ ~3 blue_ice keep
execute if score @s effect_timer matches 30 run setblock ~4 ~ ~1 blue_ice keep
execute if score @s effect_timer matches 30 run setblock ~-4 ~ ~-1 blue_ice keep
execute if score @s effect_timer matches 31 run setblock ~1 ~ ~4 blue_ice keep
execute if score @s effect_timer matches 31 run setblock ~-1 ~ ~-4 blue_ice keep
execute if score @s effect_timer matches 32 run setblock ~4 ~ ~-1 blue_ice keep
execute if score @s effect_timer matches 32 run setblock ~-4 ~ ~1 blue_ice keep
execute if score @s effect_timer matches 33 run setblock ~-1 ~ ~4 blue_ice keep
execute if score @s effect_timer matches 33 run setblock ~1 ~ ~-4 blue_ice keep
execute if score @s effect_timer matches 34 run setblock ~4 ~ ~2 blue_ice keep
execute if score @s effect_timer matches 34 run setblock ~-4 ~ ~-2 blue_ice keep
execute if score @s effect_timer matches 35 run setblock ~2 ~ ~4 blue_ice keep
execute if score @s effect_timer matches 35 run setblock ~-2 ~ ~-4 blue_ice keep
execute if score @s effect_timer matches 30 run playsound minecraft:block.powder_snow.step master @a ~ ~ ~ 1 0.5

# Final burst of particles
execute if score @s effect_timer matches 35 run particle minecraft:snowflake ~ ~1 ~ 5 3 5 0.08 60
execute if score @s effect_timer matches 35 run particle minecraft:item_snowball ~ ~0.5 ~ 4 2 4 0.1 40

# Kill marker after effect ends
execute if score @s effect_timer matches 36.. run kill @s