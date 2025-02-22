kill @e[type=armor_stand,tag=collectSpot]
execute as @e[type=armor_stand,tag=goldSummon] at @s run setblock ~ ~ ~ air destroy
kill @e[type=item]
kill @e[type=armor_stand,tag=goldSummon]