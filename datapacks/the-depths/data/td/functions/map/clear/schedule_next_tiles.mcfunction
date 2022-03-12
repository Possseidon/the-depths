# Clears some tiles, depending on the generation speed and schedules itself for the next tick until done.

execute if score generation_speed settings matches 1 as @e[limit=1,sort=random,tag=tile_marker_to_clear] at @s run function td:map/clear/tile
execute if score generation_speed settings matches 2 as @e[limit=8,sort=random,tag=tile_marker_to_clear] at @s run function td:map/clear/tile
execute if score generation_speed settings matches 3 as @e[limit=64,sort=random,tag=tile_marker_to_clear] at @s run function td:map/clear/tile
execute if score generation_speed settings matches 4 as @e[tag=tile_marker_to_clear] at @s run function td:map/clear/tile
execute if entity @e[limit=1,tag=tile_marker_to_clear] run schedule function td:map/clear/schedule_next_tiles 1t

execute store result bossbar td:clearing value if entity @e[tag=tile_marker,tag=tile_marker_to_clear]

execute unless entity @e[limit=1,tag=tile_marker_to_clear] run function td:map/clear/done
