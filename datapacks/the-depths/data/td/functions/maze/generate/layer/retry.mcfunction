# Called when layer generation failed.
#
# Input:
# - Potential existing valid layers.
# - One failed layer.
#
# Output:
# - Leaves existing layers. (grid_success/gate_success)
# - Removes and regenerated the failed layer.

kill @e[tag=gate]
kill @e[tag=grid]

function td:maze/generate/layer
