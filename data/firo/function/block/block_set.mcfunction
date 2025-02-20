execute if block ~ ~ ~ #firo:lequid run kill @n[type=armor_stand,tag=blockJudge]
execute if block ~ ~ ~ #firo:lequid run kill @s
execute if block ~ ~ ~ #firo:lequid run return fail

execute if entity @s[tag=dirt] run function firo:block/set/dirt
execute if entity @s[tag=planks] run function firo:block/set/planks
execute if entity @s[tag=stone] run function firo:block/set/stone
execute if entity @s[tag=smooth_stone] run function firo:block/set/smooth_stone
execute if entity @s[tag=mud_bricks] run function firo:block/set/mud_bricks
execute if entity @s[tag=bricks] run function firo:block/set/bricks
execute if entity @s[tag=obsidian] run function firo:block/set/obsidian