scoreboard players set @s barrier.timer 200
effect give @s resistance 10 200 true
attribute @s knockback_resistance base set 1
scoreboard players set @s barrier.durability 0
function firo:items/barrier/summon_barrier with entity @s