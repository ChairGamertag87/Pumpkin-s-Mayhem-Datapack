#--- Healing Pumpkin Impact ---
execute if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if entity @s[tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if entity @s[tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0
particle minecraft:heart ~ ~1 ~ 2 2 2 0.01 20
particle minecraft:end_rod ~ ~1 ~ 2 1.5 2 0.1 40
particle minecraft:enchant ~ ~0.5 ~ 1.5 1 1.5 0.5 30
particle minecraft:composter ~ ~0.5 ~ 1 1 1 0.1 20
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 2
