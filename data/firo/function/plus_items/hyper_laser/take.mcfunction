#発射
$execute positioned ^-0.3 ^-0.6 ^0.25 run \
summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[1.000,0.467,0.000],scale:1},Radius:0.01f,Duration:2,Tags:["laser"],Owner:$(UUID)}

#繰り返し
execute if score @s enchant.isItemPowerUp matches 0 run \
execute positioned ^ ^ ^1 if entity @s[distance=..20] run \
function firo:plus_items/hyper_laser/take with entity @s
execute if score @s enchant.isItemPowerUp matches 1 run \
execute positioned ^ ^ ^1 if entity @s[distance=..30] run \
function firo:plus_items/hyper_laser/take with entity @s