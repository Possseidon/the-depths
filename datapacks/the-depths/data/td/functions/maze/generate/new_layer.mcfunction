# Generates a new layer, increasing layer_index and teleporting existing layers up.
#
# Input:
# - Optional existing layers.
#
# Output:
# - The existing layers (moved up) and one additional layer.
# - Repeated until layer_count is reached.

scoreboard players add layer_index var 1

execute as @e[tag=grid_success] at @s run tp ~ ~1 ~
execute as @e[tag=gate_success] at @s run tp ~ ~1 ~

function td:maze/generate/layer
