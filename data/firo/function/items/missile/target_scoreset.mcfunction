execute unless score @s enchant.isItemPowerUp matches 0..1 \
run scoreboard players operation @s enchant.isItemPowerUp = @p enchant.isItemPowerUp

execute store result score @s missile.owner run experience query @p levels