tag @a[team=blue] add player
tag @a[team=red] add player


gamemode survival @a[tag=player]
gamemode spectator @a[tag=spectator]

scoreboard players set .ingame game 1
scoreboard players set @a kills 0

time set day

execute as @a[team=red] run function game:kits/red_kit
execute as @a[team=blue] run function game:kits/blue_kit