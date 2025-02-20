#落雷地点設定
execute if score @s lightning.timer matches 0 as @p[distance=1..] at @s run \
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Marker:1b,Invisible:0b,Tags:["lightning_point1","lp"],CustomName:'{"bold":true,"color":"gold","text":"落雷地点"}'}
execute if score @s lightning.timer matches 10 as @p[distance=1..] at @s run \
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Marker:1b,Invisible:0b,Tags:["lightning_point2","lp"],CustomName:'{"bold":true,"color":"gold","text":"落雷地点"}'}
execute if score @s lightning.timer matches 20 as @p[distance=1..] at @s run \
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Marker:1b,Invisible:0b,Tags:["lightning_point3","lp"],CustomName:'{"bold":true,"color":"gold","text":"落雷地点"}'}

#落雷
execute if score @s lightning.timer matches 30 as @e[type=armor_stand,tag=lightning_point1] at @s run \
summon lightning_bolt ~ ~ ~
execute if score @s lightning.timer matches 40 as @e[type=armor_stand,tag=lightning_point2] at @s run \
summon lightning_bolt ~ ~ ~
execute if score @s lightning.timer matches 50 as @e[type=armor_stand,tag=lightning_point3] at @s run \
summon lightning_bolt ~ ~ ~
execute if score @s lightning.timer matches 50.. run function firo:plus_items/lightning_spear/stand/kill

#警告音
execute as @e[type=armor_stand,tag=lp] at @s run playsound block.note_block.xylophone player @a ~ ~ ~ 1

execute if score @s lightning.is matches 1 run scoreboard players add @s lightning.timer 1