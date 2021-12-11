scoreboard players add @e[tag=grid,tag=passed,scores={grid_index=0..}] grid_index 1

execute at @e[tag=grid,tag=cursor] facing entity @e[tag=grid,tag=next_move] feet positioned ^ ^ ^0.5 run function td:maze/summon/gate
tag @e[tag=grid,tag=cursor] remove cursor
tag @e[tag=grid,tag=next_move] add cursor
tag @e[tag=grid,tag=next_move] remove next_move

function td:maze/generate/step
