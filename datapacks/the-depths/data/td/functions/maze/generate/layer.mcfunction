# Attempts to generate a valid layer, retrying if generation failed.
#
# Input: Potential existing layers.
#
# Output:
# - A new layer that was either a success or failed.
# - Retries failed layers.
# - Repeats until layer_count valid layers have been generated.

function td:maze/summon/grid
function td:maze/generate/tag/special_tiles

# Add cursor tag.
tag @e[sort=random,limit=1,tag=grid,tag=default] add cursor

# Add grid_index scoreboard that increments/decrements on passed tiles as the cursor moves forward/backward.
# Starts at 0 and will stay at -1 once reached.
scoreboard objectives add grid_index dummy
scoreboard players set @e[tag=grid] grid_index 0

function td:maze/generate/cursor/step

scoreboard objectives remove grid_index

# Unless any tile hasn't been passed, move on to the next layer; retry otherwise.
execute unless entity @e[tag=grid,tag=!passed] run function td:maze/generate/layer/success
execute if entity @e[tag=grid,tag=!passed] run function td:maze/generate/layer/retry
