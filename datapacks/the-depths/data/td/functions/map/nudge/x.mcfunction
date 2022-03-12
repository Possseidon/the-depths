# Nudges everything along the x axis until map_x_offset reaches zero.

execute as @e[tag=nudge] at @s run tp ~8 ~ ~
scoreboard players remove map_x_offset var 1
execute if score map_x_offset var matches 1.. run function td:map/nudge/x
