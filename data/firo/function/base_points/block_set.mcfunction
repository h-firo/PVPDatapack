fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 obsidian replace
setblock ~ ~-1 ~ crying_obsidian replace
setblock ~ ~-2 ~ repeating_command_block\
{powered:0b,auto:1b,conditionMet:1b,Command:"function firo:base_points/tick"} replace
data merge entity @n[type=armor_stand,tag=colony] {Invulnerable:true,Marker:true}
scoreboard players set @s bp_initFlag 1