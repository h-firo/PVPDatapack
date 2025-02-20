execute store result score @s cs.count run clear @s gold_nugget[custom_data={isCI:true}] 0
execute if score @s cs.count matches 0 run scoreboard players set @s cs.timer 0
execute if score @s cs.count matches 0 run return fail
execute if score @s player.team matches 0 run scoreboard players operation red cs.point += @s cs.count
execute if score @s player.team matches 1 run scoreboard players operation blue cs.point += @s cs.count
execute if score @s player.team matches 2 run scoreboard players operation green cs.point += @s cs.count
execute if score @s player.team matches 3 run scoreboard players operation yellow cs.point += @s cs.count
clear @s gold_nugget[custom_data={isCI:true}]
function firo:collect_spot/collect_effect
scoreboard players set @s cs.timer 0
scoreboard players set @s cs.count 0