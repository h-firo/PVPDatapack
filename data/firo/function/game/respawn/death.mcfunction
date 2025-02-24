scoreboard players operation @s respawn.timer = respawnTime game.settings
scoreboard players set @s isDeath 0
advancement revoke @s only firo:death
execute if score rule game.settings matches 2 run clear @s gold_nugget[custom_data={isCI:true}]
gamemode spectator @s
title @s times 0 60 0
execute if score stage game.settings matches 1 run \
tp @s 40 -52 109
execute if score stage game.settings matches 2 run \
tp @s -44 -48 159
execute if score stage game.settings matches 3 run \
tp @s -21 -38 67
execute if score stage game.settings matches 4 run \
tp @s 47 -60 195
title @s title {"color": "dark_red","text": "死んでしまった！！"}