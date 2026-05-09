#--- Zombie Pumpkin Impact ---
summon zombie ~2 ~ ~1 {Tags:["pumpkin_zombie"]}
summon zombie ~-2 ~ ~-1 {Tags:["pumpkin_zombie"]}
summon zombie ~1 ~ ~-2 {Tags:["pumpkin_zombie"]}
summon zombie ~-1 ~ ~2 {Tags:["pumpkin_zombie"]}
summon zombie ~ ~ ~3 {Tags:["pumpkin_zombie"]}
summon zombie ~ ~ ~-3 {Tags:["pumpkin_zombie"]}
particle minecraft:soul ~ ~0.5 ~ 3 1 3 0.02 30
particle minecraft:large_smoke ~ ~1 ~ 2 1.5 2 0.03 20
particle minecraft:smoke ~ ~0.5 ~ 3 1 3 0.02 15
playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 0.8
