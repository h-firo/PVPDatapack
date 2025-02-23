execute unless score rule game.settings matches 1 run place template stage4-2-n 31 -61 176
execute if score rule game.settings matches 1 run place template stage4-2-a 31 -61 176
execute if score rule game.settings matches 1 run bossbar set area_blocks max 196
place template stage4-1-n 17 -60 161
place template stage4-3-n 31 -60 161
execute if score rule game.settings matches 0 run function firo:game/stages/colony/stage4
execute if score rule game.settings matches 2 run function firo:game/stages/collect/stage4
worldborder center 47 195
worldborder set 60
spreadplayers 47 195 10 20 under -20 false @a
setworldspawn 47 -60 195