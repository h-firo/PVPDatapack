scoreboard players set @s right_click 0
clear @s carrot_on_a_stick[custom_data={isDecoyRain:true}] 1
playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 2
execute if entity @s[team=red] run return run function firo:plus_items/decoyrain/summon {team:"red"}
execute if entity @s[team=green] run return run function firo:plus_items/decoyrain/summon {team:"green"}
execute if entity @s[team=blue] run return run function firo:plus_items/decoyrain/summon {team:"blue"}
execute if entity @s[team=yellow] run return run function firo:plus_items/decoyrain/summon {team:"yellow"}

#どのチームにも所属していないときの処理
execute store result storage game: team int 1 run scoreboard players get team game.tempNum
function firo:plus_items/decoyrain/macro/add_team with storage game: