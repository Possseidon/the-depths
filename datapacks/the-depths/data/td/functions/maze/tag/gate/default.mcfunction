# Adds gate tags depending on gate markers.
#
# Execute as: tag=grid, default
# Execute at: @s
#
# Input:
# - grid markers
# - gate markers
#
# Output:
# - grid markers with gate tags.

execute positioned ~0.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_x
execute positioned ~-0.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_x
execute positioned ~ ~ ~0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_z
execute positioned ~ ~ ~-0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_z
