playsound block.note_block.guitar player @a ~ ~ ~ 1 2
scoreboard players set @s energy.flag 4

#特殊アイテム強化のスコアを渡す
scoreboard players operation @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{isEnergyShot:true}}}}] \
enchant.isItemPowerUp = @s enchant.isItemPowerUp

scoreboard players set @a energy.timer 0
scoreboard players set @s energy.charge 0
scoreboard players set @s player.useItem 0
attribute @n[type=player] generic.gravity base set 0.08
effect give @n[type=player] resistance 3 10 true