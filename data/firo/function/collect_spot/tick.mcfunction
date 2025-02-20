scoreboard players add time cs.item.timer 1
execute if score time cs.item.timer matches 100.. if score count cs.item.count matches ..10 run function firo:collect_spot/collect_item/summon
execute as @a[gamemode=adventure,scores={sneak=1},distance=..1] run scoreboard players add @s cs.timer 1
execute as @a[gamemode=adventure,scores={sneak=1},distance=..1] if score @s cs.timer matches 40.. at @s run function firo:collect_spot/collect