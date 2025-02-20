function firo:sign/clear_handicap
setblock 43 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"ハンデなし","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/clear"}}','{"text":""}','{"text":""}']}} destroy
setblock 44 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"発光","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:glowing}"}}','{"text":""}','{"text":""}']}} destroy
setblock 45 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"移動速度上昇","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:speed}"}}','{"text":""}','{"text":""}']}} destroy
setblock 46 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"移動速度低下","color":"black","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:slowness}"}}','{"text":""}','{"text":""}']}} destroy
setblock 47 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"攻撃速度上昇","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:haste}"}}','{"text":""}','{"text":""}']}} destroy
setblock 48 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"攻撃速度低下","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:mining_fatigue}"}}','{"text":""}','{"text":""}']}} destroy
setblock 49 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"攻撃力低下","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect/set {id:weakness}"}}','{"text":""}','{"text":""}']}} destroy