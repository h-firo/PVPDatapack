summon armor_stand ~ ~ ~ \
{Tags:["explosion","energy_temp"],Invisible:true,Invulnerable:true,NoGravity:true,Marker:true}
$execute store result score @e[type=armor_stand,tag=energy_temp] energy.owner run \
experience query @a[nbt={UUID:$(Owner)},limit=1] levels

#プレイヤーから渡された特殊アイテム強化のフラグをアーマースタンドに渡す
scoreboard players operation @e[type=armor_stand,tag=explosion,tag=energy_temp] \
enchant.isItemPowerUp = @s enchant.isItemPowerUp

tag @e[type=armor_stand,tag=explosion,tag=energy_temp] remove energy_temp

scoreboard players set @a[scores={energy.flag=4}] energy.flag 5
