scoreboard players operation @s respawn.timer = respawnTime game.settings
execute if score @s enchant.hatedTime matches 1.. run scoreboard players operation @s respawn.timer += 60 game.num
execute if score @s energyPotion.timer matches 1.. run scoreboard players operation @s respawn.timer -= 40 game.num
execute if score @s enchant.isGrudge matches 1 as @a[scores={isKill=1..}] run function firo:game/respawn/take_grudge
scoreboard players set @a[scores={isKill=1..}] isKill 0
advancement revoke @s only firo:death
execute if score rule game.settings matches 2 run clear @s gold_nugget[custom_data={isCI:true}]
gamemode spectator @s
title @s times 0 60 0
execute if score stage game.settings matches 1 run \
tp @s 40 -52 109
execute if score stage game.settings matches 2 run \
tp @s -44 -48 159
execute if score stage game.settings matches 3 run \
tp @s -21 -38 67
execute if score stage game.settings matches 4 run \
tp @s 47 -60 195
title @s title {"color": "dark_red","text": "死んでしまった！！"}
execute if score @s enchant.hatedTime matches 1.. run title @s subtitle {"color": "red","text": "被害者に恨まれていたため、復活時間が伸びた"}
execute if score @s energyPotion.timer matches 1.. run title @s subtitle {"color": "dark_green","text": "エナジーポーションの効果で、復活時間が短縮した"}