execute as @a[scores={use_warped_fungus=1..}] at @s run function main:switch

scoreboard players reset @a use_warped_fungus

execute as @e[type=minecraft:armor_stand,tag=brpumpkin] at @e[type=minecraft:armor_stand,tag=brpumpkin] run function game:pumpkin/bridging_pumpkin/place_block

execute as @e[type=marker,tag=frost_effect] at @s run function game:pumpkin/frost_pumpkin/frost_tick
execute as @e[type=marker,tag=fire_effect] at @s run function game:pumpkin/incendiary_pumpkin/fire_tick
execute as @e[type=marker,tag=dark_effect] at @s run function game:pumpkin/darkness_pumpkin/dark_tick
execute as @e[type=marker,tag=lev_effect] at @s run function game:pumpkin/levitation_pumpkin/lev_tick
execute as @e[type=marker,tag=stink_effect] at @s run function game:pumpkin/stinky_pumpkin/stink_tick
execute as @e[type=marker,tag=heal_effect] at @s run function game:pumpkin/healing_pumpkin/heal_tick
execute as @e[type=marker,tag=quake_effect] at @s run function game:pumpkin/earthquake_pumpkin/quake_tick
execute as @e[type=marker,tag=prot_effect] at @s run function game:pumpkin/protection_pumpkin/prot_tick
execute as @e[type=marker,tag=glut_effect] at @s run function game:pumpkin/glutton_pumpkin/glut_tick
execute as @e[type=marker,tag=warden_effect] at @s run function game:pumpkin/warden_pumpkin/warden_tick