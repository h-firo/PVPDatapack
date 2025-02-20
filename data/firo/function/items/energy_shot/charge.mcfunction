execute if score @s enchant.isItemPowerUp matches 0 run \
scoreboard players add @s energy.charge 45
execute if score @s enchant.isItemPowerUp matches 1 run \
scoreboard players add @s energy.charge 80
execute if score @s enchant.isItemPowerUp matches 1 run \
particle totem_of_undying ~ ~ ~ 1 1 1 0 50
playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 2
scoreboard players set @s right_click 0