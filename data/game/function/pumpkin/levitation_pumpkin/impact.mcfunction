#--- Levitation Pumpkin Impact ---
effect give @a[distance=..5] levitation 3 1
particle minecraft:end_rod ~ ~1 ~ 2 2 2 0.1 60
particle minecraft:enchant ~ ~1 ~ 2 2 2 0.5 50
particle minecraft:portal ~ ~0.5 ~ 1 1 1 0.3 40
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
