function firo:sign/clear_handicap
setblock 44 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"ハンデなし","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point/set {point:0}"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-2pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point/set {point:-2}"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-4pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point/set {point:-4}"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-8pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point/set {point:-8}"}}','{"text":""}','{"text":""}']}} destroy
setblock 48 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-10pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point/set {point:-10}"}}','{"text":""}','{"text":""}']}} destroy