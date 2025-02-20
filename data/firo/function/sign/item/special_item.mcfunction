scoreboard players set si sign.sucFlag 0
execute store success score si sign.sucFlag if score special_item game.settings matches 0 run \
scoreboard players set special_item game.settings 1
execute if score special_item game.settings matches 1 unless score si sign.sucFlag matches 1 run \
scoreboard players set special_item game.settings 0

execute if score special_item game.settings matches 0 run setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"特殊アイテム","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/special_item"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score special_item game.settings matches 1 run setblock 47 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"特殊アイテム","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/special_item"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score special_item game.settings matches 0 run \
tellraw @a ["",{"text":"\u7279\u6b8a\u30a2\u30a4\u30c6\u30e0","color":"gold","hoverEvent":{"action":"show_text","contents":"\u30c7\u30fc\u30bf\u30d1\u30c3\u30af\u3067\u8ffd\u52a0\u3055\u308c\u308b\u3001\u5168\u4f53\u7684\u306b\u5f37\u3081\u306e\u30a2\u30a4\u30c6\u30e0\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u308b","color":"green"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]
execute if score special_item game.settings matches 1 run \
tellraw @a ["",{"text":"\u7279\u6b8a\u30a2\u30a4\u30c6\u30e0","color":"gold","hoverEvent":{"action":"show_text","contents":"\u30c7\u30fc\u30bf\u30d1\u30c3\u30af\u3067\u5c0e\u5165\u3055\u308c\u305f\u3001\u5168\u4f53\u7684\u306b\u5f37\u3081\u306e\u30a2\u30a4\u30c6\u30e0\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u306a\u3044","color":"red"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]