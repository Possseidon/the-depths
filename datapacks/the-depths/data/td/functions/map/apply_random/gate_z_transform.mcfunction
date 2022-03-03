# Applies a random transform to the z gate of the gate marker.
#
# Execute as: tag=gate_z

function td:map/apply_random/transform/gate_z
data modify entity @s data.gate.transform merge from entity @e[sort=random,limit=1,tag=transform_lookup] data
kill @e[tag=transform_lookup]
