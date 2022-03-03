# Schedules all tiles to be loaded after fixing the position of the top layer tile markers.

# Reset tile markers from darkness detection.
execute as @e[tag=tile_marker,nbt={data: {layer_index: 1b}}] at @s run tp ~-7 ~-24 ~-7

# Use the tile markers to generate the map, possibly across multiple ticks.
tag @e[tag=tile_marker] add tile_marker_to_gen
function td:map/load/schedule_next_tiles
