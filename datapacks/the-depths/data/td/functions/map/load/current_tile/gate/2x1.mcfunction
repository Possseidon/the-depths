# Loads positive gates for 2x1 tiles.
#
# Execute as: tag=tile_marker, wide, !long

execute as @s run fill ~31 ~ ~ ~31 ~23 ~15 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}},tag=!gate_pos_x] run fill ~31 ~23 ~ ~31 ~23 ~15 minecraft:grass_block
execute as @s[tag=gate_pos_x] positioned ~16 ~ ~ run function td:map/load/current_tile/gate/x

execute as @s run fill ~ ~ ~15 ~31 ~23 ~15 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}}] run fill ~ ~23 ~15 ~31 ~23 ~15 minecraft:grass_block
execute as @s[tag=gate_pos_z_1] positioned ~ ~ ~ run function td:map/load/current_tile/gate/z
execute as @s[tag=gate_pos_z_2] positioned ~16 ~ ~ run function td:map/load/current_tile/gate/z

execute as @s[nbt={data: {layer_index: 1b}}] run setblock ~31 ~23 ~15 minecraft:grass_block
