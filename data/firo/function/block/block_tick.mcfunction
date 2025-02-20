scoreboard players add @s block.timer 1
execute if score @s block.timer = @s block.maxLife run function firo:block/destroy_block
execute if block ~ ~ ~ air run function firo:block/destroy_block