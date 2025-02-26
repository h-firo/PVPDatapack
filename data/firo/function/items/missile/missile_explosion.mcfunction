#演出
playsound entity.generic.explode player @a ~ ~ ~ 1.0
particle explosion ~ ~ ~ 2 2 2 0 20
particle block{block_state:"minecraft:dirt"} ~ ~ ~ 3 0 3 0 50 normal

#攻撃部分
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..3,type=!item_frame] run damage @s 25 firo:missile by @a[level=$(owner),limit=1]
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..6,type=!item_frame] run damage @s 20 firo:missile by @a[level=$(owner),limit=1]
$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..5,type=!item_frame] run damage @s 30 firo:missile by @a[level=$(owner),limit=1]
$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..10,type=!item_frame] run damage @s 25 firo:missile by @a[level=$(owner),limit=1]

scoreboard players remove count missile.target 1
kill @n[type=armor_stand,tag=missile,nbt={OnGround:true}]
kill @s