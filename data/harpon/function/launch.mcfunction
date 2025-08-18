# Summon the "invisible" arrow projectile slightly in front of player's eyes
execute anchored eyes positioned ^ ^ ^0.8 run summon minecraft:arrow ^ ^ ^ {Tags:["harpoon_projectile"],Silent:1b,NoGravity:1b,Invisible:1b,damage:0.0d,Pickup:0b,Crit:0b}

# Copy the player's facing to the arrow so local '^' moves advance along that direction
execute as @e[type=arrow,tag=harpoon_projectile,limit=1,sort=nearest] run data modify entity @s Rotation set from entity @p[limit=1,sort=nearest] Rotation

# Initialize state & timer (20s = 400 ticks)
scoreboard players set @e[type=arrow,tag=harpoon_projectile,limit=1,sort=nearest] hp.state 0
scoreboard players set @e[type=arrow,tag=harpoon_projectile,limit=1,sort=nearest] hp.time 400