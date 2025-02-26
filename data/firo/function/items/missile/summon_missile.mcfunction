execute if score @s enchant.isItemPowerUp matches 0 run \
summon armor_stand ~ ~20 ~ {Silent:1b,Tags:["missile"],Invulnerable:1b,Invisible:1b}
execute if score @s enchant.isItemPowerUp matches 0 run \
summon block_display ~ ~20 ~ {Silent:1b,Tags:["missile_display"],block_state:{Name:"minecraft:tnt"}}
execute if score @s enchant.isItemPowerUp matches 0 positioned ~ ~0.3 ~ run function firo:items/missile/particles/particle1

execute if score @s enchant.isItemPowerUp matches 1 run \
summon armor_stand ~ ~10 ~ {Silent:1b,Tags:["missile"],Invulnerable:1b,Invisible:1b}
execute if score @s enchant.isItemPowerUp matches 1 run \
summon block_display ~ ~10 ~ {Silent:1b,Tags:["missile_display"],block_state:{Name:"minecraft:tnt"}}
execute if score @s enchant.isItemPowerUp matches 1 positioned ~ ~0.3 ~ run function firo:items/missile/particles/particle2

scoreboard players operation \
@n[type=block_display,tag=missile_display] enchant.isItemPowerUp = @s enchant.isItemPowerUp
scoreboard players operation \
@n[type=block_display,tag=missile_display] missile.owner = @s missile.owner
kill @s