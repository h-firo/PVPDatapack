#オーナー処理
execute if score stage game.settings matches 1 run function firo:game/area/stage1
execute if score stage game.settings matches 3 run function firo:game/area/stage3
execute if score stage game.settings matches 4 run function firo:game/area/stage4
execute if score stage game.settings matches 255 run function firo:game/area/block_count1 with storage stage.area: t.1
execute if score stage game.settings matches 255 run function firo:game/area/block_count2 with storage stage.area: t.2

#タイマー処理
execute if score owner game.area.owner matches 0 run \
function firo:game/area/plus_timer/red
execute if score owner game.area.owner matches 1 run \
function firo:game/area/plus_timer/blue
execute if score owner game.area.owner matches 2 run \
function firo:game/area/plus_timer/green
execute if score owner game.area.owner matches 3 run \
function firo:game/area/plus_timer/yellow