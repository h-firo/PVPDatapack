function firo:sign/clear
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"通常戦","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_mode/normal"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ボスバトル","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_mode/boss"}}','{"text":""}','{"text":""}']}} destroy