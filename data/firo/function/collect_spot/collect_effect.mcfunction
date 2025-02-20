playsound entity.player.levelup master @a ~ ~ ~ 1
particle totem_of_undying ~ ~ ~ 1 1 1 0 50
tellraw @a ["",{"selector":"@s"},{"text":"\u304c"},{"text":"\u91d1\u8ca8","color":"gold"},{"text":"\u3092"},\
            {"score":{"name":"@s","objective":"cs.count"},"color":"aqua"},{"text":"\u500b","color":"aqua"},\
            {"text":"\u7d0d\u54c1\u3057\u307e\u3057\u305f\uff01\uff01"}]