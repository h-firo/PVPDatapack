say reload

#操作関係
scoreboard objectives add right_click minecraft.used:carrot_on_a_stick
scoreboard objectives add sneak minecraft.custom:sneak_time

#その他
scoreboard objectives add random dummy

#プレイヤー関係
scoreboard objectives add player.team dummy
scoreboard objectives add player.useItem dummy
scoreboard objectives add player.isSelectReady dummy
scoreboard objectives add point dummy

#トレーニング関係
scoreboard objectives add training.targetGiveDamage dummy
scoreboard objectives add training.isWeaponSelect dummy
scoreboard objectives add training.isIn dummy

#買い物関係
scoreboard objectives add shop.needPoint dummy

#試合関係
scoreboard objectives add game.levelNum dummy
scoreboard objectives add game.isRandomRule dummy
scoreboard objectives add game.playerCount dummy
scoreboard objectives add game.activePlayerCount dummy
scoreboard objectives add player.team.memberCount dummy
scoreboard objectives add game.settings dummy
scoreboard objectives add game.timer dummy
scoreboard objectives add game.tempNum dummy
scoreboard objectives add game.flag dummy
scoreboard objectives add game.phase dummy
scoreboard objectives add game.give_point dummy
scoreboard objectives add game.num dummy
scoreboard players set 10 game.num 10
scoreboard players set 12 game.num 12
scoreboard players set 13 game.num 13
scoreboard players set 15 game.num 15
scoreboard players set 2 game.num 2
scoreboard players set 3 game.num 3
scoreboard players set 4 game.num 4
scoreboard players set 60 game.num 60
scoreboard objectives add game.area.timer dummy
scoreboard objectives add game.area.blockCount dummy
scoreboard objectives add game.area.blockCount2 dummy
scoreboard objectives add game.area.owner dummy
scoreboard objectives add respawn.timer dummy
scoreboard objectives add handicap.settings.start dummy
scoreboard objectives add handicap.settings.death dummy

#ブロック関係
scoreboard objectives add block.timer dummy
scoreboard objectives add block.maxLife dummy
scoreboard objectives add block.isInit dummy
scoreboard objectives add block.type dummy
scoreboard objectives add block.num dummy

#看板
scoreboard objectives add sign.sucFlag dummy
scoreboard objectives add sign.temp dummy

#統計関係
scoreboard objectives add isKill dummy
scoreboard objectives add killCount playerKillCount
scoreboard objectives add totalKillCount dummy
scoreboard objectives add isDeath minecraft.custom:deaths
scoreboard objectives add deathCount minecraft.killed_by:player
scoreboard objectives add totalDeathCount dummy
scoreboard objectives add giveDamage minecraft.custom:damage_dealt
scoreboard objectives add takenDamage minecraft.custom:damage_taken
scoreboard objectives add jumpCount minecraft.custom:jump
scoreboard objectives add sprintDistance minecraft.custom:sprint_one_cm
scoreboard objectives add fallDistance minecraft.custom:fall_one_cm
scoreboard objectives add satistics.rank dummy
scoreboard objectives add satistics.winCount dummy
scoreboard objectives add temp dummy

#買い物関係
scoreboard objectives add shopping.tempPoint dummy

#アイテム関係
scoreboard objectives add item.trigger dummy
scoreboard objectives add item.timer dummy
scoreboard objectives add item.initflag dummy
scoreboard objectives add missile.target dummy
scoreboard objectives add missile.owner dummy
scoreboard objectives add entity.baseValue dummy
scoreboard objectives add barrier.timer dummy
scoreboard objectives add barrier.durability dummy
scoreboard objectives add energyPotion.timer dummy
scoreboard objectives add energy.timer dummy
scoreboard objectives add energy.flag dummy
scoreboard objectives add energy.charge dummy
scoreboard objectives add energy.owner dummy
scoreboard objectives add decoy.timer dummy
scoreboard objectives add lightning.is dummy
scoreboard objectives add lightning.timer dummy
scoreboard objectives add guard.is dummy
scoreboard objectives add guard.timer dummy
scoreboard objectives add guard.isAlreadyGuard dummy
scoreboard objectives add laser.useCount dummy
scoreboard objectives add laser.tempOp dummy
scoreboard objectives add awakening.timer dummy
scoreboard objectives add awakening.is dummy
scoreboard objectives add echo.is dummy
scoreboard objectives add frameNova.is dummy
scoreboard objectives add frameNova.timer dummy
scoreboard objectives add frameNova.expandTimer dummy

#エンチャント関係
scoreboard objectives add enchant.isItemPowerUp dummy
scoreboard objectives add enchant.isGrudge dummy
scoreboard objectives add enchant.hatedTime dummy

#colony関係
scoreboard objectives add bp_point dummy
scoreboard objectives add bp_nowTeam dummy
scoreboard objectives add bp_num dummy
scoreboard objectives add bp_initFlag dummy
scoreboard objectives add bp_needRecalculation dummy

#CollectSpot関係
scoreboard objectives add cs.isInit dummy
scoreboard objectives add cs.timer dummy
scoreboard objectives add cs.item.timer dummy
scoreboard objectives add cs.item.count dummy
scoreboard objectives add cs.point dummy
scoreboard objectives add cs.count dummy

#アイテムラッシュ関係
scoreboard objectives add rush.isRush dummy
scoreboard objectives add rush.selectItem dummy
scoreboard objectives add rush.needRushPoint dummy
scoreboard objectives add rush.timer dummy
scoreboard objectives add rush.canAddPoint dummy
scoreboard objectives add rush.rushPoint dummy

#ステージ関係
scoreboard objectives add stage.colonyCount dummy
#ステージごとのエリアの位置のstorage
data merge storage stage.area: \
{1:{1:{x1:35,y1:-60,z1:104,x2:45,y2:-60,z2:114}},\
 t:{1:{x1:68,y1:-60,z1:14,x2:72,y2:-60,z2:18},2:{x1:74,y1:-60,z1:14,x2:78,y2:-60,z2:18}}}

#チームとチーム関連スコアボード
team add red
team add blue
team add green
team add yellow
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify red prefix "Red-"
team modify blue prefix "Blue-"
team modify green prefix "Green-"
team modify yellow prefix "Yellow-"
scoreboard objectives add team.unassignedCount dummy
scoreboard objectives add team.teamSize dummy
scoreboard objectives add team.counter dummy
scoreboard objectives add team.teamCount dummy

bossbar add time "Limit"
bossbar set time players @a
bossbar add area_blocks "ブロック数"
bossbar set area_blocks players @a