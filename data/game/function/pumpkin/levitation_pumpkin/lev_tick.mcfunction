scoreboard players add @s effect_timer 1

# --- Floating particles every tick ---
particle minecraft:end_rod ~ ~1 ~ 2 2 2 0.1 8
particle minecraft:enchant ~ ~1 ~ 2 2 2 0.5 6
particle minecraft:portal ~ ~0.5 ~ 1 1 1 0.3 5

# --- Reapply effect every 20 ticks to players in zone ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..5] levitation 3 1
execute if score @s effect_timer matches 20 run effect give @a[distance=..5] levitation 3 1
execute if score @s effect_timer matches 40 run effect give @a[distance=..5] levitation 3 1
execute if score @s effect_timer matches 60 run effect give @a[distance=..5] levitation 3 1
execute if score @s effect_timer matches 80 run effect give @a[distance=..5] levitation 3 1

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
execute if score @s effect_timer matches 1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
execute if score @s effect_timer matches 50 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 0.8 1.2
execute if score @s effect_timer matches 90 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 1.5

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:end_rod ~ ~1 ~ 5 3 5 0.15 60
execute if score @s effect_timer matches 100 run particle minecraft:enchant ~ ~1 ~ 4 2 4 0.8 50

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
