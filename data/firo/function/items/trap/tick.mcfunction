execute unless score @s item.initflag matches 1 run function firo:items/trap/init

execute if score @s enchant.isItemPowerUp matches 0 run \
particle end_rod ~ ~ ~ 0 0 0 0 1
execute if score @s enchant.isItemPowerUp matches 1 run \
particle mycelium ~ ~ ~ 0 0 0 0 1

execute if score @s enchant.isItemPowerUp matches 0 run \
execute if entity @a[distance=..1] run function firo:items/trap/on

execute if score @s enchant.isItemPowerUp matches 1 run \
execute if entity @a[distance=..2] run function firo:items/trap/on