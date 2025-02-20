execute if score @s laser.useCount matches 1 run \
item replace entity @s weapon.offhand with \
carrot_on_a_stick[custom_data={isLaser:true},damage=1,max_damage=5,custom_model_data=4]
execute if score @s laser.useCount matches 2 run \
item replace entity @s weapon.offhand with \
carrot_on_a_stick[custom_data={isLaser:true},damage=2,max_damage=5,custom_model_data=4]
execute if score @s laser.useCount matches 3 run \
item replace entity @s weapon.offhand with \
carrot_on_a_stick[custom_data={isLaser:true},damage=3,max_damage=5,custom_model_data=4]
execute if score @s laser.useCount matches 4 run \
item replace entity @s weapon.offhand with \
carrot_on_a_stick[custom_data={isLaser:true},damage=4,max_damage=5,custom_model_data=4]
execute if score @s laser.useCount matches 5 run \
item replace entity @s weapon.offhand with \
carrot_on_a_stick[custom_data={isLaser:true},damage=5,max_damage=5,custom_model_data=4]