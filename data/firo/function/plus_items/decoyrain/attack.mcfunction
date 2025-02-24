playsound minecraft:block.sculk_shrieker.break ambient @a ~ ~ ~ 1
particle dust{color:[0.451,0.161,0.439],scale:1} ~ ~ ~ 1 1 1 0 50
execute as @e[distance=..4,type=!item_frame] run damage @s 6 magic
kill @s