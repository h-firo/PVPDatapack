scoreboard players add @s frameNova.timer 1
execute if score @s frameNova.timer matches 0 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 10 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 20 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 30 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 40 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 50 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 60 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 70 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 80 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 90 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
    execute if score @s frameNova.timer matches 100 run summon armor_stand ~ ~ ~ {Tags:["frame","fsummon"],Silent:true,Invisible:true,Invulnerable:true,Marker:false}
spreadplayers ~ ~ 1 10 false @e[type=armor_stand,tag=fsummon]
execute as @e[type=armor_stand,tag=fsummon] at @s run tp @s ~ ~20 ~
tag @e[type=armor_stand,tag=fsummon] remove fsummon
execute if score @s frameNova.timer matches 100.. run function firo:plus_items/frame_nova/end