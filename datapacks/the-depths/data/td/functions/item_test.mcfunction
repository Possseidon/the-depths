loot spawn 0 0 0 loot td:test
summon minecraft:item -57.5 34.25 -54.5 {Tags: [new_item], Item: {id:"minecraft:glass", Count: 1}, Motion: [0.0, 0.1, 0.0], Owner: [I;0,0,0,0]}
data modify entity @e[tag=new_item,limit=1] Item merge from entity @e[type=item,limit=1,tag=!new_item] Item
tag @e remove new_item
execute positioned 0 0 0 run kill @e[type=item,distance=..0.1]
say @e[type=item]
