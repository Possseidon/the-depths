function td:maze/summon/grid
function td:maze/select_tiles

scoreboard objectives add grid_index dummy
scoreboard players set @e[tag=grid] grid_index 0

function td:maze/generate/step

execute unless entity @e[tag=grid,scores={grid_index=0}] run function td:maze/generate/layer_success
execute if entity @e[tag=grid,scores={grid_index=0}] run function td:maze/generate/retry

scoreboard objectives remove grid_index
