#浮遊
scoreboard players set @s player.useItem 2
playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 2
scoreboard players set @s energy.flag 1
scoreboard players set @s right_click 0
scoreboard players set @s energy.timer 0
effect give @s levitation 1 5 false
