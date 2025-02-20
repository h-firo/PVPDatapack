scoreboard players set time cs.item.timer 0
summon armor_stand 55 -60 27 {Marker:true,Invisible:true,Invulnerable:true,Silent:true,Tags:["goldSummon","gst"]}
execute if score stage game.settings matches 1 run \
spreadplayers 40 109 10 20 under -52 false @e[type=armor_stand,tag=gst]
execute if score stage game.settings matches 2 run \
spreadplayers -44 159 10 30 under -51 false @e[type=armor_stand,tag=gst]
execute if score stage game.settings matches 3 run \
spreadplayers -21 67 10 8 under -38 false @e[type=armor_stand,tag=gst]
execute as @e[type=armor_stand,tag=gst] at @s if block ~ ~ ~ #firo:lequid run kill @s
execute as @e[type=armor_stand,tag=gst] at @s run setblock ~ ~ ~ barrel{LootTable:"firo:gold_chest"}
execute as @e[type=armor_stand,tag=gst] run tag @s remove gst
scoreboard players add count cs.item.count 1