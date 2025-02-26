particle explosion ~ ~ ~ 1 1 1 0 3
playsound entity.generic.explode master @a ~ ~ ~
execute as @a[distance=..2] run damage @s 20 firo:trap
setblock ~ ~ ~ cobweb keep
kill @s