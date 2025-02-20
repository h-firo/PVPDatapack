execute if score @s bp_nowTeam matches 0 run scoreboard players add red bp_point 1
execute if score @s bp_nowTeam matches 1 run scoreboard players add blue bp_point 1
execute if score @s bp_nowTeam matches 2 run scoreboard players add green bp_point 1
execute if score @s bp_nowTeam matches 3 run scoreboard players add yellow bp_point 1
scoreboard players set @s bp_needRecalculation 0