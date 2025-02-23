playsound block.end_portal.spawn player @a ~ ~ ~ 1 2
scoreboard players set @s awakening.timer 200
scoreboard players set @s awakening.is 1
effect give @s speed 10 50
attribute @s generic.attack_speed base set 1000
attribute @s generic.attack_damage modifier add firo_item.attack_damage 10 add_value