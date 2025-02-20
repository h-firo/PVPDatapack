scoreboard players set owner game.area.owner 2
execute if score stage game.settings matches 1 run function firo:game/area/fill/stage1 {color:green}

execute if score stage game.settings matches 1 positioned 40 -59 109 run \
particle dust{color:[0.000,1.000,0.133],scale:1} ~ ~ ~ 5 5 5 1 200 normal
bossbar set area_blocks color green
tellraw @a ["",{"text":"Green Team","color":"green"},\
            {"text":"\u304c\u30a8\u30ea\u30a2\u3092\u638c\u63e1\u3057\u307e\u3057\u305f\uff01\uff01"}]