scoreboard players add @s decoy.timer 1
execute if score @s decoy.timer matches 100 run \
playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 1
execute if score @s decoy.timer matches 110 run \
playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 1.3
execute if score @s decoy.timer matches 120.. run \
playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 1 1.5
execute if score @s decoy.timer matches 140 run \
function firo:plus_items/decoyrain/attack