execute if score custom_enchant game.settings matches 1 run return run function firo:exception {"content":"Purchasing this item is prohibited by game settings."}
$execute unless items entity @s armor.$(slot) #$(type)_armor run \
return run function firo:exception {content:"You must be wearing the armor you want to enchant."}
$execute if score @s point matches $(need).. run \
function firo:buy/enchantment_purchase {point:$(need),path:$(path),slot:$(slot)}