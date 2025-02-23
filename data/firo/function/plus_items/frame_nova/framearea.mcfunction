execute as @e[distance=..5] run damage @s 10 on_fire
scoreboard players add @s frameNova.expandTimer 1
particle flame ~ ~ ~ 3 1 3 0 10