function firo:sign/clear
setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"1m","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time/set {value:1200}"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"3m","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time/set {value:3600}"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"5m","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time/set {value:6000}"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"7m","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time/set {value:8400}"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"10m","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/battle_setting/time/set {value:12000}"}}','{"text":""}','{"text":""}']}} destroy