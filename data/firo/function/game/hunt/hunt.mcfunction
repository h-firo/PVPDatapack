give @a[distance=..1] emerald_block[lore=['{"color":"gray","italic":false,"text":"持っている数がポイントになる。"}',\
                                    '{"color":"gray","italic":false,"text":"投げることでその地点に大きな爆発を起こす"}'],custom_data={targetItem:true},\
                                    item_name='{"color":"green","text":"エメラルド"}']
playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1
particle dust{color:[0.337,1.000,0.290],scale:1} ~ ~ ~ 1 1 1 1 40 force
kill @n[type=block_display,tag=huntTarget.display]
kill @n[type=block_display,tag=huntTarget.display2]
kill @s