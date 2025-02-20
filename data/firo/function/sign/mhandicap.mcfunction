execute unless entity @e[x=43,z=11,dx=7,dz=4,type=!item] run return run function firo:exception {content:"Player is not found"}
function firo:sign/clear_handicap
setblock 46 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"初期ポイント","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/start_point"}}','{"text":""}','{"text":""}']}} replace
setblock 44 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"キルポイント","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/death_point"}}','{"text":""}','{"text":""}']}} replace
setblock 48 -59 16 oak_sign[rotation=0]\
{front_text:{messages:['{"text":""}','{"text":"効果","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/mhandicap/effect"}}','{"text":""}','{"text":""}']}} replace