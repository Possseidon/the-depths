# Loads a gate structure pointing towards positive z.
#
# Execute as: tag=tile_marker
# Execute at: @s
#
# Input:
# - tile_marker
#   - data.gate_z -> structure_block parameters for the gate

setblock ~ ~ ~15 minecraft:structure_block{posY: 0, mode: "LOAD"}
data modify block ~ ~ ~15 {} merge from entity @s data.gate_z.open
data modify block ~ ~ ~15 {} merge from entity @s data.gate_z.transform
setblock ~ ~1 ~15 minecraft:redstone_block
