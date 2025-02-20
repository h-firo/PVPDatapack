scoreboard players set @s block.maxLife 70
setblock ~ ~ ~ mud_bricks
playsound block.mud_bricks.place block @a ~ ~ ~ 1
summon armor_stand ~ ~ ~ {Tags:["blockJudge"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @s block.isInit 1