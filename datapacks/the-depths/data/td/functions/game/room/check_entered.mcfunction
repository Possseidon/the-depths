# Checks if a room has been entered by all players and, if the case, runs the room enter logic.

scoreboard players set @e[tag=tile_marker] players_outside 0
execute as @a[team=player] run scoreboard players add @e[tag=tile_marker,tag=!cleared] players_outside 1
execute as @e[tag=tile_marker,tag=!cleared] at @s positioned ~1 ~ ~1 run function td:game/room/dec_players_outside
execute as @e[tag=tile_marker,tag=!cleared,scores={players_outside=0},limit=1] at @s run function td:game/room/enter
