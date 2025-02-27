scoreboard players set owner game.area.owner 3
execute if score stage game.settings matches 1 run function firo:game/area/fill/stage1 {color:yellow}
execute if score stage game.settings matches 3 run function firo:game/area/fill/stage3 {color:yellow}
execute if score stage game.settings matches 4 run function firo:game/area/fill/stage4 {color:yellow}
execute if score stage game.settings matches 5 run function firo:game/area/fill/stage5 {color:yellow}

execute if score stage game.settings matches 1 positioned 40 -59 109 run \
particle dust{color:[1.000,0.933,0.000],scale:1} ~ ~ ~ 5 5 5 1 200 normal
bossbar set area_blocks color yellow
tellraw @a ["",{"text":"Yellow Team","color":"yellow"},\
            {"text":"\u304c\u30a8\u30ea\u30a2\u3092\u638c\u63e1\u3057\u307e\u3057\u305f\uff01\uff01"}]