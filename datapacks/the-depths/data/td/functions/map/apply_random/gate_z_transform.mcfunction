# Applies a random transform to the z gate of the tile marker.
#
# Execute as: tag=tile_marker

execute as @s[tag=gate_pos_z] run function td:map/apply_random/transform/gate_z
data modify entity @s data.gate_z.transform merge from entity @e[sort=random,limit=1,tag=transform_lookup] data
kill @e[tag=transform_lookup]
