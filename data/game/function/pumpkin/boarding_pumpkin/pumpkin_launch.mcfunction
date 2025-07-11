execute positioned -0.01 0.2 -0.01 run summon minecraft:marker ^ ^ ^1 {Tags:["pumpkin"]}

execute positioned ~ ~ ~ run summon minecraft:armor_stand ^ ^1 ^1 {Tags:["temp_snowball_pumpkin"],Motion:[0.0,0.0,0.0],Invulnerable:1b,Small:1b,Invisible:1b}

execute positioned 0 0 0 store result score .x maths run data get entity @n[type=minecraft:marker,tag=pumpkin] Pos[0] 30000
execute positioned 0 0 0 store result score .y maths run data get entity @n[type=minecraft:marker,tag=pumpkin] Pos[1] 30000
execute positioned 0 0 0 store result score .z maths run data get entity @n[type=minecraft:marker,tag=pumpkin] Pos[2] 30000


execute store result entity @n[type=minecraft:armor_stand, tag=temp_snowball_pumpkin] Motion[0] double 0.0001 run scoreboard players get .x maths
execute store result entity @n[type=minecraft:armor_stand, tag=temp_snowball_pumpkin] Motion[1] double 0.0001 run scoreboard players get .y maths
execute store result entity @n[type=minecraft:armor_stand, tag=temp_snowball_pumpkin] Motion[2] double 0.0001 run scoreboard players get .z maths

summon minecraft:item_display ^ ^1 ^1 {Tags:["pumpkin"],NoGravity:1b,billboard:"fixed",item_display:"fixed",interpolation_duration:5,interpolation_delay:0,teleport_duration:0,transformation:{scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:pumpkin",Count:1b}}

execute as @e[type=minecraft:armor_stand,tag=temp_snowball_pumpkin,sort=nearest,limit=1] at @s run ride @e[type=item_display,tag=pumpkin,sort=nearest,limit=1] mount @s
ride @s mount @e[type=item_display,tag=pumpkin,sort=nearest,limit=1]


kill @e[type=marker, tag = pumpkin]


execute at @s run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 1.5