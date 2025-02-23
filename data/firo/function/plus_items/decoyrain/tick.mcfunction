execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isDecoyRain:true}] \
at @s run function firo:plus_items/decoyrain/setteam

execute as @e[type=zombie,tag=decoy] at @s run function firo:plus_items/decoyrain/decoy_timer
