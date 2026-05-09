#--- Incendiary Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["fire_effect"]}
scoreboard players set @n[type=marker,tag=fire_effect] effect_timer 0
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1
