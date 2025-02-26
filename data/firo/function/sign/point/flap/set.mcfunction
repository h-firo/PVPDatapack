function firo:sign/clear
function firo:sign/settings
$scoreboard players set wp game.settings $(point)
scoreboard players operation w2p game.settings = wp game.settings
scoreboard players operation w3p game.settings = wp game.settings
scoreboard players operation w4p game.settings = wp game.settings
scoreboard players operation w2p game.settings *= 12 game.num
scoreboard players operation w3p game.settings *= 13 game.num
scoreboard players operation w4p game.settings *= 15 game.num
scoreboard players operation w2p game.settings /= 10 game.num
scoreboard players operation w3p game.settings /= 10 game.num
scoreboard players operation w4p game.settings /= 10 game.num
tellraw @a ["",{"text":"\u30a6\u30a3\u30f3\u30dd\u30a4\u30f3\u30c8","color":"gold","hoverEvent":{"action":"show_text","contents":"\u8a66\u5408\u306b\u52dd\u5229\u3057\u305f\u3068\u304d\u306b\u3001\u30c1\u30fc\u30e0\u5168\u54e1\u306b\u3082\u3089\u3048\u308b\u30dd\u30a4\u30f3\u30c8"}},{"text":"\u3092"},{"score":{"name":"wp","objective":"game.settings"}},{"text":"pt\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f"}]