# Loads in all tiles onto the map.

# Convert grid markers into tile markers.
execute if entity @e[tag=grid] run kill @e[tag=tile_marker]
execute as @e[tag=grid] run function td:map/convert_to_tile_marker
execute if entity @e[tag=gate] run kill @e[tag=gate_marker]
execute as @e[tag=gate] run function td:map/convert_to_gate_marker

# Cover everything with solid blocks, so everything turns dark.
# Wait for everything to be pitch black and then load in the new tiles.
# Generating in the dark avoids lighting bugs that take forever to fix themselves.
fill -192 64 -192 -65 64 -65 minecraft:tinted_glass
# Move the top layer into the ceiling, so that the light predicate works.
execute as @e[tag=tile_marker,nbt={data: {layer_index: 1b}}] at @s run tp ~7 ~24 ~7
execute store result bossbar td:darkness max if entity @e[tag=tile_marker,nbt={data: {layer_index: 1b}}]
execute store result bossbar td:darkness value run bossbar get td:darkness max
bossbar set td:darkness players @a
function td:map/await_darkness_and_schedule_all_tiles
