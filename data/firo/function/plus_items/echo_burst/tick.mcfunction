execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isBurst:true}] \
at @s run function firo:plus_items/echo_burst/burst
execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isBurst:true}] \
at @s run clear @s carrot_on_a_stick[custom_data~{isBurst:true}]