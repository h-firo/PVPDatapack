scoreboard players set @s block.maxLife 80
setblock ~ ~ ~ oak_planks
playsound block.wood.place block @a ~ ~ ~ 1 0.8
summon armor_stand ~ ~ ~ {Tags:["blockJudge"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @s block.isInit 1