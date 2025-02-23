#アースバーン
execute if score @s rush.selectItem matches 0 run function firo:items/earthburn/1 {count:0}
#エナジーポーション
execute if score @s rush.selectItem matches 1 run function firo:items/energy_potion/give
#エナジーショット
execute if score @s rush.selectItem matches 2 run \
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"color":"aqua","text":"Energy Shot"}',\
lore=['"一定時間空中を浮遊し、エネルギーをためる"','"ためたエネルギーは、エネルギー弾となって、着弾時に爆発を起こす"'],\
custom_data={isEnergyShot:true},custom_model_data=2]
execute if score @s rush.selectItem matches 2 run function firo:item_rush/give_rushitem {SelectItem:"エナジーショット"}
#ミサイル
execute if score @s rush.selectItem matches 3 run function firo:items/missile/give
#煙幕
execute if score @s rush.selectItem matches 4 run function firo:items/smoke/give
#トラップ
execute if score @s rush.selectItem matches 5 run function firo:items/trap/give
#バッドポーション
execute if score @s rush.selectItem matches 6 run function firo:items/bad_potion/give
#バリア
execute if score @s rush.selectItem matches 7 run function firo:items/barrier/take_barrier
#ハイパーレーザー
execute if score @s rush.selectItem matches 8 run function firo:plus_items/hyper_laser/give
#デコイレイン
execute if score @s rush.selectItem matches 9 run function firo:plus_items/decoyrain/setteam
#ライトニングスピア
execute if score @s rush.selectItem matches 10 run function firo:plus_items/lightning_spear/start
#エコーバースト
execute if score @s rush.selectItem matches 11 run function firo:plus_items/echo_burst/burst

scoreboard players set @s rush.canAddPoint 1
scoreboard players set @s rush.rushPoint 0