$execute if score @s energy.timer matches 1..10 as \
@e[type=armor_stand,tag=explosion,scores={energy.owner=$(XpLevel)}] at @s run \
function firo:items/energy_shot/explosion/explosion1 {level:$(XpLevel)}
$execute if score @s energy.timer matches 11..20 as \
@e[type=armor_stand,tag=explosion,scores={energy.owner=$(XpLevel)}] at @s run \
function firo:items/energy_shot/explosion/explosion2 {level:$(XpLevel)}
$execute if score @s energy.timer matches 21..40 as \
@e[type=armor_stand,tag=explosion,scores={energy.owner=$(XpLevel)}] at @s run \
function firo:items/energy_shot/explosion/explosion3 {level:$(XpLevel)}
$execute if score @s energy.timer matches 41.. as \
@e[type=armor_stand,tag=explosion,scores={energy.owner=$(XpLevel)}] at @s run \
function firo:items/energy_shot/explosion/delete_explosion {id:$(UUID)}