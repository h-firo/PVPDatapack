execute unless score rule game.settings matches 1 run place template stage5-1-n 243 -60 168
execute if score rule game.settings matches 1 run place template stage5-1-a 243 -60 168
execute if score rule game.settings matches 1 run bossbar set area_blocks max 40
place template stage5-2-n 291 -60 168
execute if score rule game.settings matches 0 run function firo:game/stages/colony/stage4
execute if score rule game.settings matches 2 run function firo:game/stages/collect/stage4
worldborder center 285 192
worldborder set 90
#スポーン位置固定
execute as @a[scores={player.team=0}] run spreadplayers 323 200 0 1 false @s
execute as @a[scores={player.team=1}] run spreadplayers 247 183 0 1 false @s
execute as @a[scores={player.team=2}] run spreadplayers 285 175 0 1 false @s
execute as @a[scores={player.team=3}] run spreadplayers 285 208 0 1 false @s
setworldspawn 47 -60 195