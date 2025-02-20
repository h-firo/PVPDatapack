function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"Colony","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/colony"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"Area","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/area"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"Collection","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/collection"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"Kill","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/kill"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"Battle Royale","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_rule/battle_royale"}}','{"text":""}','{"text":""}']}} destroy