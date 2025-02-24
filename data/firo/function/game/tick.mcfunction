execute if score mode game.flag matches 0 run \
execute if score ready game.flag = count game.playerCount run \
function firo:game/game
execute if score mode game.flag matches 0 if score time game.timer matches ..0 run \
function firo:game/game
execute if score mode game.flag matches 0 as @a run \
title @s actionbar ["所有ポイント...",\
                    {"color":"dark_aqua","score":{"name":"@s","objective":"point"}},\
                    {"color":"dark_aqua","text":"pt"}]
execute if score mode game.flag matches 1 run \
function firo:game/effect/start_count

execute if score mode game.flag matches 2 if score rule game.settings matches 0 as @a run \
function firo:game/items/concrete/tick
execute if score mode game.flag matches 2 if score rule game.settings matches 1 as @a run \
function firo:game/area/tick

execute as @a[scores={respawn.timer=1..}] run \
function firo:game/respawn/tick
execute if score mode game.flag matches 2 if score time game.timer matches ..0 \
run function firo:game/end/end