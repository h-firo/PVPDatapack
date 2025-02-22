#ランダム
execute if score stage game.settings matches 0 run \
function firo:exception {"content":"ステージのランダム設定が上手く動きませんでした"}
#闘技場
execute if score stage game.settings matches 1 run \
function firo:game/stages/stage1
#ビッグブリッジ
execute if score stage game.settings matches 2 run \
function firo:game/stages/stage2
#フォール滝
execute if score stage game.settings matches 3 run \
function firo:game/stages/stage3