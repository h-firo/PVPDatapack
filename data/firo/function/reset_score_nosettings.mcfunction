scoreboard players set @a energy.flag 0
scoreboard players set @a energy.timer 0
scoreboard players set colonyNum bp_num 1
scoreboard players set red bp_point 0
scoreboard players set blue bp_point 0
scoreboard players set green bp_point 0
scoreboard players set yellow bp_point 0
scoreboard players set @a player.useItem 0
scoreboard players set @a player.isSelectReady 0
scoreboard players set mode game.flag -1
scoreboard players set ready game.flag 0
scoreboard players set team game.tempNum 0
scoreboard players set @a guard.is 0
scoreboard players set @a lightning.is 0
scoreboard players set @a energy.charge 0
scoreboard players set @a killCount 0
scoreboard players set @a deathCount 0
scoreboard players set @a guard.isAlreadyGuard 0
scoreboard players set count missile.target 0
scoreboard players set @a cs.count 0
scoreboard players set @a cs.timer 0
scoreboard players set red cs.point 0
scoreboard players set blue cs.point 0
scoreboard players set green cs.point 0
scoreboard players set yellow cs.point 0
effect clear @a
execute as @a run attribute @s generic.gravity base set 0.08
effect give @a night_vision infinite 1 true
function firo:base_points/clear
function firo:collect_spot/clear