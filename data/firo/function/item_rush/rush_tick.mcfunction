scoreboard players add @a[scores={rush.canAddPoint=1}] rush.timer 1
execute as @a if score @s rush.timer matches 20.. run function firo:item_rush/add_point
execute as @a[scores={rush.canAddPoint=1}] if score @s rush.rushPoint >= @s rush.needRushPoint at @s run function firo:item_rush/can_use_item
execute as @a[scores={right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={isRushItem:true}] if score @s rush.rushPoint >= @s rush.needRushPoint \
at @s run function firo:item_rush/use