#剣を持っているときにしか実行されない
execute unless score @s barrier.timer matches -1 run return fail
execute as @a if score @s sneak matches 1 if score @s guard.is matches 0 if score @s guard.isAlreadyGuard matches 0 \
if items entity @s weapon.* iron_sword[custom_data={isGuardSword:true}] at @s run \
function firo:plus_items/justguard/summon_guard
execute as @a if score @s guard.isAlreadyGuard matches 1 if score @s sneak matches 0 if score @s guard.timer matches 35.. run function firo:plus_items/justguard/cancell
execute as @a[scores={guard.isAlreadyGuard=1}] run scoreboard players add @s guard.timer 1
execute as @a[scores={guard.timer=10..}] run function firo:plus_items/justguard/destroy