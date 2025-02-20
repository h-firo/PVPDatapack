function firo:sign/clear_handicap
setblock 46 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"手動ハンデ設定","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap"}}','{"text":""}','{"text":""}']}} replace