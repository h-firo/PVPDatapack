scoreboard players add @a[scores={rush.canAddPoint=1}] rush.timer 1
execute as @a if score @s rush.timer matches 20.. run function firo:item_rush/add_point
execute as @a if score @s rush.rushPoint >= @s rush.needRushPoint run function firo:item_rush/can_use_item