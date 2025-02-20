#セカンドポイント付与
execute if entity @s[tag=red] as @a[scores={player.team=0}] run \
scoreboard players operation @s game.give_point += w3p game.settings
execute if entity @s[tag=blue] as @a[scores={player.team=1}] run \
scoreboard players operation @s game.give_point += w3p game.settings
execute if entity @s[tag=green] as @a[scores={player.team=2}] run \
scoreboard players operation @s game.give_point += w3p game.settings
execute if entity @s[tag=yellow] as @a[scores={player.team=3}] run \
scoreboard players operation @s game.give_point += w3p game.settings
execute as @a run scoreboard players operation @s point += @s game.give_point
execute as @a unless score @s game.give_point matches 0 run tellraw @s ["",{"text":"\u3042\u306a\u305f\u304c\u7372\u5f97\u3057\u305f"},\
            {"text":"Third Point","color":"#FF6D45"},\
            {"text":"\u306f"},\
            {"score":{"name":"@s","objective":"game.give_point"}},\
            {"text":"pt\u3067\u3059"}]
scoreboard players set @a game.give_point 0