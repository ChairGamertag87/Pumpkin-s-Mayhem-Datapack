#--- Frost Pumpkin Impact ---
effect give @a[distance=..5] slowness 5 2
effect give @a[distance=..5] mining_fatigue 5 1
summon marker ~ ~ ~ {Tags:["frost_effect"]}
scoreboard players set @n[type=marker,tag=frost_effect] effect_timer 0
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
