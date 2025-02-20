scoreboard players set @s barrier.timer 200
playsound block.enchantment_table.use player @a ~ ~ ~
clear @s carrot_on_a_stick[custom_data={isBarrier:true}]
scoreboard players set @s right_click 0
scoreboard players set @s barrier.durability 0
effect give @s resistance 10 200 true

#バリア演出
function firo:items/barrier/summon_barrier with entity @s
