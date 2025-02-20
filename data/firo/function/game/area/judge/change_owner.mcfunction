#ブロック数の順位
function firo:game/ranksets/area_block

execute as @e[type=armor_stand,tag=red] if score @s satistics.rank matches 1 run \
function firo:game/area/judge/announce/red
execute as @e[type=armor_stand,tag=blue] if score @s satistics.rank matches 1 run \
function firo:game/area/judge/announce/blue
execute as @e[type=armor_stand,tag=green] if score @s satistics.rank matches 1 run \
function firo:game/area/judge/announce/green
execute as @e[type=armor_stand,tag=yellow] if score @s satistics.rank matches 1 run \
function firo:game/area/judge/announce/yellow
kill @e[type=armor_stand,tag=point_counter]

playsound entity.player.levelup master @a ~ ~ ~ 1
