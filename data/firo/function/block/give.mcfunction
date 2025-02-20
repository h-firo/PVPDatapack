$scoreboard players remove @s point $(num)
$give @s item_frame[can_place_on={predicates:[{blocks:"#firo:all"}],show_in_tooltip:false},\
                    entity_data={id:"minecraft:item_frame",Fixed:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["block","$(type)"]}, \
                    item_name='{"fallback":"Unknown","translate":"$(key)"}',custom_model_data=$(num)] 1
tell @s 購入しました