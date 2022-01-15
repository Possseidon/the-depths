# Loads positive gates for 2x2 tiles.
#
# Execute as: tag=tile_marker, wide, long

execute as @s run fill ~31 ~ ~ ~31 ~23 ~31 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}}] run fill ~31 ~23 ~ ~31 ~23 ~31 minecraft:grass_block
execute as @s[tag=gate_pos_x_1] positioned ~16 ~ ~ run function td:map/load/current_tile/gate/x
execute as @s[tag=gate_pos_x_2] positioned ~16 ~ ~16 run function td:map/load/current_tile/gate/x

execute as @s run fill ~ ~ ~31 ~31 ~23 ~31 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}}] run fill ~ ~23 ~31 ~31 ~23 ~31 minecraft:grass_block
execute as @s[tag=gate_pos_z_1] positioned ~ ~ ~16 run function td:map/load/current_tile/gate/z
execute as @s[tag=gate_pos_z_2] positioned ~16 ~ ~16 run function td:map/load/current_tile/gate/z

execute as @s[nbt={data: {layer_index: 1b}}] run setblock ~31 ~23 ~31 minecraft:grass_block
