scoreboard players set ni sign.sucFlag 0
execute store success score ni sign.sucFlag if score normal_item game.settings matches 0 run \
scoreboard players set normal_item game.settings 1
execute if score normal_item game.settings matches 1 unless score ni sign.sucFlag matches 1 run \
scoreboard players set normal_item game.settings 0

execute if score normal_item game.settings matches 0 run setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"通常アイテム","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/normal_item"}}','{"text":"購入できる","color":"green","bold":true}','{"text":""}']}} destroy
execute if score normal_item game.settings matches 1 run setblock 48 -59 38 oak_sign[rotation=8]\
{front_text:{messages:['{"text":""}','{"text":"通常アイテム","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/function firo:sign/item/normal_item"}}','{"text":"購入できない","color":"red","bold":true}','{"text":""}']}} destroy

execute if score normal_item game.settings matches 0 run \
tellraw @a ["",{"text":"\u30ce\u30fc\u30de\u30eb\u30a2\u30a4\u30c6\u30e0","color":"gray","hoverEvent":{"action":"show_text","contents":"\u30d0\u30cb\u30e9\u306b\u5b58\u5728\u3059\u308b\u3001\u4e00\u822c\u7684\u306a\u30a2\u30a4\u30c6\u30e0\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u308b","color":"green"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]
execute if score normal_item game.settings matches 1 run \
tellraw @a ["",{"text":"\u30ce\u30fc\u30de\u30eb\u30a2\u30a4\u30c6\u30e0","color":"gray","hoverEvent":{"action":"show_text","contents":"\u30d0\u30cb\u30e9\u306b\u5b58\u5728\u3059\u308b\u3001\u4e00\u822c\u7684\u306a\u30a2\u30a4\u30c6\u30e0\u3002"}},{"text":"\u304c"},{"text":"\u8cfc\u5165\u3067\u304d\u306a\u3044","color":"red"},{"text":"\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f"}]