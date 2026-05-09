#--- Glutton Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["glut_effect"]}
scoreboard players set @n[type=marker,tag=glut_effect] effect_timer 0
playsound minecraft:entity.player.burp master @a ~ ~ ~ 1.5 0.6
