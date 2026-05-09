#--- Healing Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["heal_effect"]}
scoreboard players set @n[type=marker,tag=heal_effect] effect_timer 0
execute if entity @s[tag=red_team] run tag @n[type=marker,tag=heal_effect] add red_team
execute if entity @s[tag=blue_team] run tag @n[type=marker,tag=heal_effect] add blue_team
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 2
