tag @s add stopped_moving
tag @s remove temp_snowball_pumpkin

#--- Explosive Pumpkin ---
execute if entity @s[tag=epumpkin] run summon tnt ~ ~ ~
execute if entity @s[tag=epumpkin] run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 5
execute if entity @s[tag=epumpkin] run particle minecraft:large_smoke ~ ~1 ~ 1.5 1 1.5 0.05 40
execute if entity @s[tag=epumpkin] run particle minecraft:flame ~ ~0.5 ~ 1 0.5 1 0.1 30

#--- Thunder Pumpkin ---
execute if entity @s[tag=tpumpkin] run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=tpumpkin] run summon lightning_bolt ~2 ~ ~1
execute if entity @s[tag=tpumpkin] run summon lightning_bolt ~-2 ~ ~-1
execute if entity @s[tag=tpumpkin] run summon lightning_bolt ~1 ~ ~-2
execute if entity @s[tag=tpumpkin] run summon lightning_bolt ~-1 ~ ~2
execute if entity @s[tag=tpumpkin] run particle minecraft:electric_spark ~ ~1 ~ 3 2 3 0.5 80
execute if entity @s[tag=tpumpkin] run particle minecraft:end_rod ~ ~2 ~ 2 3 2 0.2 40
execute if entity @s[tag=tpumpkin] run particle minecraft:cloud ~ ~0.5 ~ 2 0.5 2 0.05 30

#--- Darkness Pumpkin ---
execute if entity @s[tag=darkpumpkin] run effect give @a[distance=..5] darkness 5 0
execute if entity @s[tag=darkpumpkin] run particle minecraft:sculk_soul ~ ~0.5 ~ 2 1 2 0.02 40
execute if entity @s[tag=darkpumpkin] run particle minecraft:large_smoke ~ ~0.5 ~ 3 1.5 3 0.01 60
execute if entity @s[tag=darkpumpkin] run particle minecraft:smoke ~ ~1 ~ 2 2 2 0.03 40
execute if entity @s[tag=darkpumpkin] run particle minecraft:squid_ink ~ ~0.5 ~ 2 1 2 0.05 30
execute if entity @s[tag=darkpumpkin] run playsound minecraft:entity.warden.ambient master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=darkpumpkin] run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 1

#--- Levitation Pumpkin ---
execute if entity @s[tag=levpumpkin] run effect give @a[distance=..5] levitation 3 1
execute if entity @s[tag=levpumpkin] run particle minecraft:end_rod ~ ~1 ~ 2 2 2 0.1 60
execute if entity @s[tag=levpumpkin] run particle minecraft:enchant ~ ~1 ~ 2 2 2 0.5 50
execute if entity @s[tag=levpumpkin] run particle minecraft:portal ~ ~0.5 ~ 1 1 1 0.3 40
execute if entity @s[tag=levpumpkin] run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
execute if entity @s[tag=levpumpkin] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2

#--- Frost Pumpkin (progressive via marker) ---
execute if entity @s[tag=frostpumpkin] run effect give @a[distance=..5] slowness 5 2
execute if entity @s[tag=frostpumpkin] run effect give @a[distance=..5] mining_fatigue 5 1
execute if entity @s[tag=frostpumpkin] run summon marker ~ ~ ~ {Tags:["frost_effect"]}
execute if entity @s[tag=frostpumpkin] run scoreboard players set @n[type=marker,tag=frost_effect] effect_timer 0
execute if entity @s[tag=frostpumpkin] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5

#--- Incendiary Pumpkin (progressive via marker) ---
execute if entity @s[tag=incpumpkin] run summon tnt ~ ~ ~
execute if entity @s[tag=incpumpkin] run summon marker ~ ~ ~ {Tags:["fire_effect"]}
execute if entity @s[tag=incpumpkin] run scoreboard players set @n[type=marker,tag=fire_effect] effect_timer 0
execute if entity @s[tag=incpumpkin] run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1

#--- Stinky Pumpkin ---
execute if entity @s[tag=spumpkin] run effect give @a[distance=..4] poison 5 0
execute if entity @s[tag=spumpkin] run effect give @a[distance=..4] nausea 5 0
execute if entity @s[tag=spumpkin] run particle minecraft:glow_squid_ink ~ ~1 ~ 3 2 3 0.05 100
execute if entity @s[tag=spumpkin] run particle minecraft:glow_squid_ink ~ ~0.5 ~ 4 1 4 0.02 80
execute if entity @s[tag=spumpkin] run particle minecraft:large_smoke ~ ~1 ~ 2 1.5 2 0.03 50
execute if entity @s[tag=spumpkin] run particle minecraft:smoke ~ ~0.5 ~ 3 1 3 0.02 40
execute if entity @s[tag=spumpkin] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=spumpkin] run playsound minecraft:entity.glow_squid.squirt master @a ~ ~ ~ 1 0.8

#--- Healing Pumpkin ---
execute if entity @s[tag=hpumpkin,tag=red_team] run effect give @a[team=red,distance=..5] regeneration 3 1
execute if entity @s[tag=hpumpkin,tag=red_team] run effect give @a[team=red,distance=..5] absorption 5 0
execute if entity @s[tag=hpumpkin,tag=blue_team] run effect give @a[team=blue,distance=..5] regeneration 3 1
execute if entity @s[tag=hpumpkin,tag=blue_team] run effect give @a[team=blue,distance=..5] absorption 5 0
execute if entity @s[tag=hpumpkin] run particle minecraft:heart ~ ~1 ~ 2 2 2 0.01 20
execute if entity @s[tag=hpumpkin] run particle minecraft:end_rod ~ ~1 ~ 2 1.5 2 0.1 40
execute if entity @s[tag=hpumpkin] run particle minecraft:enchant ~ ~0.5 ~ 1.5 1 1.5 0.5 30
execute if entity @s[tag=hpumpkin] run particle minecraft:composter ~ ~0.5 ~ 1 1 1 0.1 20
execute if entity @s[tag=hpumpkin] run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1
execute if entity @s[tag=hpumpkin] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 2

#--- Placeholders Sprint 2+ ---
execute if entity @s[tag=eqpumpkin] run say Earthquake Pumpkin
execute if entity @s[tag=brpumpkin] run say Bridging Pumpkin
execute if entity @s[tag=wardpumpkin] run say Warden Pumpkin
execute if entity @s[tag=mystpumpkin] run say Mystery Pumpkin
execute if entity @s[tag=protpumpkin] run say Protection Pumpkin
execute if entity @s[tag=hompumpkin] run say Homing Pumpkin
execute if entity @s[tag=bholepumpkin] run say Black Hole Pumpkin
execute if entity @s[tag=fragpumpkin] run say Fragmentation Pumpkin
execute if entity @s[tag=metpumpkin] run say Meteor Pumpkin
execute if entity @s[tag=zombpumpkin] run say Zombie Pumpkin
execute if entity @s[tag=giantpumpkin] run say Giant Pumpkin
execute if entity @s[tag=glutpumpkin] run say Glutton Pumpkin

kill @s
kill @e[type=item_display, tag=pumpkin, tag=!hpumpkin, distance=..1]