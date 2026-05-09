#--- Darkness Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["dark_effect"]}
scoreboard players set @n[type=marker,tag=dark_effect] effect_timer 0
playsound minecraft:entity.warden.ambient master @a ~ ~ ~ 1 0.5
