execute if score @s player.isSelectReady matches 1 run \
return run function firo:exception {content:"既にReadyを選択しています"}
execute unless score mode game.flag matches 0 run \
return run function firo:exception {content:"Readyをクリックできるのはアイテム選択中のみです"}
function firo:game/ready