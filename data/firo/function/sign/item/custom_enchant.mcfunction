scoreboard players set cs sign.sucFlag 0
execute store success score cs sign.sucFlag if score custom_enchant game.settings matches 0 run \
scoreboard players set custom_enchant game.settings 1
execute if score custom_enchant game.settings matches 1 unless score cs sign.sucFlag matches 1 run \
scoreboard players set custom_enchant game.settings 0

execute if score custom_enchant game.settings matches 0 run setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"カスタムエンチャント","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/custom_enchant"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score custom_enchant game.settings matches 1 run setblock 46 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"カスタムエンチャント","color":"dark_purple","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/custom_enchant"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score custom_enchant game.settings matches 0 run \
tellraw @a ["",{"text":"\u30ab\u30b9\u30bf\u30e0\u30a8\u30f3\u30c1\u30e3\u30f3\u30c8","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"\u7279\u6b8a\u306a\u52b9\u679c\u3092\u4ed8\u4e0e\u3067\u304d\u308b\u30a8\u30f3\u30c1\u30e3\u30f3\u30c8\uff08\u306e\u672c\uff09"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u308b","color":"green"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]
execute if score custom_enchant game.settings matches 1 run \
tellraw @a ["",{"text":"\u30ab\u30b9\u30bf\u30e0\u30a8\u30f3\u30c1\u30e3\u30f3\u30c8","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"\u7279\u6b8a\u306a\u52b9\u679c\u3092\u4ed8\u4e0e\u3067\u304d\u308b\u30a8\u30f3\u30c1\u30e3\u30f3\u30c8\uff08\u306e\u672c\uff09"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u306a\u3044","color":"red"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]