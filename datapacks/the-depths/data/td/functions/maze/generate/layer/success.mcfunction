# Marks the layer the just generated layer as success and makes it ready for generation.
#
# Input: A successfully generated layer.
#
# Output: The same layer with:
# - Tags:
#   - grid_success/gate_success -> Replaces grid/gate
#   - previous_layer -> Used to position the spawn below the exit of the previous layer.
# - data:
#   - layer_index -> set to 1b .. 5b
#   - Pos[1] -> set to the real y coordinate on the dungeon map

execute as @e[tag=grid] store result entity @s data.layer_index byte 1 run scoreboard players get layer_index var
scoreboard players set layer_offset var -24
scoreboard players operation layer_offset var *= layer_index var
scoreboard players add layer_offset var 64
execute as @e[tag=grid] store result entity @s data.Pos[1] double 1 run scoreboard players get layer_offset var

tag @e[tag=grid,tag=previous_layer] remove previous_layer
tag @e[tag=grid,tag=!grid_success] add previous_layer

tag @e[tag=grid,tag=!grid_success] add grid_success
tag @e[tag=grid,tag=grid_success] remove grid

tag @e[tag=gate,tag=!gate_success] add gate_success
tag @e[tag=gate,tag=gate_success] remove gate

execute if score layer_index var < layer_count const run function td:maze/generate/new_layer
