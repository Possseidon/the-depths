# Loads a tile structure.
#
# Execute as: tag=tile_marker
# Execute at: @s
#
# Input:
# - tile_marker
#   - data.tile -> structure_block parameters for the tile

execute as @s[tag=!wide,tag=!long] run fill ~ ~ ~ ~14 ~23 ~14 minecraft:air
execute as @s[tag=wide,tag=!long] run fill ~ ~ ~ ~30 ~23 ~14 minecraft:air
execute as @s[tag=!wide,tag=long] run fill ~ ~ ~ ~14 ~23 ~30 minecraft:air
execute as @s[tag=wide,tag=long] run fill ~ ~ ~ ~30 ~23 ~30 minecraft:air

setblock ~ ~ ~ minecraft:structure_block{posY: 0, mode: "LOAD"}
data modify block ~ ~ ~ {} merge from entity @s data.tile
setblock ~ ~1 ~ minecraft:redstone_block
