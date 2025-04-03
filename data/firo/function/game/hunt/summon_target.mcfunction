summon armor_stand ~ ~ ~ {Tags:["huntTarget"],Invisible:true,Invulnerable:true,Silent:true,Marker:true}
execute if score stage game.settings matches 1 run \
spreadplayers 40 109 10 20 under -52 false @e[type=armor_stand,tag=huntTarget]
execute if score stage game.settings matches 2 run \
spreadplayers -44 159 10 30 under -51 false @e[type=armor_stand,tag=huntTarget]
execute if score stage game.settings matches 3 run \
spreadplayers -21 67 10 8 under -38 false @e[type=armor_stand,tag=huntTarget]
execute if score stage game.settings matches 4 run \
spreadplayers 47 195 10 20 under -20 false @e[type=armor_stand,tag=huntTarget]
execute if score stage game.settings matches 5 run \
spreadplayers 285 191 10 23 under -20 false @e[type=armor_stand,tag=huntTarget]
execute at @e[type=armor_stand,tag=huntTarget] run summon block_display ~-0.25 ~ ~-0.25 {Tags:["huntTarget.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:emerald_block"}}
execute at @e[type=armor_stand,tag=huntTarget] run summon block_display ~-0.1 ~ ~-0.1 {Tags:["huntTarget.display2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,100f,0.2f]},block_state:{Name:"minecraft:lime_stained_glass"}}