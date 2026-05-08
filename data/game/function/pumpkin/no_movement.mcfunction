tag @s add stopped_moving
tag @s remove temp_snowball_pumpkin

#--- Route to impact functions ---
execute if entity @s[tag=epumpkin] run function game:pumpkin/explosive_pumpkin/impact
execute if entity @s[tag=tpumpkin] run function game:pumpkin/thunder_pumpkin/impact
execute if entity @s[tag=darkpumpkin] run function game:pumpkin/darkness_pumpkin/impact
execute if entity @s[tag=levpumpkin] run function game:pumpkin/levitation_pumpkin/impact
execute if entity @s[tag=frostpumpkin] run function game:pumpkin/frost_pumpkin/impact
execute if entity @s[tag=incpumpkin] run function game:pumpkin/incendiary_pumpkin/impact
execute if entity @s[tag=spumpkin] run function game:pumpkin/stinky_pumpkin/impact
execute if entity @s[tag=hpumpkin] run function game:pumpkin/healing_pumpkin/impact
execute if entity @s[tag=eqpumpkin] run function game:pumpkin/earthquake_pumpkin/impact
execute if entity @s[tag=brpumpkin] run function game:pumpkin/bridging_pumpkin/impact
execute if entity @s[tag=wardpumpkin] run function game:pumpkin/warden_pumpkin/impact
execute if entity @s[tag=mystpumpkin] run function game:pumpkin/mystery_pumpkin/impact
execute if entity @s[tag=protpumpkin] run function game:pumpkin/protection_pumpkin/impact
execute if entity @s[tag=hompumpkin] run function game:pumpkin/homing_pumpkin/impact
execute if entity @s[tag=bholepumpkin] run function game:pumpkin/blackhole_pumpkin/impact
execute if entity @s[tag=fragpumpkin] run function game:pumpkin/fragmentation_pumpkin/impact
execute if entity @s[tag=metpumpkin] run function game:pumpkin/meteor_pumpkin/impact
execute if entity @s[tag=zombpumpkin] run function game:pumpkin/zombie_pumpkin/impact
execute if entity @s[tag=giantpumpkin] run function game:pumpkin/giant_pumpkin/impact
execute if entity @s[tag=glutpumpkin] run function game:pumpkin/glutton_pumpkin/impact

kill @s
kill @e[type=item_display, tag=pumpkin, tag=!hpumpkin, distance=..1]
