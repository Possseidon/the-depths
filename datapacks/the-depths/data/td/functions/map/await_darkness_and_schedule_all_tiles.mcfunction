# Waits for the map area to be pitch black and then starts to load in all tiles.

execute unless entity @e[tag=tile_marker,nbt={data: {layer_index: 1b}},predicate=!td:is_light_level/0] run function td:map/schedule_all_tiles
execute if entity @e[tag=tile_marker,nbt={data: {layer_index: 1b}},predicate=!td:is_light_level/0] run schedule function td:map/await_darkness_and_schedule_all_tiles 1t
