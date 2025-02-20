function firo:sign/clear
function firo:sign/settings
$scoreboard players set kp game.settings $(point)
tellraw @a ["",{"text":"\u30ad\u30eb\u30dd\u30a4\u30f3\u30c8","color":"dark_red","hoverEvent":{"action":"show_text","contents":"\u30ad\u30eb\u3057\u305f\u3068\u304d\u306b\u5f97\u3089\u308c\u308b\u30dd\u30a4\u30f3\u30c8"}},{"text":"\u3092"},{"score":{"name":"kp","objective":"game.settings"}},{"text":"pt\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f"}]