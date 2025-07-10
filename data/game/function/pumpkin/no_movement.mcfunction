tag @s add stopped_moving
tag @s remove temp_snowball_pumpkin

say Stop

execute if entity @s[tag=epumpkin] run summon tnt ~ ~ ~
kill @s
kill @e[type=item_display, tag=pumpkin, distance=..1]