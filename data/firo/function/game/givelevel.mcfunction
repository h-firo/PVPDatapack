experience set @a 0 levels
scoreboard players set count game.playerCount 0
execute as @a run scoreboard players add count game.playerCount 1
execute as @a unless score @s player.team matches 4 run scoreboard players add count game.activePlayerCount 1

scoreboard players set num game.levelNum 1
execute store result storage level: num int 1 run scoreboard players get num game.levelNum
function firo:game/setlevel with storage level: