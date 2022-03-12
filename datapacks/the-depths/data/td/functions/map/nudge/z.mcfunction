# Nudges everything along the z axis until map_z_offset reaches zero.

execute as @e[tag=nudge] at @s run tp ~ ~ ~8
scoreboard players remove map_z_offset var 1
execute if score map_z_offset var matches 1.. run function td:map/nudge/z
