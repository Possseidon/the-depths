# Loads in some tiles, depending on the generation speed and schedules itself for the next tick until done.

execute if data storage td:settings {generation_speed: 1b} as @e[limit=1,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/current_tile
execute if data storage td:settings {generation_speed: 2b} as @e[limit=8,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/current_tile
execute if data storage td:settings {generation_speed: 3b} as @e[limit=64,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/current_tile
execute if data storage td:settings {generation_speed: 4b} as @e[tag=tile_marker_to_gen] at @s run function td:map/load/current_tile
execute if entity @e[limit=1,tag=tile_marker_to_gen] run schedule function td:map/load/tile_schedule_next 1t

execute unless entity @e[limit=1,tag=tile_marker_to_gen] run function td:map/load/done
