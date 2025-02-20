execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isEarthBurn:true}] \
if score @s player.useItem matches 0 run \
function firo:items/earthburn/1

execute as @a[scores={item.trigger=1}] run scoreboard players add @s item.timer 1
execute as @a[scores={item.timer=20..,item.trigger=1}] run function firo:items/earthburn/clear
execute as @a[scores={item.timer=20..,item.trigger=1},nbt={OnGround:true}] \
at @s run function firo:items/earthburn/2 with entity @s