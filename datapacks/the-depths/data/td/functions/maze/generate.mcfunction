# Generates a grid of markers representing a maze, which can be used to generate a dungeon map.
#
# Output:
# - A maze grid with grid markers.
#   - For big tiles only the main tile (low x/z) should exist.
#   - Tags:
#     - grid -> On all tiles
#     - wide -> For wide and boss tiles.
#     - long -> For long and boss tiles.
#     - One of:
#       - dead_end, curve, straight, split, cross, spawn, exit, special: 1x1
#         - gate_pos_x/z
#           -> Initial generation only uses gate_pos_x/z tags.
#           -> Actualy gameplay will require gate_neg_x/z as well to update gates.
#       - boss: 2x2
#         - gate_pos_x/z_1/2 -> 1/2 is for low/high other.
#       - [any wide]: 2x1
#         - gate_pos_x
#         - gate_pos_z_1/2 -> Only z has two gates.
#       - [any long]: 1x2
#         - gate_pos_x_1/2 -> Only x has two gates.
#         - gate_pos_z
#     - Multiple of: transform_pos/neg_x/z_pos/neg_x/z -> x and z must be unique
#   - data:
#     - Pos -> The actual position on the dungeon map.
#     - level -> 1b .. 5b
# - Gate markers.
#   - Will be used to store structure and transform of the gate.
# - An optional visualization of the maze.

kill @e[type=!minecraft:player]

# TODO: Remove
execute if data storage td:settings {auto_reload: 1b} run reload

scoreboard players set level var 0
scoreboard players set layer_count const 5

function td:maze/generate/new_layer

scoreboard players reset level var
scoreboard players reset layer_offset var
scoreboard players reset layer_count const

# Revert all success tags with the base tags.
tag @e[tag=grid_success] add grid
tag @e[tag=grid_success] remove grid_success
tag @e[tag=gate_success] add gate
tag @e[tag=gate_success] remove gate_success

# Cleanup some tags.
tag @e[tag=grid,tag=previous_layer] remove previous_layer
tag @e[tag=grid,tag=passed] remove passed
tag @e[tag=grid,tag=can_big] remove can_big
tag @e[tag=grid,tag=boss_or_helper] remove boss_or_helper

# Visualize the whole maze.
execute if data storage td:settings {visualize: 1b} run function td:maze/visualize.out

execute as @e[tag=grid] at @s positioned ~0.5 ~ ~ run function td:maze/tag/mark_gate_x
execute as @e[tag=grid] at @s positioned ~ ~ ~0.5 run function td:maze/tag/mark_gate_z

# Kill big tile helpers, as they aren't necessary anymore.
kill @e[tag=grid,tag=boss_helper]

# Add various tags to the grid tiles.
# Assumes no wide/long tiles have been added yet.
execute as @e[tag=grid,tag=!boss] at @s run function td:maze/tag/gate/default
execute as @e[tag=grid,tag=boss] at @s run function td:maze/tag/gate/boss

function td:maze/tag/tiles

# Merge tiles into double tiles.
tag @e[tag=grid,tag=straight_0] add try_double
tag @e[tag=grid,tag=straight_90] add try_double
execute as @e[sort=random,limit=1,tag=grid,tag=try_double] at @s run function td:maze/try_convert_to_double_tile
function td:maze/tag/double_tiles
execute as @e[tag=grid,tag=wide,tag=!long] at @s run function td:maze/tag/gate/wide
execute as @e[tag=grid,tag=!wide,tag=long] at @s run function td:maze/tag/gate/long

function td:maze/tag/transform

function td:maze/update_tile_stats
