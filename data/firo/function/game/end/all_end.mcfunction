function firo:game/ranksets/win_count
clear @a
gamemode adventure @a
team leave @a
execute as @e[type=armor_stand,tag=point_counter] if score @s satistics.rank matches 1 run \
function firo:game/end/all_winner_show
function firo:reset_score_nosettings
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar
tp @a 46 -59 27
setworldspawn 46 -59 27
worldborder center 0 0
worldborder set 1000
kill @e[type=armor_stand,tag=point_counter]