execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isFrameNova:true}] \
at @s run function firo:plus_items/frame_nova/take
execute as @a[scores={frameNova.is=1}] at @s run function firo:plus_items/frame_nova/summon with entity @s
execute if entity @e[type=armor_stand,tag=frame] run function firo:plus_items/frame_nova/tick2