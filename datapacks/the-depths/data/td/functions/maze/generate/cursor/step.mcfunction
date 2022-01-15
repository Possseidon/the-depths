# Recursively steps through the entire map until the cursor cannot move forward/backward.
#
# Input:
# - A grid with special tiles and cursor.
#
# Output:
# - Adds passed on the current tile.
# - Repeats until backtrack cannot backtrack any further.

tag @e[tag=grid,tag=cursor] add passed

# Select a random, unpassed tile for next_move.
# Disallow any move from a special tile, so they end up as dead ends.
execute at @e[tag=grid,tag=cursor,tag=default] run tag @e[tag=grid,tag=!passed,distance=..1.1,sort=random,limit=1] add next_move

# Move the cursor to next_move or backtrack, if no next_move tile exists.
execute unless entity @e[tag=grid,tag=next_move] run function td:maze/generate/cursor/backtrack
execute if entity @e[tag=grid,tag=next_move] run function td:maze/generate/cursor/advance
