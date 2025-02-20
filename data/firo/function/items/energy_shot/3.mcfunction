#球に変更
playsound block.beacon.power_select player @a ~ ~ ~ 1 2
item replace entity @s weapon.mainhand with \
snowball[custom_name='{"bold":true,"color":"gold","text":"エネルギー弾"}',\
         lore=['"投げると着弾地点に大きな爆発を起こす"'],\
         enchantment_glint_override=true,\
         custom_data={isEnergyShot:true},\
         custom_model_data=1] \
1
scoreboard players set @s energy.flag 3