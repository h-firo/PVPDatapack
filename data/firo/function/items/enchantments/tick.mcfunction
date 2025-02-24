execute as @a[scores={enchant.isItemPowerUp=1}] \
unless items entity @s armor.chest #chest_armor[enchantments={levels:{"firo:item_power_up":1}}] \
at @s run scoreboard players set @s enchant.isItemPowerUp 0
execute as @a[scores={enchant.isGrudge=1}] \
unless items entity @s armor.legs #leg_armor[enchantments={levels:{"firo:grudge":1}}] \
at @s run scoreboard players set @s enchant.isGrudge 0