function firo:sign/clear
function firo:sign/settings
scoreboard players set rule game.settings 4
tellraw @a [{"text": "ルールが"},{"text": "ランダム","color": "gray"},{"text":"に設定されるようになりました"}]