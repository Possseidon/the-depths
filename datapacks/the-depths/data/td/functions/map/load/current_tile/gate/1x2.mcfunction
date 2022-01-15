# Loads positive gates for 1x2 tiles.
#
# Execute as: tag=tile_marker, !wide, long

execute as @s run fill ~15 ~ ~ ~15 ~23 ~31 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}}] run fill ~15 ~23 ~ ~15 ~23 ~31 minecraft:grass_block
execute as @s[tag=gate_pos_x_1] positioned ~ ~ ~ run function td:map/load/current_tile/gate/x
execute as @s[tag=gate_pos_x_2] positioned ~ ~ ~16 run function td:map/load/current_tile/gate/x

execute as @s run fill ~ ~ ~31 ~15 ~23 ~31 minecraft:air
execute as @s[nbt={data: {layer_index: 1b}},tag=!gate_pos_z] run fill ~ ~23 ~31 ~15 ~23 ~31 minecraft:grass_block
execute as @s[tag=gate_pos_z] positioned ~ ~ ~16 run function td:map/load/current_tile/gate/z

execute as @s[nbt={data: {layer_index: 1b}}] run setblock ~15 ~23 ~31 minecraft:grass_block
