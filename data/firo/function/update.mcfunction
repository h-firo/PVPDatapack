execute if score is rush.isRush matches 1 run function firo:item_rush/rush_tick
function firo:items/item_tick
function firo:plus_items/item_tick
function firo:handicap/set_tick
function firo:game/tick
function firo:game/items/tick
function firo:block/tick
execute if entity @a[scores={training.isWeaponSelect=1}] run function firo:training/tick/weapon_select_tick
execute if entity @e[type=armor_stand,tag=collectSpot] at @e[type=armor_stand,tag=collectSpot] run function firo:collect_spot/tick
execute if entity @e[type=armor_stand,tag=goldSummon,tag=!gst] run function firo:collect_spot/collect_item/tick_summon
kill @e[type=experience_orb]
execute as @a[tag=!operator] unless score @s player.team matches 4 unless entity @s[gamemode=adventure] run gamemode adventure @s
effect give @a night_vision infinite 1 true

#タイマー処理
execute unless score mode game.flag matches -1 run scoreboard players remove time game.timer 1
execute unless score count game.timer matches ..0 run scoreboard players remove count game.timer 1
execute store result bossbar minecraft:time value run scoreboard players get time game.timer

scoreboard players set @a sneak 0