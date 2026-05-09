#--- Stinky Pumpkin Impact ---
summon marker ~ ~ ~ {Tags:["stink_effect"]}
scoreboard players set @n[type=marker,tag=stink_effect] effect_timer 0
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.5
