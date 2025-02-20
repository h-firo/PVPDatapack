advancement revoke @s only firo:damage
execute if score @s guard.is matches 1 run return run function firo:plus_items/justguard/take_damage
execute unless score @s barrier.timer matches -1 run function firo:items/barrier/get_damage