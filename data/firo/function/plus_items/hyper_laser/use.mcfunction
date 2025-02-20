playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1
scoreboard players add @s laser.useCount 1

#見た目を変える
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={isLaser:true}] run \
function firo:plus_items/hyper_laser/minus_use_count_main
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data={isLaser:true}] run \
function firo:plus_items/hyper_laser/minus_use_count_off