execute store result score @s currentX run data get entity @s Pos[0] 100
execute store result score @s currentY run data get entity @s Pos[1] 100
execute store result score @s currentZ run data get entity @s Pos[2] 100

execute if score @s currentX = @s lastX if score @s currentY = @s lastY if score @s currentZ = @s lastZ run function game:pumpkin/no_movement

execute positioned as @e[type=item_display, tag=pumpkin, distance=..1] if entity @e[type=armor_stand, tag=epumpkin, distance=..1] run particle flame ~ ~ ~
execute positioned as @e[type=item_display, tag=pumpkin, distance=..1] if entity @e[type=armor_stand, tag=bpumpkin, distance=..1] run particle cloud ~ ~ ~

function game:pumpkin/update_last_position