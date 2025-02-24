#装備
function firo:buy/list/equipment {z:34,color:gray,text:"ｌｖ１装備",point:10,path:level1}
function firo:buy/list/equipment {z:33,color:white,text:"ｌｖ２装備",point:20,path:level2}
function firo:buy/list/equipment {z:32,color:cyan,text:"ｌｖ３装備",point:80,path:level3}
function firo:buy/list/equipment {z:31,color:yellow,text:"ｌｖ４装備",point:150,path:level4}
function firo:buy/list/equipment {z:30,color:orange,text:"遠距離武器",point:30,path:ranged_weapons}
function firo:buy/list/equipment {z:29,color:light_blue,text:"トライデント",point:50,path:trident}
function firo:buy/list/equipment {z:28,color:lime,text:"盾",point:60,path:shield}
function firo:buy/list/equipment {z:27,color:pink,text:"ノックバック棒",point:15,path:knockback_stick}
function firo:buy/list/equipment {z:26,color:red,text:"火炎棒",point:30,path:flame_stick}

#特殊アイテム
function firo:buy/list/item {z:25,color:blue,text:"アースバーン",point:30,path:earthburn}
function firo:buy/list/item {z:24,color:orange,text:"エナジーポーション",point:25,path:energy_potion}
function firo:buy/list/item {z:23,color:brown,text:"エナジーショット",point:32,path:energy_shot}
function firo:buy/list/item {z:22,color:red,text:"ミサイル",point:20,path:missile}
function firo:buy/list/item {z:21,color:gray,text:"煙幕",point:10,path:smoke}
function firo:buy/list/item {z:20,color:purple,text:"トラップ",point:10,path:trap}
function firo:buy/list/item {z:19,color:magenta,text:"バッドポーション",point:25,path:bad_potion}
function firo:buy/list/item {z:18,color:cyan,text:"バリア",point:30,path:barrier}

#エンチャント
function firo:buy/list/enchantment {z:18,color:purple,text:"特殊アイテム強化",point:50,path:item_power_up,slot:chest,type:chest}
function firo:buy/list/enchantment {z:19,color:cyan,text:"移動強化",point:50,path:move_power_up,slot:feet,type:foot}
function firo:buy/list/henchantment {z:20,color:magenta,text:"超拡散",point:60,path:super_multishot,type:bows}
function firo:buy/list/henchantment {z:21,color:red,text:"爆裂の矢",point:25,path:explode_arrow,type:bows}
function firo:buy/list/enchantment {z:22,color:light_blue,text:"重力低下",point:20,path:low_gravity,slot:feet,type:foot}
function firo:buy/list/enchantment {z:23,color:pink,text:"小人化",point:60,path:small_scale,slot:head,type:head}
function firo:buy/list/enchantment {z:24,color:orange,text:"伸腕",point:50,path:lange_arm,slot:chest,type:chest}
function firo:buy/list/enchantment {z:25,color:blue,text:"復活ペナルティ",point:50,path:item_power_up,slot:legs,type:legs}

#追加アイテム
function firo:buy/list/plus_item {z:26,color:cyan,text:"ハイパーレーザー",point:30,path:hyper_laser}
function firo:buy/list/plus_item {z:27,color:blue,text:"デコイレイン",point:20,path:decoyrain}
function firo:buy/list/plus_item {z:28,color:purple,text:"ライトニングスピア",point:10,path:lightning_spear}
function firo:buy/list/plus_item {z:29,color:gray,text:"ガードソード",point:30,path:justguard}
function firo:buy/list/plus_item {z:30,color:cyan,text:"エコーバースト",point:30,path:echo_burst}

#ブロック
function firo:buy/list/block {x:20,color:orange,text:"firo.block.dirt",type:dirt,point:1}
function firo:buy/list/block {x:21,color:yellow,text:"firo.block.planks",type:planks,point:3}
function firo:buy/list/block {x:22,color:light_gray,text:"firo.block.stone",type:stone,point:4}
function firo:buy/list/block {x:23,color:gray,text:"firo.block.smooth_stone",type:smooth_stone,point:5}
function firo:buy/list/block {x:24,color:brown,text:"firo.block.mud_bricks",type:mud_bricks,point:2}
function firo:buy/list/block {x:25,color:red,text:"firo.block.bricks",type:bricks,point:6}
function firo:buy/list/block {x:26,color:blue,text:"firo.block.obsidian",type:obsidian,point:7}

function firo:buy/list/block_10 {x:20,color:orange,text:"firo.block.dirt",type:dirt,point:1}
function firo:buy/list/block_10 {x:21,color:yellow,text:"firo.block.planks",type:planks,point:3}
function firo:buy/list/block_10 {x:22,color:light_gray,text:"firo.block.stone",type:stone,point:4}
function firo:buy/list/block_10 {x:23,color:gray,text:"firo.block.smooth_stone",type:smooth_stone,point:5}
function firo:buy/list/block_10 {x:24,color:brown,text:"firo.block.mud_bricks",type:mud_bricks,point:2}
function firo:buy/list/block_10 {x:25,color:red,text:"firo.block.bricks",type:bricks,point:6}
function firo:buy/list/block_10 {x:26,color:blue,text:"firo.block.obsidian",type:obsidian,point:7}

#ガチャ
setblock 28 -58 32 bamboo_wall_sign[facing=west]{front_text:{color:"red",messages:['{"text":""}','{"text":"食料","bold":true,\
"clickEvent":{"action":"run_command","value":"/function firo:roll/food/conditions"}}','"一回10pt"','{"text":""}']}} \
replace
setblock 28 -58 33 bamboo_wall_sign[facing=west]{front_text:{color:"green",messages:['{"text":""}','{"text":"バニラアイテム","bold":true,\
"clickEvent":{"action":"run_command","value":"/function firo:roll/vanilla_item/conditions"}}','"一回20pt"','{"text":""}']}} \
replace
setblock 28 -58 34 bamboo_wall_sign[facing=west]{front_text:{color:"magenta",messages:['{"text":""}','{"text":"ポーション","bold":true,\
"clickEvent":{"action":"run_command","value":"/function firo:roll/potion/conditions"}}','"一回15pt"','{"text":""}']}} \
replace