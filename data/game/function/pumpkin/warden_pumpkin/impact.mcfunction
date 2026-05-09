#--- Warden Pumpkin Impact ---
summon warden ~ ~ ~ {Tags:["pumpkin_warden"],Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:135L}}}}
summon marker ~ ~ ~ {Tags:["warden_effect"]}
scoreboard players set @n[type=marker,tag=warden_effect] effect_timer 0
playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 2 0.5
