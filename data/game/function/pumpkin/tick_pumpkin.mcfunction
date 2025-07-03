execute as @a[scores={use_warped_fungus=1..}] at @s run function game:pumpkin/switch

scoreboard players reset @a use_warped_fungus

execute as @e[type=minecraft:item_display,tag=lance_display,nbt={Age:200s}] run kill @s