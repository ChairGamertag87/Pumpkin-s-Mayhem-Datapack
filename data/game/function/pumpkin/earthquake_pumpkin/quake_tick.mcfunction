scoreboard players add @s effect_timer 1

# --- Ground shake particles every tick ---
particle minecraft:cloud ~ ~0.3 ~ 4 0.5 4 0.05 8
particle minecraft:large_smoke ~ ~0.2 ~ 3 0.3 3 0.02 5
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 2 0.5 2 0.01 3

# --- Launch players up every 40 ticks ---
execute if score @s effect_timer matches 1 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 2 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 3 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 4 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 5 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 6 as @a[distance=..5] at @s run tp @s ~ ~0.3 ~

execute if score @s effect_timer matches 40 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 41 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 42 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 43 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 44 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 45 as @a[distance=..5] at @s run tp @s ~ ~0.3 ~

execute if score @s effect_timer matches 80 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 81 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 82 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 83 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 84 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 85 as @a[distance=..5] at @s run tp @s ~ ~0.3 ~

execute if score @s effect_timer matches 120 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 121 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 122 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 123 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 124 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 125 as @a[distance=..5] at @s run tp @s ~ ~0.3 ~

execute if score @s effect_timer matches 160 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 161 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 162 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 163 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 164 as @a[distance=..5] at @s run tp @s ~ ~0.5 ~
execute if score @s effect_timer matches 165 as @a[distance=..5] at @s run tp @s ~ ~0.3 ~

# --- Slowness to simulate stumbling ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..5] slowness 3 1
execute if score @s effect_timer matches 40 run effect give @a[distance=..5] slowness 3 1
execute if score @s effect_timer matches 80 run effect give @a[distance=..5] slowness 3 1
execute if score @s effect_timer matches 120 run effect give @a[distance=..5] slowness 3 1
execute if score @s effect_timer matches 160 run effect give @a[distance=..5] slowness 3 1

# --- Random block disruption via spreadplayers ---
summon marker ~ ~ ~ {Tags:["quake_spread"]}
execute if score @s effect_timer matches 1..100 run spreadplayers ~ ~ 0 3 false @n[type=marker,tag=quake_spread]
execute if score @s effect_timer matches 101..200 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=quake_spread]
execute at @n[type=marker,tag=quake_spread] run setblock ~ ~-1 ~ cobblestone
execute at @n[type=marker,tag=quake_spread] run setblock ~ ~ ~ air
kill @e[type=marker,tag=quake_spread]

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1.5 0.5
execute if score @s effect_timer matches 40 run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.6
execute if score @s effect_timer matches 80 run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1.2 0.7
execute if score @s effect_timer matches 120 run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 0.8 0.5
execute if score @s effect_timer matches 160 run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1 0.8

# --- Final burst ---
execute if score @s effect_timer matches 200 run particle minecraft:explosion ~ ~1 ~ 6 2 6 0.1 15
execute if score @s effect_timer matches 200 run particle minecraft:large_smoke ~ ~1 ~ 5 2 5 0.05 40
execute if score @s effect_timer matches 200 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 0.3

# Kill marker
execute if score @s effect_timer matches 201.. run kill @s
