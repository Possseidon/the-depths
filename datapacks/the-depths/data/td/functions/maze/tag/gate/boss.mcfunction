# Applies gate-tags to boss markers.
#
# Execute as: tag=grid, boss
# Execute at: @s
#
# Input:
# - grid markers
# - gate markers
#
# Output:
# - grid markers with gate tags.

execute positioned ~1.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_x_1
execute positioned ~1.5 ~ ~1 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_x_2
execute positioned ~-0.5 ~ ~ if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_x_1
execute positioned ~-0.5 ~ ~1 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_x_2
execute positioned ~ ~ ~1.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_z_1
execute positioned ~1 ~ ~1.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_pos_z_2
execute positioned ~ ~ ~-0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_z_1
execute positioned ~1 ~ ~-0.5 if entity @e[tag=gate,distance=..0.1] run tag @s add gate_neg_z_2
