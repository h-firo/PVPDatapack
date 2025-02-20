execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isLaser:true}] \
at @s run function firo:plus_items/hyper_laser/use

execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isLaser:true}] \
at @s anchored eyes positioned ^ ^ ^ run function firo:plus_items/hyper_laser/take with entity @s

execute if entity @e[type=area_effect_cloud] as @e[type=area_effect_cloud,tag=laser] at @s \
run function firo:plus_items/hyper_laser/damage with entity @s

execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isLaser:true}] \
if score @s laser.useCount matches 5.. run function firo:plus_items/hyper_laser/delete

execute as @a[scores={right_click=1..}] run scoreboard players set @s right_click 0