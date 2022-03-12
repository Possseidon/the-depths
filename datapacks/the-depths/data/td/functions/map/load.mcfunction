# First clears all old tiles and then loads the new tiles.

# Cover everything with solid blocks, so everything turns dark.
# Wait for everything to be pitch black and then load in the new tiles.
# Generating in the dark avoids lighting bugs that take forever to fix themselves.
# Already done here to allow for some lighting updates while the map is being cleared.
fill -192 64 -192 -65 64 -65 minecraft:tinted_glass

# Mark all old tiles and clear them recusrively.
tag @e[tag=tile_marker] add tile_marker_to_clear
execute store result bossbar td:clearing max if entity @e[tag=tile_marker,tag=tile_marker_to_clear]
execute store result bossbar td:clearing value run bossbar get td:clearing max
bossbar set td:clearing players @a
function td:map/clear/schedule_next_tiles
