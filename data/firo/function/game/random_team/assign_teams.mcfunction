#player.team=-1のプレイヤーにタグ付与
tag @a[scores={player.team=-1}] add toAssign

#各チームに割り当てる人数を計算
scoreboard players operation size team.teamSize = count game.playerCount
scoreboard players operation size team.teamSize /= count team.teamCount

#redチームに割り当て
scoreboard players set count team.counter 0
execute as @a[scores={player.team=0}] run scoreboard players add count team.counter 1
function firo:game/random_team/red/loop

#blueチームに割り当て
scoreboard players set count team.counter 0
execute as @a[scores={player.team=1}] run scoreboard players add count team.counter 1
function firo:game/random_team/blue/loop

#greenチームに割り当て
scoreboard players set count team.counter 0
execute as @a[scores={player.team=2}] run scoreboard players add count team.counter 1
function firo:game/random_team/green/loop

#yellowチームに割り当て
scoreboard players set count team.counter 0
execute as @a[scores={player.team=3}] run scoreboard players add count team.counter 1
function firo:game/random_team/yellow/loop

#残ったプレイヤーをspectatorに
execute as @a[tag=toAssign] run scoreboard players set @s player.team 4
execute as @a[tag=toAssign] run tag @s remove toAssign