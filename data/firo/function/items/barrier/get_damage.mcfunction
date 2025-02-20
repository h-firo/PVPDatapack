#summon area_effect_cloud ~ ~ ~ {Particle:{type:"ash"},Radius:0.4f,Duration:10,Age:3,WaitTime:0,potion_contents:{potion:"minecraft:water",custom_effects:[{id:"minecraft:instant_health",amplifier:10,duration:1}]}}
scoreboard players add @s barrier.durability 1
playsound block.anvil.place player @a ~ ~ ~ 0.3 1

#バリアを壊す
execute if score @s barrier.durability matches 5.. run scoreboard players set @s barrier.timer 0

advancement revoke @s only firo:damage