execute store result score rule game.settings run random value 0..3
execute if score rule game.settings matches 0 run tellraw @a [{"text":"今回のルールは"},{"text":"Colony","color": "aqua"},{"text":"に選ばれました！！"}]
execute if score rule game.settings matches 1 run tellraw @a [{"text":"今回のルールは"},{"text":"Area","color": "red"},{"text":"に選ばれました！！"}]
execute if score rule game.settings matches 2 run tellraw @a [{"text":"今回のルールは"},{"text":"Collection","color": "dark_gray"},{"text":"に選ばれました！！"}]
execute if score rule game.settings matches 3 run tellraw @a [{"text":"今回のルールは"},{"text":"Kill","color": "light_purple"},{"text":"に選ばれました！！"}]