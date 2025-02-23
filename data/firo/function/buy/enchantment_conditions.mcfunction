execute if score custom_enchant game.settings matches 1 run return run function firo:exception {"content":"Purchasing this item is prohibited by game settings."}
$execute unless items entity @s armor.$(slot) #firo:$(type)_armor run \
return run function firo:exception {content:"エンチャントをつけるには、そのエンチャントが付く防具を着用している必要があります"}
$execute if score @s point matches $(need).. run \
function firo:buy/enchantment_purchase {point:$(need),path:$(path),slot:$(slot)}