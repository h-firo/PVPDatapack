$experience set @r[level=0] $(num) levels
scoreboard players add num game.levelNum 1
execute store result storage level: num int 1 run scoreboard players get num game.levelNum

execute if score num game.levelNum <= count game.playerCount run \
function firo:game/setlevel with storage level:

execute if score num game.levelNum > count game.playerCount run function firo:game/setlevel_end with storage level: