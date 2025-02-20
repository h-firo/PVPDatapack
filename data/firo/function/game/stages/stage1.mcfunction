execute unless score rule game.settings matches 1 run place template stage1_c 23 -60 90
execute if score rule game.settings matches 1 run place template stage1_a 23 -60 90
execute if score rule game.settings matches 1 run bossbar set area_blocks max 121
execute unless score rule game.settings matches 1 run place template stage1_2_c 13 -60 106
execute if score rule game.settings matches 0 run function firo:game/stages/colony/stage1
execute if score rule game.settings matches 2 run function firo:game/stages/collect/stage1
worldborder center 40 109
worldborder set 60
spreadplayers 40 109 10 20 under -52 false @a
setworldspawn 40 -49 109