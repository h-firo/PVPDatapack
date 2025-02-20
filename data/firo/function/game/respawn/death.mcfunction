scoreboard players operation @s respawn.timer = respawnTime game.settings
advancement revoke @s only firo:death
execute if score rule game.settings matches 2 run clear @s gold_nugget[custom_data={isCI:true}]
gamemode spectator @s
title @s times 0 60 0
execute if score stage game.settings matches 1 run \
tp @s 40 -52 109
title @s title {"color": "dark_red","text": "死んでしまった！！"}