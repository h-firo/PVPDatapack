gamemode adventure @s
scoreboard players set @s respawn.timer 0
title @s actionbar {"text": "復活！！"}
effect give @s resistance 10 100 true
execute if score stage game.settings matches 1 run \
spreadplayers 40 109 10 20 under -52 false @s
execute if score stage game.settings matches 2 run \
spreadplayers -44 159 10 30 under -51 false @s
execute if score stage game.settings matches 3 run \
spreadplayers -21 67 5 8 under -38 false @s
execute if score stage game.settings matches 4 run \
spreadplayers 47 195 10 20 under -20 false @s