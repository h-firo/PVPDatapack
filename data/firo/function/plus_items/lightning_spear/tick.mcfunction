execute as @a[scores={right_click=1..}] \
if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={isLightning:true}] \
at @s run function firo:plus_items/lightning_spear/start
execute as @a[scores={lightning.is=1}] at @s run function firo:plus_items/lightning_spear/lightning_tick