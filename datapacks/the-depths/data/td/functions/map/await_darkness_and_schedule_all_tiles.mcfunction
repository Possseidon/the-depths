# Waits for the map area to be pitch black and then starts to load in all tiles.

tag @e[tag=tile_marker,nbt={data: {level: 1b}}] add bright_top_layer
tag @e[tag=tile_marker,predicate=td:is_light_level/0] remove bright_top_layer

execute store result bossbar td:darkness value if entity @e[tag=tile_marker,tag=bright_top_layer]

execute unless entity @e[tag=tile_marker,tag=bright_top_layer] run function td:map/schedule_all_tiles
execute if entity @e[tag=tile_marker,tag=bright_top_layer] run schedule function td:map/await_darkness_and_schedule_all_tiles 1t
