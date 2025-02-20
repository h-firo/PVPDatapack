#ミサイル着弾地点設置時
execute as @e[type=item,\
nbt={Item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:custom_data":{isMissile:true}}},\
OnGround:true}] \
at @s run function firo:items/missile/set_target

execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder",count:1}}] \
run function firo:items/missile/target_scoreset

#ミサイル演出
execute as @e[type=block_display,tag=missile_display] at @s run function firo:items/missile/missile_tick

#着弾処理
execute if score count missile.target matches 3.. as @e[type=armor_stand,tag=missile_point] at @s \
run function firo:items/missile/summon_missile
