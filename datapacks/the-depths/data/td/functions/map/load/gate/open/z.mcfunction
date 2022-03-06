# Loads an open z gate structure.
#
# Execute as: tag=gate_z
# Execute at: @s

setblock ~ ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD"}
data modify block ~ ~ ~ {} merge from entity @s data.gate.open
data modify block ~ ~ ~ {} merge from entity @s data.gate.transform
setblock ~ ~1 ~ minecraft:redstone_block
