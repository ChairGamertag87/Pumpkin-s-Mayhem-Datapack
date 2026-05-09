#--- Earthquake Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["quake_effect"]}
scoreboard players set @n[type=marker,tag=quake_effect] effect_timer 0
playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1.5 0.5
