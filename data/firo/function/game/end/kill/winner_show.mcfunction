#勝者表示
execute if entity @s[tag=red] run \
tellraw @a ["",{"text":"Red Team","color":"red"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
execute if entity @s[tag=blue] run \
tellraw @a ["",{"text":"Blue Team","color":"blue"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
execute if entity @s[tag=yellow] run \
tellraw @a ["",{"text":"Yellow Team","color":"yellow"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
execute if entity @s[tag=green] run \
tellraw @a ["",{"text":"Green Team","color":"green"},\
            {"text":"\u304c\u52dd\u5229\u3057\u307e\u3057\u305f\uff01\uff01"}]
#一覧表示
tellraw @a ["",{"text":"--\u30d0\u30c8\u30eb\u7d50\u679c-------\n"},\
            {"text":"Red Team","color":"red"},{"text":"...#"},\
            {"score":{"name":"@e[type=armor_stand,tag=red]","objective":"satistics.rank"}},\
            {"text":"\n"},{"text":"Blue Team","color":"blue"},{"text":"...#"},\
            {"score":{"name":"@e[type=armor_stand,tag=blue]","objective":"satistics.rank"}},\
            {"text":"\n"},{"text":"Green Team","color":"green"},{"text":"...#"},\
            {"score":{"name":"@e[type=armor_stand,tag=green]","objective":"satistics.rank"}},\
            {"text":"\n"},{"text":"Yellow Team","color":"yellow"},{"text":"...#"},\
            {"score":{"name":"@e[type=armor_stand,tag=yellow]","objective":"satistics.rank"}},\
            {"text": "\n----------------"}]
#デスポイント付与
execute as @a run scoreboard players operation @s game.give_point = @s deathCount
execute as @a run scoreboard players operation @s game.give_point *= kp game.settings
execute as @a run scoreboard players operation @s point += @s game.give_point
execute as @a run scoreboard players operation @s totalDeathCount = @s deathCount
scoreboard players set @a deathCount 0
execute as @a run tellraw @s ["",{"text":"\u3042\u306a\u305f\u304c\u7372\u5f97\u3057\u305f"},\
            {"text":"Death Point","color":"blue"},\
            {"text":"\u306f"},\
            {"score":{"name":"@s","objective":"game.give_point"}},\
            {"text":"pt\u3067\u3059"}]
scoreboard players set @a game.give_point 0

#ウィンポイント付与
execute if entity @s[tag=red] as @a[scores={player.team=0}] run \
scoreboard players operation @s game.give_point += wp game.settings
execute if entity @s[tag=blue] as @a[scores={player.team=1}] run \
scoreboard players operation @s game.give_point += wp game.settings
execute if entity @s[tag=green] as @a[scores={player.team=2}] run \
scoreboard players operation @s game.give_point += wp game.settings
execute if entity @s[tag=yellow] as @a[scores={player.team=3}] run \
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
execute if entity @s[tag=green] run scoreboard players add green satistics.winCount 1
execute if entity @s[tag=yellow] run scoreboard players add yellow satistics.winCount 1
