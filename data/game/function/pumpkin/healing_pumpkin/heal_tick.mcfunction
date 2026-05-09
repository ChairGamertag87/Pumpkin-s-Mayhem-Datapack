scoreboard players add @s effect_timer 1

# --- Healing aura particles every tick ---
particle minecraft:heart ~ ~1 ~ 2 2 2 0.01 3
particle minecraft:end_rod ~ ~1 ~ 2 1.5 2 0.1 5
particle minecraft:enchant ~ ~0.5 ~ 1.5 1 1.5 0.5 4
particle minecraft:composter ~ ~0.5 ~ 1 1 1 0.1 3

# --- Reapply effect every 20 ticks to allied players in zone ---
execute if score @s effect_timer matches 1 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 1 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if score @s effect_timer matches 1 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 1 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0

execute if score @s effect_timer matches 20 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 20 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if score @s effect_timer matches 20 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 20 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0

execute if score @s effect_timer matches 40 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 40 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if score @s effect_timer matches 40 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 40 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0

execute if score @s effect_timer matches 60 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 60 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if score @s effect_timer matches 60 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 60 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0

execute if score @s effect_timer matches 80 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 80 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if score @s effect_timer matches 80 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if score @s effect_timer matches 80 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1
execute if score @s effect_timer matches 1 run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 2
execute if score @s effect_timer matches 50 run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.8 1.2
execute if score @s effect_timer matches 90 run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.6 1.5

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:heart ~ ~1 ~ 5 3 5 0.02 30
execute if score @s effect_timer matches 100 run particle minecraft:end_rod ~ ~1 ~ 4 2 4 0.2 50

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
