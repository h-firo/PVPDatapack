tp @s @n[type=armor_stand,tag=missile]
execute if entity @n[type=armor_stand,tag=missile,nbt={OnGround:true}] run \
function firo:items/missile/prepare_explosion