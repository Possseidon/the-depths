kill @e[type=!minecraft:player]

execute if data storage td:settings {auto_reload: 1b} run reload

scoreboard objectives add var dummy
scoreboard players set var layer_index 0

scoreboard objectives add const dummy
scoreboard players set 5 const 5

function td:maze/generate/new_layer

scoreboard objectives remove var
scoreboard objectives remove const

tag @e[tag=grid_success] add grid
tag @e[tag=grid_success] remove grid_success
tag @e[tag=gate_success] add gate
tag @e[tag=gate_success] remove gate_success

execute if data storage td:settings {visualize: 1b} run function td:maze/summon/visualization.out
