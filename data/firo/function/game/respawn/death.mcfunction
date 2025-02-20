scoreboard players operation @s respawn.timer = respawnTime game.settings
advancement revoke @s only firo:death
gamemode spectator @s
title @s times 0 60 0
execute if score stage game.settings matches 1 run \
tp @s 40 -52 109
title @s title {"color": "dark_red","text": "死んでしまった！！"}