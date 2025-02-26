#チームごとのキルカウントを集計
execute as @a[scores={player.team=0}] run scoreboard players operation red killCount += @s killCount
execute as @a[scores={player.team=1}] run scoreboard players operation blue killCount += @s killCount
execute as @a[scores={player.team=2}] run scoreboard players operation green killCount += @s killCount
execute as @a[scores={player.team=3}] run scoreboard players operation yellow killCount += @s killCount

#順位を決める
function firo:game/ranksets/kill_count

execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 1 run \
function firo:game/end/winner_show
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 2 run \
function firo:game/end/second
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 3 run \
function firo:game/end/third
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 0 run \
function firo:game/end/fourth
kill @e[type=armor_stand,tag=point_counter]
scoreboard players reset * killCount
execute if score phase game.phase >= maxPhase game.settings run return run function firo:game/end/all_end
function firo:game/weapon_select