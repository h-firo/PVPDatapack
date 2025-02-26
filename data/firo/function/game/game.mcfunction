#スコア初期化
scoreboard players set mode game.flag 1
scoreboard players set ready game.flag 0
effect clear @a
execute as @a run attribute @s generic.gravity base set 0.08
scoreboard players set @a player.isSelectReady 0
scoreboard players set red bp_point 0
scoreboard players set blue bp_point 0
scoreboard players set green bp_point 0
scoreboard players set yellow bp_point 0
scoreboard players set red cs.point 0
scoreboard players set blue cs.point 0
scoreboard players set green cs.point 0
scoreboard players set yellow cs.point 0
scoreboard players set colonyNum bp_num 1
scoreboard players reset * game.area.timer
scoreboard players set owner game.area.owner 0
execute if score rule game.settings matches 2 run scoreboard objectives setdisplay below_name cs.point
title @a clear

#ステージに移動
execute if score stage game.settings matches 0 store result score stage game.settings run random value 1..5
function firo:game/move_stage
#動けなくする
effect give @a slowness 7 255 true 
#制限時間設定
scoreboard players operation time game.timer = time game.settings
scoreboard players set count game.timer 140
#ボスバー設定
bossbar set minecraft:time name "試合終了まで"
execute store result bossbar minecraft:time max run scoreboard players get time game.settings
bossbar set minecraft:time color red
#属性設定
execute as @a run attribute @s generic.step_height base set 0.6
#カウント

title @a times 0 100 0
function firo:game/effect/start_count