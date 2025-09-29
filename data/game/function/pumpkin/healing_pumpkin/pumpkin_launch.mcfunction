execute positioned -0.01 0.2 -0.01 run summon minecraft:marker ^ ^ ^1 {Tags:["pumpkin"]}

execute positioned ~ ~ ~ run summon minecraft:armor_stand ^ ^1 ^1 {Tags:["temp_snowball_pumpkin","hpumpkin"],Motion:[0.0,0.0,0.0],Invulnerable:1b,Small:1b,Invisible:1b}

summon minecraft:item_display ^ ^1 ^1 {Tags:["pumpkin","hpumpkin"],NoGravity:1b,billboard:"fixed",item_display:"fixed",interpolation_duration:5,interpolation_delay:0,teleport_duration:0,transformation:{scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:pumpkin",Count:1b}}

execute as @e[type=minecraft:armor_stand,tag=temp_snowball_pumpkin,sort=nearest,limit=1] at @s run ride @e[type=item_display,tag=pumpkin,sort=nearest,limit=1] mount @s

kill @e[type=marker, tag = pumpkin]

execute at @s run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 1.5