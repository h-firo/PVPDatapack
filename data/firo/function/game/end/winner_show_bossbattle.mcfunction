#勝者表示
execute if entity @s[tag=red] run \
tellraw @a ["",{"text":"BOSS","color":"red"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
execute if entity @s[tag=blue] run \
tellraw @a ["",{"text":"逃走者","color":"blue"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
#キルポイント付与
execute as @a run scoreboard players operation @s game.give_point = @s killCount
execute as @a run scoreboard players operation @s game.give_point *= kp game.settings
execute as @a run scoreboard players operation @s point += @s game.give_point
execute as @a run scoreboard players operation @s totalKillCount = @s killCount
scoreboard players set @a killCount 0
execute as @a run tellraw @s ["",{"text":"\u3042\u306a\u305f\u304c\u7372\u5f97\u3057\u305f"},\
            {"text":"Kill Point","color":"dark_red"},\
            {"text":"\u306f"},\
            {"score":{"name":"@s","objective":"game.give_point"}},\
            {"text":"pt\u3067\u3059"}]
scoreboard players set @a game.give_point 0

#ウィンポイント付与
execute if entity @s[tag=red] as @a[scores={player.team=0}] run \
scoreboard players operation @s game.give_point += wp game.settings
execute if entity @s[tag=blue] as @a[scores={player.team=1}] run \
scoreboard players operation @s game.give_point += wp game.settings
execute as @a run scoreboard players operation @s point += @s game.give_point
execute as @a unless score @s game.give_point matches 0 run tellraw @s ["",{"text":"\u3042\u306a\u305f\u304c\u7372\u5f97\u3057\u305f"},\
            {"text":"Win Point","color":"gold"},\
            {"text":"\u306f"},\
            {"score":{"name":"@s","objective":"game.give_point"}},\
            {"text":"pt\u3067\u3059"}]
scoreboard players set @a game.give_point 0

#ウィンカウントを増加
execute if entity @s[tag=red] run scoreboard players add red satistics.winCount 1
execute if entity @s[tag=blue] run scoreboard players add blue satistics.winCount 1