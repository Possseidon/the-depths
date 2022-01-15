# Applies a random transform to the tile marker.
#
# Execute as: tag=tile_marker

execute as @s[tag=!wide,tag=!long] run function td:map/apply_random/transform/1x1
execute as @s[tag=wide,tag=!long] run function td:map/apply_random/transform/2x1
execute as @s[tag=!wide,tag=long] run function td:map/apply_random/transform/1x2
execute as @s[tag=wide,tag=long] run function td:map/apply_random/transform/2x2
data modify entity @s data.tile merge from entity @e[sort=random,limit=1,tag=transform_lookup] data
kill @e[tag=transform_lookup]
