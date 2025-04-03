function firo:clearentity
effect give @a night_vision infinite 1 true
effect give @a instant_health 1 10 true
effect give @a saturation 10 255 true
execute as @a unless score @s player.team matches 4 run gamemode adventure @s
gamemode spectator @a[scores={player.team=4}]
scoreboard players set @s respawn.timer 0
clear @a gold_nugget[custom_data={isCI:true}]
scoreboard players set count cs.item.count 0
tp @a 23 -59 26
playsound entity.experience_orb.pickup block @a
function firo:collect_spot/clear

#アイテム購入時間
scoreboard players set time game.timer 3600
scoreboard players set mode game.flag 0
scoreboard players set ready game.flag 0
scoreboard players add phase game.phase 1
scoreboard players set @a rush.rushPoint 0
scoreboard players set @a rush.timer 0
scoreboard players set @a rush.canAddPoint 0
worldborder center 0 0
worldborder set 1000

#ルールがランダムの時
execute if score is game.isRandomRule matches 1 run function firo:game/random_rule
execute if score rule game.settings matches 4 run function firo:game/random_rule

#ボスバー設定
bossbar set minecraft:time name "制限時間"
bossbar set minecraft:time color green
bossbar set minecraft:time max 3600
bossbar set minecraft:time visible true

#フェーズ
title @a times 0 100 0
title @a title {"bold":true,"color":"white","text":"アイテム購入"}
title @p subtitle {"bold":true,"color":"white","text":"制限時間:３分"}
execute as @a unless score @s player.team matches 4 run \
tellraw @s ["",{"text":"\u30a2\u30a4\u30c6\u30e0\u9078\u629e\u304c\u5b8c\u4e86\u3057\u305f\u3089"},\
            {"text":"\u300c\u3053\u3053\u300d","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function firo:game/select_ready"}},\
            {"text":"\u3092\u30af\u30ea\u30c3\u30af\u3057\u3066\u304f\u3060\u3055\u3044\uff01\uff01"}]

#ボスバトルモードの場合、ボスを決める
execute if score game_mode game.settings matches 0 run return fail
tag @a remove boss
execute as @a run attribute @s movement_speed modifier remove boss_speed
execute as @a run attribute @s attack_damage modifier remove boss_damage
execute as @a run attribute @s max_health modifier remove boss_health
tag @r add boss
tellraw @a [{"selector": "@a[tag=boss]","color": "gold"},{"text": "がボスになりました！","color": "white"}]
attribute @p[tag=boss] movement_speed modifier add boss_speed 0.17 add_value
attribute @p[tag=boss] attack_damage modifier add boss_damage 3 add_value
attribute @p[tag=boss] max_health modifier add boss_health 20 add_value
clear @a #firo:special_items
scoreboard players operation @p[tag=boss] point += wp game.settings