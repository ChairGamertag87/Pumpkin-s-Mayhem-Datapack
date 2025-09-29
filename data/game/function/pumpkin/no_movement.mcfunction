tag @s add stopped_moving
tag @s remove temp_snowball_pumpkin

say Stop

execute if entity @s[tag=epumpkin] run summon tnt ~ ~ ~
execute if entity @s[tag=eqpumpkin] run say Earthquake Pumpkin
execute if entity @s[tag=tpumpkin] run say Thunder Pumpkin
execute if entity @s[tag=brpumpkin] run say Bridging Pumpkin

kill @s
kill @e[type=item_display, tag=pumpkin, tag=!hpumpkin, distance=..1]