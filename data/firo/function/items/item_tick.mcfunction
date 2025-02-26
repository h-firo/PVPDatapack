function firo:items/earthburn/tick
function firo:items/missile/tick
function firo:items/laser/tick
function firo:items/energy_shot/tick
function firo:items/barrier/tick
execute as @a[scores={energyPotion.timer=1..}] run scoreboard players remove @s energyPotion.timer 1
execute as @e[type=armor_stand,tag=smoke] at @s run function firo:items/smoke/tick
execute as @e[type=armor_stand,tag=trap] at @s run function firo:items/trap/tick
function firo:items/enchantments/tick