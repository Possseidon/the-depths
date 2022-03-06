# Decrements the players_outside objective for players that are inside the tile.
#
# Execute as: tag=tile_marker
# Execute at: @s

execute as @s[tag=!wide,tag=!long] at @a[team=player,dx=12,dy=21,dz=12] run scoreboard players remove @s players_outside 1
execute as @s[tag=wide,tag=!long] at @a[team=player,dx=28,dy=21,dz=12] run scoreboard players remove @s players_outside 1
execute as @s[tag=!wide,tag=long] at @a[team=player,dx=12,dy=21,dz=28] run scoreboard players remove @s players_outside 1
execute as @s[tag=wide,tag=long] at @a[team=player,dx=28,dy=21,dz=28] run scoreboard players remove @s players_outside 1
