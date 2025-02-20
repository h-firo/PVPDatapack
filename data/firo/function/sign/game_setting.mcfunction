function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"バトル設定","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/game_setting/battle_setting"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"バトルルール","color":"dark_blue","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/game_setting/battle_rule"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"アイテム設定","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/game_setting/item"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ハンデ設定","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/game_setting/handicap"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ポイント設定","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/game_setting/point"}}','{"text":""}','{"text":""}']}} destroy