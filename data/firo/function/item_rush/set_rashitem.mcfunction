$scoreboard players set @s rush.selectItem $(Select)
$scoreboard players set @s rush.needRushPoint $(Need)
tellraw @s {"text":"ラッシュアイテムを設定しました！！","color":"green"}
playsound block.note_block.pling master @s ~ ~ ~ 1