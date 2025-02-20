execute as @a[scores={right_click=1..}] \
if items entity @s weapon.* carrot_on_a_stick[custom_data={isBarrier:true}] at @s \
run function firo:items/barrier/take_barrier
execute as @a[scores={barrier.timer=1..}] at @s run function firo:items/barrier/barrier_tick with entity @s
execute as @a[scores={barrier.timer=0}] at @s run function firo:items/barrier/break_barrier