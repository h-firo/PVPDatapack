#タイトル表示
execute if entity @s[tag=red] run title @a title {"color":"red","text": "ゲーム終了！！"}
execute if entity @s[tag=blue] run title @a title {"color":"blue","text": "ゲーム終了！！"}
execute if entity @s[tag=green] run title @a title {"color":"green","text": "ゲーム終了！！"}
execute if entity @s[tag=yellow] run title @a title {"color":"yellow","text": "ゲーム終了！！"}

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