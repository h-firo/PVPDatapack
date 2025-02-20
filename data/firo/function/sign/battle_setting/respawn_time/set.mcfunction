function firo:sign/clear
function firo:sign/settings
$scoreboard players set respawnTime game.settings $(value)
tellraw @a ["",{"text":"RespawnTime","color":"dark_green","hoverEvent":{"action":"show_text","contents":"The waiting time between death and resurrection."}},\
                {"text":" was set to "},\
                {"score":{"name":"respawnTime","objective":"game.settings"}},{"text":"tick"}]