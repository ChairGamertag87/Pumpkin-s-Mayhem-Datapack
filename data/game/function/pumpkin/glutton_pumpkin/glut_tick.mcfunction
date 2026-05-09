scoreboard players add @s effect_timer 1

# --- Gross cloud particles every tick ---
particle minecraft:item_slime ~ ~0.5 ~ 3 1 3 0.05 8
particle minecraft:large_smoke ~ ~1 ~ 2 1.5 2 0.02 5
particle minecraft:composter ~ ~0.5 ~ 2 1 2 0.03 4

# --- Reapply hunger + weakness every 20 ticks ---
execute if score @s effect_timer matches 1 run effect give @a[distance=..4] hunger 5 2
execute if score @s effect_timer matches 1 run effect give @a[distance=..4] weakness 5 0
execute if score @s effect_timer matches 20 run effect give @a[distance=..4] hunger 5 2
execute if score @s effect_timer matches 20 run effect give @a[distance=..4] weakness 5 0
execute if score @s effect_timer matches 40 run effect give @a[distance=..4] hunger 5 2
execute if score @s effect_timer matches 40 run effect give @a[distance=..4] weakness 5 0
execute if score @s effect_timer matches 60 run effect give @a[distance=..4] hunger 5 2
execute if score @s effect_timer matches 60 run effect give @a[distance=..4] weakness 5 0
execute if score @s effect_timer matches 80 run effect give @a[distance=..4] hunger 5 2
execute if score @s effect_timer matches 80 run effect give @a[distance=..4] weakness 5 0

# --- Sounds ---
execute if score @s effect_timer matches 1 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1.5 0.6
execute if score @s effect_timer matches 30 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.5
execute if score @s effect_timer matches 60 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 0.8 0.7
execute if score @s effect_timer matches 90 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 0.6 0.4

# --- Final burst ---
execute if score @s effect_timer matches 100 run particle minecraft:item_slime ~ ~1 ~ 5 3 5 0.1 60
execute if score @s effect_timer matches 100 run particle minecraft:large_smoke ~ ~1 ~ 4 2 4 0.05 40

# Kill marker
execute if score @s effect_timer matches 101.. run kill @s
