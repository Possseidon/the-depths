tag @e[tag=grid,tag=cursor] remove cursor
tag @e[tag=grid,scores={grid_index=1}] add cursor

scoreboard players remove @e[tag=grid,tag=passed,scores={grid_index=0..}] grid_index 1

execute if entity @e[tag=grid,tag=cursor] run function td:maze/generate/step
