function firo:plus_items/decoyrain/tick
function firo:plus_items/lightning_spear/tick
function firo:plus_items/echo_burst/tick
execute if items entity @a weapon.* iron_sword[custom_data={isGuardSword:true}] \
run function firo:plus_items/justguard/tick
function firo:plus_items/hyper_laser/tick