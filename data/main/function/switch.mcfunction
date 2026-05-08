#Pumpkin Selector
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={epumpkin:1b}] run function game:pumpkin/explosive_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={bpumpkin:1b}] run function game:pumpkin/boarding_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={eqpumpkin:1b}] run function game:pumpkin/earthquake_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={tpumpkin:1b}] run function game:pumpkin/thunder_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={brpumpkin:1b}] run function game:pumpkin/bridging_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={hpumpkin:1b}] run function game:pumpkin/healing_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={spumpkin:1b}] run function game:pumpkin/stinky_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={wardpumpkin:1b}] run function game:pumpkin/warden_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={mystpumpkin:1b}] run function game:pumpkin/mystery_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={protpumpkin:1b}] run function game:pumpkin/protection_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={hompumpkin:1b}] run function game:pumpkin/homing_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={bholepumpkin:1b}] run function game:pumpkin/blackhole_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={darkpumpkin:1b}] run function game:pumpkin/darkness_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={fragpumpkin:1b}] run function game:pumpkin/fragmentation_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={incpumpkin:1b}] run function game:pumpkin/incendiary_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={metpumpkin:1b}] run function game:pumpkin/meteor_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={levpumpkin:1b}] run function game:pumpkin/levitation_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={zombpumpkin:1b}] run function game:pumpkin/zombie_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={giantpumpkin:1b}] run function game:pumpkin/giant_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={frostpumpkin:1b}] run function game:pumpkin/frost_pumpkin/pumpkin_launch
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={glutpumpkin:1b}] run function game:pumpkin/glutton_pumpkin/pumpkin_launch

#Team Selector
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={spec_selector:1b}] if entity @s[tag=!spectator] run function menu:spectator
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={red_selector:1b}] if entity @s[team=!red] run function menu:join_red
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_data={blue_selector:1b}] if entity @s[team=!blue] run function menu:join_blue