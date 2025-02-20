scoreboard players add count missile.target 1

summon armor_stand ~ ~ ~ \
{CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,\
Tags:["missile_point"],CustomName:'{"bold":true,"color":"red","text":"ミサイル着弾地点"}'}
particle dust{color:[0.278,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 normal

#特殊アイテム強化
scoreboard players operation \
@n[type=armor_stand,tag=missile_point] enchant.isItemPowerUp = @s enchant.isItemPowerUp

#オーナー
scoreboard players operation \
@n[type=armor_stand,tag=missile_point] missile.owner = @s missile.owner

kill @s