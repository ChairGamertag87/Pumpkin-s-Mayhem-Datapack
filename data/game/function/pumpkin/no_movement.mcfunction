tag @s add stopped_moving
tag @s remove temp_snowball_pumpkin

say Stop

execute if entity @s[tag=epumpkin] run summon tnt ~ ~ ~
execute if entity @s[tag=eqpumpkin] run say Earthquake Pumpkin
execute if entity @s[tag=tpumpkin] run say Thunder Pumpkin
execute if entity @s[tag=brpumpkin] run say Bridging Pumpkin
execute if entity @s[tag=spumpkin] run say Stinky Pumpkin
execute if entity @s[tag=wardpumpkin] run say Warden Pumpkin
execute if entity @s[tag=mystpumpkin] run say Mystery Pumpkin
execute if entity @s[tag=protpumpkin] run say Protection Pumpkin
execute if entity @s[tag=hompumpkin] run say Homing Pumpkin
execute if entity @s[tag=bholepumpkin] run say Black Hole Pumpkin
execute if entity @s[tag=darkpumpkin] run say Darkness Pumpkin
execute if entity @s[tag=fragpumpkin] run say Fragmentation Pumpkin
execute if entity @s[tag=incpumpkin] run say Incendiary Pumpkin
execute if entity @s[tag=metpumpkin] run say Meteor Pumpkin
execute if entity @s[tag=levpumpkin] run say Levitation Pumpkin
execute if entity @s[tag=zombpumpkin] run say Zombie Pumpkin
execute if entity @s[tag=giantpumpkin] run say Giant Pumpkin
execute if entity @s[tag=frostpumpkin] run say Frost Pumpkin
execute if entity @s[tag=glutpumpkin] run say Glutton Pumpkin

kill @s
kill @e[type=item_display, tag=pumpkin, tag=!hpumpkin, distance=..1]