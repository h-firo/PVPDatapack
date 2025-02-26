#flagの意味 \
 1:浮遊状態 \
 2:チャージ状態 \
 3:チャージ完了＋投げ待ち状態 \
 4:投げ+着弾待ち状態 \
 5:爆発中
execute as @a[scores={right_click=1..}] if items entity @s \
weapon.mainhand carrot_on_a_stick[custom_data={isEnergyShot:true}] \
at @s run execute unless score @s energy.flag matches 1..5 if score @s energy.timer matches 0 \
if score @s player.useItem matches 0 \
run function firo:items/energy_shot/1

execute as @a[scores={right_click=1..}] if items entity @s \
weapon.mainhand carrot_on_a_stick[custom_data={isEnergyShot:true}] \
if score @s energy.flag matches 2 at @s run function firo:items/energy_shot/charge

execute as @a[scores={energy.flag=1}] if score @s energy.timer matches 20.. \
at @s run function firo:items/energy_shot/2

execute as @a[scores={energy.flag=2}] if score @s energy.charge matches 200.. at @s \
run function firo:items/energy_shot/3

execute as @a[scores={energy.flag=1}] run scoreboard players add @s energy.timer 1
execute as @a[scores={energy.flag=2}] run scoreboard players add @s energy.charge 1

execute if entity @a[scores={energy.flag=3}] run \
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{isEnergyShot:true}}}}] at @s \
run execute as @n[type=player] at @s run function firo:items/energy_shot/end

#爆発処理
    execute as @a[scores={energy.flag=5}] run scoreboard players add @s energy.timer 1

    execute as @a[scores={energy.flag=5}] run \
    function firo:items/energy_shot/explosion/tick_exp with entity @s

#雪玉が壊れたかの検知
    execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{isEnergyShot:true}}}}] \
    at @s run function firo:items/energy_shot/summon_aec with entity @s

    execute as @e[type=area_effect_cloud,tag=ground,nbt={Age:2}] at @s run \
    function firo:items/energy_shot/check_aec with entity @s

#エフェクト
execute as @a[scores={player.useItem=2}] at @s run particle firework ~ ~ ~ 0 0 0 0 3 normal