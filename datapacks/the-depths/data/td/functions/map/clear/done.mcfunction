# First waits until the map is all dark and then loads in all tiles.

bossbar set td:clearing players

# Convert grid markers into tile markers.
execute if entity @e[tag=grid] run kill @e[tag=tile_marker]
execute as @e[tag=grid] run function td:map/convert_to_tile_marker
execute if entity @e[tag=gate] run kill @e[tag=gate_marker]
execute as @e[tag=gate] run function td:map/convert_to_gate_marker

tag @e[tag=tile_marker] add nudge
tag @e[tag=gate_marker] add nudge
execute if score map_x_offset var matches 1.. run function td:map/nudge/x
execute if score map_z_offset var matches 1.. run function td:map/nudge/z
tag @e remove nudge

scoreboard players reset map_x_offset var
scoreboard players reset map_z_offset var

# Pads maps smaller than 8x8 with grass.
fill -192 63 -192 -65 63 -65 minecraft:grass_block

# Move the top layer into the ceiling, so that the light predicate works.
execute as @e[tag=tile_marker,nbt={data: {level: 1b}}] at @s run tp ~7 ~24 ~7
execute store result bossbar td:darkness max if entity @e[tag=tile_marker,nbt={data: {level: 1b}}]
execute store result bossbar td:darkness value run bossbar get td:darkness max
bossbar set td:darkness players @a
function td:map/await_darkness_and_schedule_all_tiles
