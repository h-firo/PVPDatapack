#エメラルドの数をカウント
execute as @a store result score @s hunt.emeraldCount run clear @s emerald_block 0
execute as @a[scores={player.team=0}] run scoreboard players operation red hunt.emeraldCount += @s hunt.emeraldCount
execute as @a[scores={player.team=1}] run scoreboard players operation blue hunt.emeraldCount += @s hunt.emeraldCount
execute as @a[scores={player.team=2}] run scoreboard players operation green hunt.emeraldCount += @s hunt.emeraldCount
execute as @a[scores={player.team=3}] run scoreboard players operation yellow hunt.emeraldCount += @s hunt.emeraldCount

#順位を決める
function firo:game/ranksets/hunt

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
