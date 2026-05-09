scoreboard players add @s effect_timer 1

# --- Shield aura particles every tick ---
particle minecraft:end_rod ~ ~1 ~ 2 2 2 0.05 6
particle minecraft:enchant ~ ~0.5 ~ 2 1.5 2 0.3 5
particle minecraft:composter ~ ~1 ~ 1.5 1.5 1.5 0.05 3

# --- Reapply effects every 20 ticks to allied players in zone ---
execute if score @s effect_timer matches 1 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] resistance 4 1
execute if score @s effect_timer matches 1 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] fire_resistance 4 0
execute if score @s effect_timer matches 1 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] resistance 4 1
execute if score @s effect_timer matches 1 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] fire_resistance 4 0

execute if score @s effect_timer matches 20 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] resistance 4 1
execute if score @s effect_timer matches 20 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] fire_resistance 4 0
execute if score @s effect_timer matches 20 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] resistance 4 1
execute if score @s effect_timer matches 20 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] fire_resistance 4 0

execute if score @s effect_timer matches 40 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] resistance 4 1
execute if score @s effect_timer matches 40 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] fire_resistance 4 0
execute if score @s effect_timer matches 40 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] resistance 4 1
execute if score @s effect_timer matches 40 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] fire_resistance 4 0

execute if score @s effect_timer matches 60 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] resistance 4 1
execute if score @s effect_timer matches 60 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] fire_resistance 4 0
execute if score @s effect_timer matches 60 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] resistance 4 1
execute if score @s effect_timer matches 60 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] fire_resistance 4 0

execute if score @s effect_timer matches 80 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] resistance 4 1
execute if score @s effect_timer matches 80 if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] fire_resistance 4 0
execute if score @s effect_timer matches 80 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] resistance 4 1
execute if score @s effect_timer matches 80 if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] fire_resistance 4 0

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.2
execute if score @s effect_timer matches 50 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.8 1.5
execute if score @s effect_timer matches 90 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.6 1

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:end_rod ~ ~1 ~ 5 3 5 0.15 60
execute if score @s effect_timer matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 3 2 3 0.5 40

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
