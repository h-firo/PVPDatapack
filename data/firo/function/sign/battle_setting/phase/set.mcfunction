function firo:sign/clear
function firo:sign/settings
$scoreboard players set maxPhase game.settings $(value)
tellraw @a ["",{"text":"Phase","color":"gold","hoverEvent":{"action":"show_text","contents":"The Number of matches."}},\
                {"text":" was set to "},\
                {"score":{"name":"maxPhase","objective":"game.settings"}}]