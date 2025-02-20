execute if score @s player.isSelectReady matches 1 run \
return run function firo:exception {content:"You have already selected ready"}
execute unless score mode game.flag matches 0 run \
return run function firo:exception {content:"You can click this message when only Item-Select-Time"}
function firo:game/ready