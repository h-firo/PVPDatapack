#ポイントカウンタ呼び出し
summon armor_stand 54 -59 37 {Tags:["point_counter","red"]}
summon armor_stand 54 -59 35 {Tags:["point_counter","yellow"]}
summon armor_stand 54 -59 33 {Tags:["point_counter","blue"]}
summon armor_stand 54 -59 31 {Tags:["point_counter","green"]}
execute as @e[type=armor_stand,tag=red] run scoreboard players operation @s hunt.emeraldCount = red hunt.emeraldCount
execute as @e[type=armor_stand,tag=yellow] run scoreboard players operation @s hunt.emeraldCount = yellow hunt.emeraldCount
execute as @e[type=armor_stand,tag=blue] run scoreboard players operation @s hunt.emeraldCount = blue hunt.emeraldCount
execute as @e[type=armor_stand,tag=green] run scoreboard players operation @s hunt.emeraldCount = green hunt.emeraldCount

scoreboard players reset * temp
scoreboard players set @e[type=armor_stand,tag=point_counter] satistics.rank 0

execute as @e[type=armor_stand,tag=point_counter] run scoreboard players operation 1st temp > @s hunt.emeraldCount
execute as @e[type=armor_stand,tag=point_counter] run scoreboard players operation @s temp = @s hunt.emeraldCount

execute as @e[type=armor_stand,tag=point_counter] run scoreboard players operation @s temp -= 1st temp
execute as @e[type=armor_stand,tag=point_counter,scores={temp=0}] run scoreboard players set @s satistics.rank 1

# 1位のエンティティを除外
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation 2nd temp > @s hunt.emeraldCount
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation @s temp = @s hunt.emeraldCount

execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation @s temp -= 2nd temp
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0,temp=0}] run scoreboard players set @s satistics.rank 2

# 1位と2位のエンティティを除外
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation 3rd temp > @s hunt.emeraldCount
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation @s temp = @s hunt.emeraldCount

execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0}] run scoreboard players operation @s temp -= 3rd temp
execute as @e[type=armor_stand,tag=point_counter,scores={satistics.rank=0,temp=0}] run scoreboard players set @s satistics.rank 3
