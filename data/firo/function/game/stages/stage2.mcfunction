execute unless score rule game.settings matches 1 run place template stage2-1-c -78 -58 116
execute unless score rule game.settings matches 1 run place template stage2-2-c -29 -58 116
execute unless score rule game.settings matches 1 run place template stage2-3-c -78 -58 164
execute unless score rule game.settings matches 1 run place template stage2-4-c -29 -58 164
execute if score rule game.settings matches 0 run function firo:game/stages/colony/stage2
execute if score rule game.settings matches 2 run function firo:game/stages/collect/stage2
worldborder center -40 155
worldborder set 80
spreadplayers -44 159 10 30 under -51 false @a
setworldspawn -44 -48 159