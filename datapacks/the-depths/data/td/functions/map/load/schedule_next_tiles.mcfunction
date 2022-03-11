# Loads in some tiles, depending on the generation speed and schedules itself for the next tick until done.

execute if score §9ɢᴇɴᴇʀᴀᴛɪᴏɴ-ꜱᴘᴇᴇᴅ settings matches 1 as @e[limit=1,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/tile
execute if score §9ɢᴇɴᴇʀᴀᴛɪᴏɴ-ꜱᴘᴇᴇᴅ settings matches 2 as @e[limit=8,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/tile
execute if score §9ɢᴇɴᴇʀᴀᴛɪᴏɴ-ꜱᴘᴇᴇᴅ settings matches 3 as @e[limit=64,sort=random,tag=tile_marker_to_gen] at @s run function td:map/load/tile
execute if score §9ɢᴇɴᴇʀᴀᴛɪᴏɴ-ꜱᴘᴇᴇᴅ settings matches 4 as @e[tag=tile_marker_to_gen] at @s run function td:map/load/tile
execute if entity @e[limit=1,tag=tile_marker_to_gen] run schedule function td:map/load/schedule_next_tiles 1t

execute store result bossbar td:generation value if entity @e[tag=tile_marker,tag=!tile_marker_to_gen]

execute unless entity @e[limit=1,tag=tile_marker_to_gen] run function td:map/load/done
