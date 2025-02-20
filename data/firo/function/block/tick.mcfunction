execute as @e[type=item_frame,tag=block] unless score @s block.isInit matches 1 at @s run function firo:block/block_set
execute as @e[type=item_frame,tag=block] if score @s block.isInit matches 1 at @s run function firo:block/block_tick
execute as @e[type=armor_stand,tag=blockJudge] at @s unless entity @e[type=item_frame,tag=block,distance=..0] run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=blockJudge] at @s unless entity @e[type=item_frame,tag=block,distance=..0] run kill @s