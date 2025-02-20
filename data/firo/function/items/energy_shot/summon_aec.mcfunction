$summon area_effect_cloud ~ ~ ~ {Duration:3,Age:0,Tags:["ground","$(UUID)"],Owner:$(Owner)}
scoreboard players operation @e[type=area_effect_cloud,tag=ground] \
enchant.isItemPowerUp = @s enchant.isItemPowerUp