execute unless score @s bp_nowTeam matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"\u304c"},{"text":"\u9ec4\u30c1\u30fc\u30e0","color":"yellow"},{"text":"\u306b\u5360\u9818\u3055\u308c\u305f\uff01\uff01"}]
execute unless score @s bp_nowTeam matches 3 run function firo:base_points/change_to/point_reset
execute unless score @s bp_nowTeam matches 3 run scoreboard players set @s bp_needRecalculation 1
scoreboard players set @s bp_nowTeam 3
execute if score @s bp_needRecalculation matches 1 as @e[type=armor_stand,tag=colony] run \
function firo:base_points/point_set