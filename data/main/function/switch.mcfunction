#Pumpkin Selector
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={epumpkin:1b}] run function game:pumpkin/explosive_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={bpumpkin:1b}] run function game:pumpkin/boarding_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={eqpumpkin:1b}] run function game:pumpkin/earthquake_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={tpumpkin:1b}] run function game:pumpkin/thunder_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={brpumpkin:1b}] run function game:pumpkin/bridging_pumpkin/pumpkin_launch

#Team Selector
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={spec_selector:1b}] if entity @s[tag=!spectator] run function menu:spectator
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={red_selector:1b}] if entity @s[team=!red] run function menu:join_red
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={blue_selector:1b}] if entity @s[team=!blue] run function menu:join_blue