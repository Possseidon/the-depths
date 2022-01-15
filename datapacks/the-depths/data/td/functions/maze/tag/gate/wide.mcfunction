# Removes original gate_pos/neg_x/z and replaces it with the ones for the double tile.
#
# Execute as: tag=grid, wide, !long
# Execute at: @s
#
# Input:
# - grid markers
# - gate markers
#
# Output:
# - grid markers with gate tags.

tag @s remove gate_pos_x
tag @s remove gate_neg_x
tag @s remove gate_pos_z
tag @s remove gate_neg_z

execute positioned ~1.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_x
execute positioned ~-0.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_x
execute positioned ~ ~ 0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_z_1
execute positioned ~1 ~ ~0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_z_2
execute positioned ~ ~ ~-0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_z_1
execute positioned ~1 ~ ~-0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_z_2
