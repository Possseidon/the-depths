# Applies the gate_x tag to the gate at the current position and copies the tile's position to the gate.
#
# Execute as: tag=grid
# Execute at: potential gate relative positive x to the tile

tag @e[tag=gate,distance=..0.1,limit=1] add gate_x
function td:maze/copy_tile_data_to_gate
