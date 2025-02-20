execute as @e[type=armor_stand,tag=goldSummon,tag=!gst] at @s unless data block ~ ~ ~ LootTable unless data block ~ ~ ~ Items[0] run \
function firo:collect_spot/collect_item/destroy