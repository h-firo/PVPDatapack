execute unless entity @e[type=armor_stand,tag=huntTarget] run function firo:game/hunt/summon_target
execute as @e[type=armor_stand,tag=huntTarget] at @s run function firo:game/hunt/target_tick
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block",count:1},OnGround:true}] at @s run function firo:game/hunt/drop
scoreboard players remove @e[type=block_display,tag=huntTarget.bomb,scores={huntItem.explosionTimer=1..}] huntItem.explosionTimer 1
execute as @e[type=block_display,tag=huntTarget.bomb] if score @s huntItem.explosionTimer matches 0 at @s run function firo:game/hunt/explosion