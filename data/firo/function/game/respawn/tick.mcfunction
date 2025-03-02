scoreboard players remove @s respawn.timer 1
scoreboard players set @s isDeath 0
title @s actionbar [{"color":"white","text":"復活まで..."},\
                    {"color":"white","score":{"name":"@s","objective":"respawn.timer"}}]
execute if score @s respawn.timer matches ..0 run function firo:game/respawn/respawn