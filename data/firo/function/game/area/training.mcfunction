execute store result score red game.area.blockCount run \
clone 69 -60 14 73 -60 18 69 -60 14 filtered red_concrete force
execute store result score blue game.area.blockCount run \
clone 69 -60 14 73 -60 18 69 -60 14 filtered blue_concrete force
execute store result score green game.area.blockCount run \
clone 69 -60 14 73 -60 18 69 -60 14 filtered green_concrete force
execute store result score yellow game.area.blockCount run \
clone 69 -60 14 73 -60 18 69 -60 14 filtered yellow_concrete force

execute if score owner game.area.owner matches 0 run function firo:game/area/judge/red
execute if score owner game.area.owner matches 1 run function firo:game/area/judge/blue
execute if score owner game.area.owner matches 2 run function firo:game/area/judge/green
execute if score owner game.area.owner matches 3 run function firo:game/area/judge/yellow