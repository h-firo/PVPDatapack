#オーナー処理
execute if score stage game.settings matches 1 run function firo:game/area/stage1
execute if score stage game.settings matches 3 run function firo:game/area/stage3
execute if score stage game.settings matches 4 run function firo:game/area/stage4
execute if score stage game.settings matches 5 run function firo:game/area/stage5
execute if score stage game.settings matches -1 run function firo:game/area/training

#タイマー処理
execute if score owner game.area.owner matches 0 run \
function firo:game/area/plus_timer/red
execute if score owner game.area.owner matches 1 run \
function firo:game/area/plus_timer/blue
execute if score owner game.area.owner matches 2 run \
function firo:game/area/plus_timer/green
execute if score owner game.area.owner matches 3 run \
function firo:game/area/plus_timer/yellow