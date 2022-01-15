# Generates the real dungeon map from the existing maze grid.

# TODO: Remove
execute if data storage td:settings {auto_reload: 1b} run reload

# Convert grid markers into tile markers.
execute if entity @e[tag=grid] run kill @e[tag=tile_marker]
execute as @e[tag=grid] run function td:map/convert_to_tile_marker

# Use the tile marker's to generate the map, possibly across multiple ticks.
tag @e[tag=tile_marker] add tile_marker_to_gen
function td:map/load/tile_schedule_next
