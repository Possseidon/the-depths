# Loads a gate structure pointing towards positive x.
#
# Execute as: tag=tile_marker
# Execute at: @s
#
# Input:
# - tile_marker
#   - data.gate_x -> structure_block parameters for the gate

setblock ~15 ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD", rotation: "CLOCKWISE_90"}
data modify block ~15 ~ ~ {} merge from entity @s data.gate_x.open
data modify block ~15 ~ ~ {} merge from entity @s data.gate_x.transform
setblock ~15 ~1 ~ minecraft:redstone_block
