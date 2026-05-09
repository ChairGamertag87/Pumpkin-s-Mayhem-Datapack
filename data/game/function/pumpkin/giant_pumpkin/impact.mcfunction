#--- Giant Pumpkin Impact ---
summon tnt ~ ~ ~ {fuse:10}
summon tnt ~3 ~ ~2 {fuse:15}
summon tnt ~-3 ~ ~-2 {fuse:20}
summon tnt ~2 ~ ~-3 {fuse:18}
summon tnt ~-2 ~ ~3 {fuse:12}
particle minecraft:explosion ~ ~1 ~ 3 2 3 0.1 15
particle minecraft:large_smoke ~ ~1 ~ 4 2 4 0.05 50
particle minecraft:flame ~ ~0.5 ~ 3 1 3 0.1 40
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.3
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.5 0.5
