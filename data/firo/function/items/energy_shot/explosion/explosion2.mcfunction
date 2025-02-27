particle explosion ~ ~ ~ 5 3 5 0 50
execute if score @s enchant.isItemPowerUp matches 1 run \
particle totem_of_undying ~ ~ ~ 5 3 5 0 50
playsound entity.generic.explode master @a ~ ~ ~ 1
$execute if score @s enchant.isItemPowerUp matches 0 run \
execute as @e[distance=..7,type=!armor_stand,type=!item_frame] unless entity @s[level=$(level)] run \
damage @s 20 firo:energy_shot by @a[level=$(level),limit=1]
$execute if score @s enchant.isItemPowerUp matches 1 run \
execute as @e[distance=..7,type=!armor_stand,type=!item_frame] unless entity @s[level=$(level)] run \
damage @s 30 firo:energy_shot by @a[level=$(level),limit=1]