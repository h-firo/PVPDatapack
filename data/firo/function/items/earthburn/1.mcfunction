scoreboard players set @s player.useItem 1
effect give @s levitation 10 10 true
$clear @s carrot_on_a_stick[custom_data={isEarthBurn:true}] $(count)
playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 2
scoreboard players set @s item.trigger 1
scoreboard players set @s right_click 0