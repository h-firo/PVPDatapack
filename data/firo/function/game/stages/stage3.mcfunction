execute unless score rule game.settings matches 1 run place template stage3-c -38 -57 50
execute if score rule game.settings matches 1 run place template stage3-a -38 -57 50
execute if score rule game.settings matches 0 run function firo:game/stages/colony/stage3
execute if score rule game.settings matches 2 run function firo:game/stages/collect/stage3
worldborder center -21 67
worldborder set 60
spreadplayers -21 67 5 8 under -38 false @a
setworldspawn -21 -38 67