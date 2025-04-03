summon block_display ~-0.25 ~ ~-0.25 {Tags:["huntTarget.bomb"],\
                                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},\
                                            block_state:{Name:"minecraft:emerald_block"}}
scoreboard players set @n[type=block_display,tag=huntTarget.bomb] huntItem.explosionTimer 20
kill @s