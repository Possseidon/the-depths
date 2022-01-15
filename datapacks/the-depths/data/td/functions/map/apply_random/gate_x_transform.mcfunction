# Applies a random transform to the x gate of the tile marker.
#
# Execute as: tag=tile_marker

execute as @s[tag=gate_pos_x] run function td:map/apply_random/transform/gate_x
data modify entity @s data.gate_x.transform merge from entity @e[sort=random,limit=1,tag=transform_lookup] data
kill @e[tag=transform_lookup]
