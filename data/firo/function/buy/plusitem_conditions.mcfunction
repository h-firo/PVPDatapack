execute if score special_item game.settings matches 1 run return run function firo:exception {"content":"Purchasing this item is prohibited by game settings."}
$execute if score @s point matches $(need).. run \
function firo:buy/plusitem_purchase {point:$(need),path:$(path)}