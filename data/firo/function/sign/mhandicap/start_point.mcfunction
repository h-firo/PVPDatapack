function firo:sign/clear_handicap
setblock 44 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"ハンデなし","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point/set {point:0}"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"+10pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point/set {point:10}"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"+20pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point/set {point:20}"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-10pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point/set {point:-10}"}}','{"text":""}','{"text":""}']}} destroy
setblock 48 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"-20pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point/set {point:-20}"}}','{"text":""}','{"text":""}']}} destroy