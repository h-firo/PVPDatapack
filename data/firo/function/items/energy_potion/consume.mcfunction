execute if score @s enchant.isItemPowerUp matches 1 run function firo:items/energy_potion/overwrite
execute unless score @s enchant.isItemPowerUp matches 1 run scoreboard players set @s energyPotion.timer 200
advancement revoke @s only firo:consume_energy_potion