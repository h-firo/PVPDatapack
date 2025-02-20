function firo:sign/clear
function firo:sign/settings
$scoreboard players set sp game.settings $(point)
tellraw @a ["",{"text":"\u521d\u671f\u30dd\u30a4\u30f3\u30c8","color":"blue","hoverEvent":{"action":"show_text","contents":"\u8a66\u5408\u958b\u59cb\u6642\u306b\u5171\u901a\u3057\u3066\u3082\u3089\u3048\u308b\u30dd\u30a4\u30f3\u30c8"}},{"text":"\u3092"},{"score":{"name":"sp","objective":"game.settings"}},{"text":"pt\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f"}]