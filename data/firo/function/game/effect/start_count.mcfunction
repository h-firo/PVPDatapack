title @a times 0 100 0
execute if score count game.timer matches 140.. run return fail

execute if score count game.timer matches 60 run \
execute as @a at @s run playsound minecraft:block.note_block.pling master @s
execute if score count game.timer matches 41..60 run return run \
title @a title {"color":"yellow","text":"3"}

execute if score count game.timer matches 40 run \
execute as @a at @s run playsound minecraft:block.note_block.pling master @s
execute if score count game.timer matches 21..40 run return run \
title @a title {"color":"gold","text":"2"}

execute if score count game.timer matches 20 run \
execute as @a at @s run playsound minecraft:block.note_block.pling master @s
execute if score count game.timer matches 1..20 run return run \
title @a title {"color":"red","text":"1"}

execute if score count game.timer matches 0 run \
execute as @a at @s run playsound minecraft:entity.player.levelup master @s
execute if score count game.timer matches ..0 run return run \
function firo:game/effect/game_start
