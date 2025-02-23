#toAssignタグを持つランダムなプレイヤーの中からチーム割り当て
execute as @r[tag=toAssign] run tag @s add assignSelector
execute as @a[tag=assignSelector] run scoreboard players set @s player.team 2
execute as @a[tag=assignSelector] run tag @s remove toAssign
execute as @a[tag=assignSelector] run tag @s remove assignSelector

#ループ処理
scoreboard players add count team.counter 1
function firo:game/random_team/green/loop