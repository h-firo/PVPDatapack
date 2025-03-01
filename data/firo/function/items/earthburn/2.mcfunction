attribute @s gravity base set 0.08

#演出
effect give @s resistance 2 255 true
playsound entity.generic.explode player @a ~ ~ ~ 1.0
execute if score @s enchant.isItemPowerUp matches 0 run \
particle explosion ~ ~ ~ 3 3 3 0 20
execute if score @s enchant.isItemPowerUp matches 1 run \
particle explosion ~ ~ ~ 6 6 6 0 100
particle block{block_state:"minecraft:dirt"} ~ ~ ~ 3 0 3 0 50 normal

#攻撃部分
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..3] run damage @s 60 firo:earthburn by @a[level=$(XpLevel),limit=1]
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..6] run damage @s 21 firo:earthburn by @a[level=$(XpLevel),limit=1]

$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..6] run damage @s 150 firo:earthburn by @a[level=$(XpLevel),limit=1]
$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..12] run damage @s 60 firo:earthburn by @a[level=$(XpLevel),limit=1]
execute if score @s enchant.isItemPowerUp matches 1 run \
particle minecraft:totem_of_undying ~ ~ ~ 2 2 2 0 100

scoreboard players set @s item.trigger 0
scoreboard players set @s item.timer 0
scoreboard players set @s player.useItem 0