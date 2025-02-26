#クリック時の処理
function firo:game/givelevel
execute as @a unless score @s player.team matches 4 run gamemode adventure @s
gamemode spectator @a[scores={player.team=4}]
clear @a
execute if score count game.playerCount matches 1 run return run \
function firo:exception {content:"一人ではプレイできません"}
scoreboard players set @a point 0
scoreboard players set phase game.phase 0
scoreboard players set red satistics.winCount 0
scoreboard players set blue satistics.winCount 0
scoreboard players set green satistics.winCount 0
scoreboard players set yellow satistics.winCount 0
#ランダムなチーム分け
function firo:game/random_team/assign_teams
#スタートポイント付与
scoreboard players operation @a point += sp game.settings
tellraw @a ["",{"text":"\u5168\u54e1\u306b"},\
            {"text":"Start Point","color":"blue"},\
            {"text":"\u304c"},\
            {"score":{"name":"sp","objective":"game.settings"}},\
            {"text":"pt\u4ed8\u4e0e\u3055\u308c\u307e\u3057\u305f"}]
execute if score rule game.settings matches 0 as @a run function firo:game/items/pickaxe/give
execute if score rule game.settings matches 1 as @a run function firo:game/items/paint_lod/give
execute unless score rule game.settings matches 1 run bossbar set area_blocks visible false
execute if score rule game.settings matches 1 run bossbar set area_blocks visible true
#初期装備付与
loot give @a loot firo:start_equip
execute as @a run function firo:game/give_food
execute as @a run function firo:game/give_block
#エフェクト
effect give @a instant_health 1 10 true
effect give @a saturation 10 255 true

#装備選択場所にテレポート
playsound block.wooden_button.click_on block @a ~ ~ ~ 1
function firo:game/weapon_select