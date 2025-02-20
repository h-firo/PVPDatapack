execute as @a if items entity @s weapon.* stick[custom_data={isPaintLod:true}] at @s \
if block ~ ~-1 ~ #firo:concretes run function firo:game/items/paint_lod/paint