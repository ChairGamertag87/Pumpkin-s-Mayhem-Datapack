#Scoreboard
scoreboard objectives add use_warped_fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add maths dummy
scoreboard objectives add game dummy
scoreboard objectives add kills playerKillCount
scoreboard objectives add lastX dummy
scoreboard objectives add lastY dummy
scoreboard objectives add lastZ dummy
scoreboard objectives add currentX dummy
scoreboard objectives add currentY dummy
scoreboard objectives add currentZ dummy

#Setup players
scoreboard players set .x maths 0
scoreboard players set .y maths 0
scoreboard players set .z maths 0
scoreboard players set .ingame game 0


#Teams
team add red
team add blue
team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false

#Gamerules
gamerule advance_time false
gamerule respawn_radius 0
gamerule advance_weather false
gamerule spawn_phantoms false
gamerule spawn_mobs false
gamerule spread_vines false
gamerule immediate_respawn true
gamerule show_advancement_messages false
gamerule command_block_output false
gamerule show_death_messages false

forceload add 0 0