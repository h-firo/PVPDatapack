execute if score block game.settings matches 1 run return run function firo:exception {"content":"Purchasing this item is prohibited by game settings."}
$scoreboard players set @s shop.needPoint $(point)
scoreboard players operation @s shop.needPoint *= 10 game.num
$execute if score @s point > @s shop.needPoint run function firo:block/give_10 {type:$(type),key:$(key),num:$(point)}