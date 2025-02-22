execute if score @s player.team matches 0 as @a[scores={player.team=0}] run function firo:items/barrier/teamplayer_take
execute if score @s player.team matches 1 as @a[scores={player.team=1}] run function firo:items/barrier/teamplayer_take
execute if score @s player.team matches 2 as @a[scores={player.team=2}] run function firo:items/barrier/teamplayer_take
execute if score @s player.team matches 3 as @a[scores={player.team=3}] run function firo:items/barrier/teamplayer_take
playsound block.enchantment_table.use player @a ~ ~ ~
clear @s carrot_on_a_stick[custom_data={isBarrier:true}] 1
scoreboard players set @s right_click 0
