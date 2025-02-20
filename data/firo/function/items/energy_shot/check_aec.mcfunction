$execute as @s unless entity @e[type=area_effect_cloud,nbt={Age:1,Tags:$(Tags)}] at @s run \
function firo:items/energy_shot/explosion/set_explosion with entity @s