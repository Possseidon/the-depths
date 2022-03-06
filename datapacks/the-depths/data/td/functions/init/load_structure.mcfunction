# Loads a tile structure of the spawn area and kills the marker.
#
# Execute as: tag=init_spawn
# Execute at: @s
#
# Input:
# - tile_marker
#   - data.tile -> structure_block parameters for the tile

setblock ~ ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD"}
data modify block ~ ~ ~ {} merge from entity @s data.tile
setblock ~ ~1 ~ minecraft:redstone_block
kill @s
