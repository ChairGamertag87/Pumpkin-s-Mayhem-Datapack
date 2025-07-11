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
gamerule doDaylightCycle false
gamerule spawnRadius 0
gamerule doWeatherCycle false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doVinesSpread false
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule spawnChunkRadius 0

forceload add 0 0