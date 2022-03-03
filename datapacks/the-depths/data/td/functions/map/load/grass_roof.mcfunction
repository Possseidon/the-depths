# Creates a grass roof depending on the size of the tile.
#
# Execute as: tag=tile_marker, {layer_index: 1b}
# Execute at: @s

execute as @s[tag=!wide,tag=!long] run fill ~ ~23 ~ ~15 ~23 ~15 minecraft:grass_block
execute as @s[tag=wide,tag=!long] run fill ~ ~23 ~ ~31 ~23 ~15 minecraft:grass_block
execute as @s[tag=!wide,tag=long] run fill ~ ~23 ~ ~15 ~23 ~31 minecraft:grass_block
execute as @s[tag=wide,tag=long] run fill ~ ~23 ~ ~31 ~23 ~31 minecraft:grass_block
