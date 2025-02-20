function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"初期ポイント","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/start"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"キルポイント","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/kill"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ウィンポイント","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/flap"}}','{"text":""}','{"text":""}']}} destroy