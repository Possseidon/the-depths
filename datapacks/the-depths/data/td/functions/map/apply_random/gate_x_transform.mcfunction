# Applies a random transform to the x gate of the gate marker.
#
# Execute as: tag=gate_x

function td:map/apply_random/transform/gate_x
data modify entity @s data.gate.transform merge from entity @e[sort=random,limit=1,tag=transform_lookup] data
kill @e[tag=transform_lookup]
