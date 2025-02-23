clear @s carrot_on_a_stick[custom_data={isLaser:true},damage=5] 1
playsound minecraft:entity.item_frame.break player @a ~ ~ ~ 1
scoreboard players set @s laser.useCount 0