gamemode adventure @s
scoreboard players set @s respawn.timer 0
title @s actionbar {"text": "復活！！"}
execute if score stage game.settings matches 1 run \
spreadplayers 40 109 10 20 under -52 false @s