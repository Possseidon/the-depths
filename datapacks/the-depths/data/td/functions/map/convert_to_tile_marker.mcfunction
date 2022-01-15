# Convert the grid marker into a tile marker in the actual dungeon map.
#
# Execute as: tag=grid

tag @s remove grid
tag @s add tile_marker

data modify entity @s Pos set from entity @s data.Pos
function td:map/apply_random/tile_transform
function td:map/apply_random/tile.out

function td:map/apply_random/gate_x_transform
function td:map/apply_random/gate_z_transform

# TODO: Differentiate open/closed gates.
# TODO: Randomly mirror gates.
# TODO: Remember which gate and which direction was used.

execute as @s[tag=gate_pos_x] run function td:map/apply_random/gate/x.out
execute as @s[tag=gate_pos_x_1] run function td:map/apply_random/gate/x.out
execute as @s[tag=gate_pos_x_2] run function td:map/apply_random/gate/x.out
execute as @s[tag=gate_pos_z] run function td:map/apply_random/gate/z.out
execute as @s[tag=gate_pos_z_1] run function td:map/apply_random/gate/z.out
execute as @s[tag=gate_pos_z_2] run function td:map/apply_random/gate/z.out
