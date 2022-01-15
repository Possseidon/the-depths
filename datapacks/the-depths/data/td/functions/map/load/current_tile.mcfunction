# Loads the corresponding tile and positive gates for a tile marker.
#
# Execute as: tag=tile_marker
# Execute at: @s

function td:map/load/current_tile/tile

execute as @s[tag=!wide,tag=!long] run function td:map/load/current_tile/gate/1x1
execute as @s[tag=wide,tag=!long] run function td:map/load/current_tile/gate/2x1
execute as @s[tag=!wide,tag=long] run function td:map/load/current_tile/gate/1x2
execute as @s[tag=wide,tag=long] run function td:map/load/current_tile/gate/2x2

tag @s remove tile_marker_to_gen
