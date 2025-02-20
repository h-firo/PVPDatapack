scoreboard players set block sign.sucFlag 0
execute store success score block sign.sucFlag if score block game.settings matches 0 run \
scoreboard players set block game.settings 1
execute if score block game.settings matches 1 unless score block sign.sucFlag matches 1 run \
scoreboard players set block game.settings 0

execute if score block game.settings matches 0 run setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ブロック","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/block"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score block game.settings matches 1 run setblock 45 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"ブロック","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/block"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score block game.settings matches 0 run \
tellraw @a ["",{"text":"\u30d6\u30ed\u30c3\u30af","color":"dark_green","hoverEvent":{"action":"show_text","contents":"\u3069\u3053\u306b\u3067\u3082\u8a2d\u7f6e\u3067\u304d\u308b\u304c\u3001\u4e00\u5b9a\u6642\u9593\u305f\u3064\u3068\u81ea\u52d5\u3067\u7834\u58ca\u3055\u308c\u308b\u30d6\u30ed\u30c3\u30af\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u308b","color":"green"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]
execute if score block game.settings matches 1 run \
tellraw @a ["",{"text":"\u30d6\u30ed\u30c3\u30af","color":"dark_green","hoverEvent":{"action":"show_text","contents":"\u3069\u3053\u306b\u3067\u3082\u8a2d\u7f6e\u3067\u304d\u308b\u304c\u3001\u4e00\u5b9a\u6642\u9593\u305f\u3064\u3068\u81ea\u52d5\u3067\u7834\u58ca\u3055\u308c\u308b\u30d6\u30ed\u30c3\u30af\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u306a\u3044","color":"red"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]