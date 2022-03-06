# Loads an open x gate structure.
#
# Execute as: tag=gate_x
# Execute at: @s

setblock ~ ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD", rotation: "CLOCKWISE_90"}
data modify block ~ ~ ~ {} merge from entity @s data.gate.open
data modify block ~ ~ ~ {} merge from entity @s data.gate.transform
setblock ~ ~1 ~ minecraft:redstone_block
