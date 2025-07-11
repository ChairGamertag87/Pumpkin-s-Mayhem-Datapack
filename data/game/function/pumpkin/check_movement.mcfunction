execute store result score @s currentX run data get entity @s Pos[0] 100
execute store result score @s currentY run data get entity @s Pos[1] 100
execute store result score @s currentZ run data get entity @s Pos[2] 100

execute if score @s currentX = @s lastX if score @s currentY = @s lastY if score @s currentZ = @s lastZ run function game:pumpkin/no_movement

function game:pumpkin/update_last_position