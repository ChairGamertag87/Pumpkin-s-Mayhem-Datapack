#--- Protection Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["prot_effect"]}
scoreboard players set @n[type=marker,tag=prot_effect] effect_timer 0
execute if entity @s[tag=red_team] run tag @n[type=marker,tag=prot_effect] add red_team
execute if entity @s[tag=blue_team] run tag @n[type=marker,tag=prot_effect] add blue_team
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.2
