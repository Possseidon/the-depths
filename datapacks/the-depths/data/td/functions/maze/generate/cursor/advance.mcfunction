# Moves the cursor to next_move and summons a gate marker.
#
# Input: A grid with grid_index and a cursor.
#
# Output:
# - Increments grid_index for all passed tiles.
# - Summons a gate between cursor and next_move.
# - Moves the cursor to next_move.

scoreboard players add @e[tag=grid,tag=passed,scores={grid_index=0..}] grid_index 1

execute if entity @e[tag=grid,tag=next_move,tag=boss_or_helper] run tag @e[tag=grid,tag=boss_or_helper] add passed

execute at @e[tag=grid,tag=cursor] facing entity @e[tag=grid,tag=next_move] feet positioned ^ ^ ^0.5 run function td:maze/summon/gate
tag @e[tag=grid,tag=cursor] remove cursor
tag @e[tag=grid,tag=next_move] add cursor
tag @e[tag=grid,tag=next_move] remove next_move

function td:maze/generate/cursor/step
