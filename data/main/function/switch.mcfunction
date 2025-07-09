execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={epumkin:1b}] run function game:pumpkin/explosive_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={bpumkin:1b}] run function game:pumpkin/boarding_pumpkin/pumpkin_launch

#Team Selector
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={spec_selector:1b}] if entity @s[tag=!spectator] run function menu:spectator
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={red_selector:1b}] if entity @s[team=!red] run function menu:join_red
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={blue_selector:1b}] if entity @s[team=!blue] run function menu:join_blue