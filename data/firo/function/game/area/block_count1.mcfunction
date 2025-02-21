$execute store result score red game.area.blockCount run \
clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x1) $(y1) $(z1) filtered red_concrete force
$execute store result score blue game.area.blockCount run \
clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x1) $(y1) $(z1) filtered blue_concrete force
$execute store result score green game.area.blockCount run \
clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x1) $(y1) $(z1) filtered green_concrete force
$execute store result score yellow game.area.blockCount run \
clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x1) $(y1) $(z1) filtered yellow_concrete force

execute if score owner1 game.area.owner matches 0 run function firo:game/area/judge/red
execute if score owner1 game.area.owner matches 1 run function firo:game/area/judge/blue
execute if score owner1 game.area.owner matches 2 run function firo:game/area/judge/green
execute if score owner1 game.area.owner matches 3 run function firo:game/area/judge/yellow