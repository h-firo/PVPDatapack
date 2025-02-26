#順位を決める
function firo:game/ranksets/area

execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 1 run \
function firo:game/end/winner_show
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 2 run \
function firo:game/end/second
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 3 run \
function firo:game/end/third
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 0 run \
function firo:game/end/fourth
kill @e[type=armor_stand,tag=point_counter]
execute if score phase game.phase >= maxPhase game.settings run return run function firo:game/end/all_end
function firo:game/weapon_select
