function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"10pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/start/set {point:10}"}}','{"text":""}','{"text":""}']}} destroy

setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"20pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/start/set {point:20}"}}','{"text":""}','{"text":""}']}} destroy

setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"30pt","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/point/start/set {point:30}"}}','{"text":""}','{"text":""}']}} destroy