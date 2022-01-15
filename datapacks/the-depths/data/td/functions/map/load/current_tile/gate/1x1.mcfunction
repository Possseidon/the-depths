# Loads positive gates for 1x1 tiles.
#
# Execute as: tag=tile_marker, !wide, !long

fill ~15 ~ ~ ~15 ~23 ~15 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}},tag=!gate_pos_x] run fill ~15 ~23 ~ ~15 ~23 ~15 minecraft:grass_block
execute as @s[tag=gate_pos_x] run function td:map/load/current_tile/gate/x

fill ~ ~ ~15 ~15 ~23 ~15 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}},tag=!gate_pos_z] run fill ~ ~23 ~15 ~15 ~23 ~15 minecraft:grass_block
execute as @s[tag=gate_pos_z] run function td:map/load/current_tile/gate/z

execute as @s[nbt={data: {layer_index: 1b}}] run setblock ~15 ~23 ~15 minecraft:grass_block
