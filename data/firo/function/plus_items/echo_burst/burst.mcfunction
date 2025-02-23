scoreboard players set @s echo.is 1
execute as @e[distance=..5] unless score @s echo.is matches 1 run damage @s 19 sonic_boom by @a[scores={echo.is=1},limit=1,sort=nearest]
execute anchored eyes unless block ^ ^ ^1 #firo:non_fullblock run scoreboard players set @s echo.is 0
execute anchored eyes unless block ^ ^ ^1 #firo:non_fullblock run return run tp @s ~ ~ ~
particle sonic_boom ~ ~ ~ 0 0 0 0 1
playsound entity.warden.sonic_boom player @a ~ ~ ~ 1.5
execute positioned ^ ^ ^1 if entity @s[distance=..20] run function firo:plus_items/echo_burst/burst
execute positioned ^ ^ ^1 unless entity @s[distance=..20] run tp @s ~ ~ ~