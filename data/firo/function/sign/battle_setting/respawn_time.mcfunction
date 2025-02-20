function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"なし","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time/set {value:0}"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"3s","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time/set {value:60}"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"5s","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time/set {value:100}"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"7s","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time/set {value:140}"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"10s","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/respawn_time/set {value:200}"}}','{"text":""}','{"text":""}']}} destroy