function firo:sign/clear
function firo:sign/settings
$scoreboard players set time game.settings $(value)
tellraw @a ["",{"text":"TimeLimit","color":"blue","hoverEvent":{"action":"show_text","contents":"The time limit for the match."}},\
                {"text":" was set to "},\
                {"score":{"name":"time","objective":"game.settings"}},{"text":"tick"}]