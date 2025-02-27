#ランダム
execute if score stage game.settings matches 0 run \
execute as @a run function firo:exception {"content":"ステージのランダム設定が上手く動きませんでした"}
#闘技場
execute if score stage game.settings matches 1 run \
function firo:game/stages/stage1
#ビッグブリッジ
execute if score stage game.settings matches 2 run \
function firo:game/stages/stage2
#フォール滝
execute if score stage game.settings matches 3 run \
function firo:game/stages/stage3
#アポカリプスヒルズ
execute if score stage game.settings matches 4 run \
function firo:game/stages/stage4
#ヒラメが丘団地
execute if score stage game.settings matches 5 run \
function firo:game/stages/stage5