particle explosion ~ ~ ~ 10 5 10 0 100
execute if score @s enchant.isItemPowerUp matches 1 run \
particle totem_of_undying ~ ~ ~ 10 5 10 0 100
playsound entity.generic.explode master @a ~ ~ ~ 1
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..10,type=!armor_stand,type=!item_frame] unless entity @s[level=$(level)] run \
damage @s 12 firo:energy_shot by @a[level=$(level),limit=1]
$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..10,type=!armor_stand,type=!item_frame] unless entity @s[level=$(level)] run \
damage @s 18 firo:energy_shot by @a[level=$(level),limit=1]