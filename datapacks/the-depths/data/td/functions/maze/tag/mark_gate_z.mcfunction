# Applies the gate_z tag to the gate at the current position and copies the tile's position to the gate.
#
# Execute as: tag=grid
# Execute at: potential gate relative positive z to the tile

tag @e[tag=gate,distance=..0.1,limit=1] add gate_z
function td:maze/copy_tile_data_to_gate
