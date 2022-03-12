# Cleares the tile by filling it with tinted glass and marks it as cleared.
#
# Execute as: tag=tile_marker_to_clear
# Execute at: @s

execute as @s[tag=!wide,tag=!long] run fill ~ ~ ~ ~15 ~23 ~15 minecraft:tinted_glass
execute as @s[tag=wide,tag=!long] run fill ~ ~ ~ ~31 ~23 ~15 minecraft:tinted_glass
execute as @s[tag=!wide,tag=long] run fill ~ ~ ~ ~15 ~23 ~31 minecraft:tinted_glass
execute as @s[tag=wide,tag=long] run fill ~ ~ ~ ~31 ~23 ~31 minecraft:tinted_glass

tag @s remove tile_marker_to_clear
