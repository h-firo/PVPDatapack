execute unless score @s item.initflag matches 1 run function firo:items/smoke/init

execute if score @s enchant.isItemPowerUp matches 0 run \
particle campfire_signal_smoke ~ ~ ~ 2 2 2 0 20
execute if score @s enchant.isItemPowerUp matches 1 run \
particle campfire_signal_smoke ~ ~ ~ 4 4 4 0 50
effect give @a[distance=..2] invisibility 1 1 true

scoreboard players add @s item.timer 1
execute if score @s item.timer matches 100.. run kill @s