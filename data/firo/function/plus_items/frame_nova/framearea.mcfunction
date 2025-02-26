$execute as @e[distance=..5,type=!item_frame] unless entity @s[level=$(Health)] run damage @s 10 firo:flame by @a[level=$(Health),limit=1]
scoreboard players add @s frameNova.expandTimer 1
particle flame ~ ~ ~ 3 1 3 0 10