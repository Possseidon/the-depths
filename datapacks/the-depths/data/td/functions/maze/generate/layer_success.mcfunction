tag @e[tag=grid,tag=previous_layer] remove previous_layer
tag @e[tag=grid,tag=!grid_success] add previous_layer

tag @e[tag=grid,tag=!grid_success] add grid_success
tag @e[tag=grid,tag=grid_success] remove grid

tag @e[tag=gate,tag=!gate_success] add gate_success
tag @e[tag=gate,tag=gate_success] remove gate

execute if score layer_index var < 5 const run function td:maze/generate/new_layer
