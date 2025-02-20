#防御状態にする
playsound block.enchantment_table.use player @a ~ ~ ~ 1
scoreboard players set @s guard.is 1
scoreboard players set @s guard.isAlreadyGuard 1
effect give @s resistance 1 200 true
