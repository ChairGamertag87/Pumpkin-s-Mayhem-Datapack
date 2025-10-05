execute as @a[scores={use_warped_fungus=1..}] at @s run function main:switch

scoreboard players reset @a use_warped_fungus

execute as @e[type=minecraft:item_display,tag=lance_display,nbt={Age:200s}] run kill @s

execute as @e[type=minecraft:armor_stand,tag=brpumpkin] at @e[type=minecraft:armor_stand,tag=brpumpkin] run function game:pumpkin/bridging_pumpkin/place_block