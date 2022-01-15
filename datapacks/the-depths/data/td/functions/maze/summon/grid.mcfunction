# Summons a single layer of grid markers at the visualization area.
#
# Output: A grid of markers
# - Tags:
#   - grid
# - data:
#   - Pos -> The real x and z position on the map; y remains 0 for now.

execute positioned 4 -63 20 run function td:maze/summon/grid_helper.out
