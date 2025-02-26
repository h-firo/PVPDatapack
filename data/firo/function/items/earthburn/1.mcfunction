scoreboard players set @s player.useItem 1
execute if score @s enchant.isItemPowerUp matches 0 positioned ~ ~1 ~ run function firo:items/earthburn/particles/particle
execute if score @s enchant.isItemPowerUp matches 0 positioned ~ ~1 ~ run function firo:items/earthburn/particles/particle2
execute if score @s enchant.isItemPowerUp matches 1 positioned ~ ~1 ~ run function firo:items/earthburn/particles/particle3
effect give @s levitation 10 10 true
$clear @s carrot_on_a_stick[custom_data={isEarthBurn:true}] $(count)
playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 2
scoreboard players set @s item.trigger 1
scoreboard players set @s right_click 0