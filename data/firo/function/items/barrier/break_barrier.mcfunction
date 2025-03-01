playsound block.glass.break player @a ~ ~ ~ 1
attribute @s knockback_resistance base set 0
particle block{block_state:blue_stained_glass} ~ ~ ~ 1 1 1 0 50
scoreboard players set @s barrier.timer -1
effect clear @s instant_health
effect clear @s resistance
function firo:items/barrier/destroy_barrier with entity @s