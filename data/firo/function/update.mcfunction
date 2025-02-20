function firo:items/item_tick
function firo:plus_items/item_tick
execute as @a[scores={enchant.isItemPowerUp=1}] \
unless items entity @s armor.chest #chest_armor[enchantments={levels:{"firo:item_power_up":1}}] \
at @s run scoreboard players set @s enchant.isItemPowerUp 0
function firo:handicap/set_tick
function firo:game/tick
function firo:game/items/tick
function firo:block/tick
execute if score mode game.flag matches 2 run execute if entity @e[type=armor_stand,tag=collectSpot] at @e[type=armor_stand,tag=collectSpot] run function firo:collect_spot/tick
execute if entity @e[type=armor_stand,tag=goldSummon,tag=!gst] run function firo:collect_spot/collect_item/tick_summon
kill @e[type=experience_orb]

#タイマー処理
execute unless score mode game.flag matches -1 run scoreboard players remove time game.timer 1
execute unless score count game.timer matches ..0 run scoreboard players remove count game.timer 1
execute store result bossbar minecraft:time value run scoreboard players get time game.timer

scoreboard players set @a sneak 0