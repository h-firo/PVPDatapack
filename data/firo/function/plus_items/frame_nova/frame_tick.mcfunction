execute unless score @s frameNova.expandTimer matches 1.. if entity @s[nbt={OnGround:true}] run playsound item.flintandsteel.use master @a ~ ~ ~ 1
execute if entity @s[nbt={OnGround:false}] run particle flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[nbt={OnGround:true}] run function firo:plus_items/frame_nova/framearea with entity @s
execute if score @s frameNova.expandTimer matches 200.. run kill @s