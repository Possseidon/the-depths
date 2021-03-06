# Tries to backtrack the cursor and calls step again, if a backtrack was possible.
#
# Input: A grid with grid_index and a cursor.
#
# Output:
# - Always removes the old cursor and tries to add a new cursor using grid_index.
# - Decrements grid_index of all passed tiles (ignoring -1 tiles).

tag @e[tag=grid,tag=cursor] remove cursor
tag @e[tag=grid,scores={grid_index=1}] add cursor

scoreboard players remove @e[tag=grid,tag=passed,scores={grid_index=0..}] grid_index 1

execute if entity @e[tag=grid,tag=cursor] run function td:maze/generate/cursor/step
