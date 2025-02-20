function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"制限時間","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ストック","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/area"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"チームストック","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/collection"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"フェーズ数","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/phase"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"復活待機時間","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time"}}','{"text":""}','{"text":""}']}} destroy