scoreboard players add @s effect_timer 1

# --- Blizzard particles every tick ---
particle minecraft:snowflake ~ ~1 ~ 3 2 3 0.05 10
particle minecraft:cloud ~ ~0.5 ~ 2 1 2 0.02 4

# ============================================
# RANDOM BLOCK 1
# ============================================
summon marker ~ ~ ~ {Tags:["frost_spread"]}

# Radius grows over time
execute if score @s effect_timer matches 1..12 run spreadplayers ~ ~ 0 2 false @n[type=marker,tag=frost_spread]
execute if score @s effect_timer matches 13..25 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=frost_spread]
execute if score @s effect_timer matches 26..40 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=frost_spread]

# Snow on top + replace ground with ice variants
execute if score @s effect_timer matches 1..12 at @n[type=marker,tag=frost_spread] run setblock ~ ~ ~ snow
execute if score @s effect_timer matches 1..12 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ snow_block
execute if score @s effect_timer matches 13..25 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ ice
execute if score @s effect_timer matches 13..25 at @n[type=marker,tag=frost_spread] run setblock ~ ~ ~ snow
execute if score @s effect_timer matches 26..35 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ packed_ice
execute if score @s effect_timer matches 36..40 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ blue_ice

kill @e[type=marker,tag=frost_spread]

# ============================================
# RANDOM BLOCK 2
# ============================================
summon marker ~ ~ ~ {Tags:["frost_spread"]}

execute if score @s effect_timer matches 1..12 run spreadplayers ~ ~ 0 2 false @n[type=marker,tag=frost_spread]
execute if score @s effect_timer matches 13..25 run spreadplayers ~ ~ 0 4 false @n[type=marker,tag=frost_spread]
execute if score @s effect_timer matches 26..40 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=frost_spread]

execute if score @s effect_timer matches 1..12 at @n[type=marker,tag=frost_spread] run setblock ~ ~ ~ snow
execute if score @s effect_timer matches 13..25 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ ice
execute if score @s effect_timer matches 26..35 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ packed_ice
execute if score @s effect_timer matches 36..40 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ blue_ice

kill @e[type=marker,tag=frost_spread]

# ============================================
# RANDOM BLOCK 3 (extra density in later ticks)
# ============================================
execute if score @s effect_timer matches 10..40 run summon marker ~ ~ ~ {Tags:["frost_spread"]}

execute if score @s effect_timer matches 10..20 run spreadplayers ~ ~ 0 3 false @n[type=marker,tag=frost_spread]
execute if score @s effect_timer matches 21..40 run spreadplayers ~ ~ 0 5 false @n[type=marker,tag=frost_spread]

execute if score @s effect_timer matches 10..20 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ ice
execute if score @s effect_timer matches 21..30 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ packed_ice
execute if score @s effect_timer matches 31..40 at @n[type=marker,tag=frost_spread] run setblock ~ ~-1 ~ blue_ice

execute if score @s effect_timer matches 10..40 run kill @e[type=marker,tag=frost_spread]

# --- Sounds at key moments ---
execute if score @s effect_timer matches 1 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
execute if score @s effect_timer matches 12 run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.8 1.8
execute if score @s effect_timer matches 25 run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 2.0
execute if score @s effect_timer matches 35 run playsound minecraft:block.powder_snow.step master @a ~ ~ ~ 1 0.5

# --- Final burst ---
execute if score @s effect_timer matches 40 run particle minecraft:snowflake ~ ~1 ~ 6 3 6 0.1 80
execute if score @s effect_timer matches 40 run particle minecraft:item_snowball ~ ~0.5 ~ 5 2 5 0.1 50

# Kill marker
execute if score @s effect_timer matches 41.. run kill @s