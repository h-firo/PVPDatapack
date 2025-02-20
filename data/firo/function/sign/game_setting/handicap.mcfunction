function firo:sign/clear
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"なし","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/handicap/none"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"オート","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/handicap/auto"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"手動","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/handicap/manual"}}','{"text":""}','{"text":""}']}} destroy
