# Schedules all tiles to be loaded after fixing the position of the top layer tile markers.

bossbar set td:darkness players

bossbar set td:generation players @a
bossbar set td:generation value 0
execute store result bossbar td:generation max if entity @e[tag=tile_marker]

# Reset tile markers from darkness detection.
execute as @e[tag=tile_marker,nbt={data: {level: 1b}}] at @s run tp ~-7 ~-24 ~-7

# Use the tile markers to generate the map, possibly across multiple ticks.
tag @e[tag=tile_marker] add tile_marker_to_gen
function td:map/load/schedule_next_tiles
