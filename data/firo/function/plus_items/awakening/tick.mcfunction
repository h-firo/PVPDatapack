execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isAwaking:true}] \
at @s run function firo:plus_items/awakening/take

execute as @a[scores={awakening.is=1}] run scoreboard players remove @s awakening.timer 1
execute as @a[scores={awakening.timer=..0}] run function firo:plus_items/awakening/remove