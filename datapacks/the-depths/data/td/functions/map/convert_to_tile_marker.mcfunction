# Convert the grid marker into a tile marker in the actual dungeon map.
#
# Execute as: tag=grid

tag @s remove grid
tag @s add tile_marker

data modify entity @s Pos set from entity @s data.Pos
function td:map/apply_random/tile_transform
function td:map/apply_random/tile.out
