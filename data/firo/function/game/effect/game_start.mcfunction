effect clear @a slowness
title @a title {"color":"dark_red","text":"Game Start!!"}
scoreboard players set @a rush.canAddPoint 1
execute if score is rush.isRush matches 1 as @a unless items entity @s container.* carrot_on_a_stick[custom_data={isRushItem:true}] run function firo:item_rush/give_rushitem
scoreboard players set mode game.flag 2