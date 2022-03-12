# Loads a tile structure and removes the tile_marker_to_gen tag.
#
# Execute as: tag=tile_marker_to_gen
# Execute at: @s
#
# Input:
# - tile_marker
#   - data.tile -> structure_block parameters for the tile

execute as @s[nbt={data: {level: 1b}}] run function td:map/load/grass_roof

setblock ~ ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD"}
data modify block ~ ~ ~ {} merge from entity @s data.tile
setblock ~ ~1 ~ minecraft:redstone_block

tag @s remove tile_marker_to_gen
