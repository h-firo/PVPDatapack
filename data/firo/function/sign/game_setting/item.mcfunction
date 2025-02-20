function firo:sign/clear
execute if score normal_item game.settings matches 0 run setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"通常アイテム","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/normal_item"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score normal_item game.settings matches 1 run setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"通常アイテム","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/normal_item"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score special_item game.settings matches 0 run setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"特殊アイテム","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/special_item"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score special_item game.settings matches 1 run setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"特殊アイテム","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/special_item"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score custom_enchant game.settings matches 0 run setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"カスタムエンチャント","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/custom_enchant"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score custom_enchant game.settings matches 1 run setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"カスタムエンチャント","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/custom_enchant"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score custom_enchant game.settings matches 0 run setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ブロック","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/block"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score custom_enchant game.settings matches 1 run setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ブロック","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/block"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

setblock 44 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"戻る","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/back"}}','{"text":""}','{"text":""}']}} destroy