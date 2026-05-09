#--- Levitation Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["lev_effect"]}
scoreboard players set @n[type=marker,tag=lev_effect] effect_timer 0
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
