effect give @a night_vision infinite 1 true
execute as @a unless score @s player.team matches 4 run gamemode adventure @s
gamemode spectator @a[scores={player.team=4}]
scoreboard players set @s respawn.timer 0
clear @a gold_nugget[custom_data={isCI:true}]
scoreboard players set count cs.item.count 0
tp @a 23 -59 26
playsound entity.experience_orb.pickup block @a

#アイテム購入時間
scoreboard players set time game.timer 3600
scoreboard players set mode game.flag 0
scoreboard players set ready game.flag 0
scoreboard players add phase game.phase 1
worldborder center 0 0
worldborder set 1000

#ボスバー設定
bossbar set minecraft:time name "制限時間"
bossbar set minecraft:time color green
bossbar set minecraft:time max 3600
bossbar set minecraft:time visible true

#フェーズ
title @a times 0 100 0
title @a title {"bold":true,"color":"white","text":"アイテム購入"}
title @p subtitle {"bold":true,"color":"white","text":"制限時間:３分"}
tellraw @a ["",{"text":"\u30a2\u30a4\u30c6\u30e0\u9078\u629e\u304c\u5b8c\u4e86\u3057\u305f\u3089"},\
            {"text":"\u300c\u3053\u3053\u300d","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function firo:game/select_ready"}},\
            {"text":"\u3092\u30af\u30ea\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\uff01\uff01"}]